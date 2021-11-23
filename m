Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C9D45AD5A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 21:25:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB936E49A;
	Tue, 23 Nov 2021 20:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E096E182;
 Tue, 23 Nov 2021 20:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Gd9eQWajxy0iI68lppb+s86qgv/iD4JNro7LeJWzrnM=; b=MWKwDI+3iFgBOVtnVoAOyB5NFa
 aKoQKCknzmOEv4+vlS0S9j9DlUv/3lDMKtskggo4N0ytRZVWdqxsiGfE/R9j0fTzs/V/4Smyy/+Fs
 SjiXs641h9nvM0IaJHwc+yd6zjul9oQr9TOfPoBO/X7oDnXpy2EFnLNKIjFWL4xK2uRXnovoVDoUN
 tpjGKNVARwRhTB2/900O1rfLDS/i6tckcPD4LS/Uxxf8vBTyiwHFOEXeh+eUN5ianyffwP3QOsxaZ
 KF3KOhguswWFrAGP6E2xFK6QLLmTseeInhlJm0YX0ej0PSKoCh2g7cNhq82meHCXFtFl+qTmM6UUZ
 8YB/z9ZQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1mpcL1-003R5J-AW; Tue, 23 Nov 2021 20:24:23 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: akpm@linux-foundation.org, keescook@chromium.org,
	yzaikin@google.com, nixiaoming@huawei.com, ebiederm@xmission.com,
	clemens@ladisch.de, arnd@arndb.de, gregkh@linuxfoundation.org,
	jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
	rodrigo.vivi@intel.com, tvrtko.ursulin@linux.intel.com,
	airlied@linux.ie, "daniel@ffwll.chairlied"@linux.ie,
	benh@kernel.crashing.org, mark@fasheh.com, jlbec@evilplan.org,
	joseph.qi@linux.alibaba.com, jack@suse.cz, amir73il@gmail.com,
	phil@philpotter.co.uk, viro@zeniv.linux.org.uk, julia.lawall@inria.fr
Date: Tue, 23 Nov 2021 12:24:18 -0800
Message-Id: <20211123202422.819032-5-mcgrof@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211123202422.819032-1-mcgrof@kernel.org>
References: <20211123202422.819032-1-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/8] ocfs2: simplify subdirectory
 registration with register_sysctl()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 ocfs2-devel@oss.oracle.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is no need to user boiler plate code to specify a set of base
directories we're going to stuff sysctls under. Simplify this by using
register_sysctl() and specifying the directory path directly.

// pycocci sysctl-subdir-register-sysctl-simplify.cocci PATH

@c1@
expression E1;
identifier subdir, sysctls;
@@

static struct ctl_table subdir[] = {
	{
		.procname = E1,
		.maxlen = 0,
		.mode = 0555,
		.child = sysctls,
	},
	{ }
};

@c2@
identifier c1.subdir;

expression E2;
identifier base;
@@

static struct ctl_table base[] = {
	{
		.procname = E2,
		.maxlen = 0,
		.mode = 0555,
		.child = subdir,
	},
	{ }
};

@c3@
identifier c2.base;
identifier header;
@@

header = register_sysctl_table(base);

@r1 depends on c1 && c2 && c3@
expression c1.E1;
identifier c1.subdir, c1.sysctls;
@@

-static struct ctl_table subdir[] = {
-	{
-		.procname = E1,
-		.maxlen = 0,
-		.mode = 0555,
-		.child = sysctls,
-	},
-	{ }
-};

@r2 depends on c1 && c2 && c3@
identifier c1.subdir;

expression c2.E2;
identifier c2.base;
@@
-static struct ctl_table base[] = {
-	{
-		.procname = E2,
-		.maxlen = 0,
-		.mode = 0555,
-		.child = subdir,
-	},
-	{ }
-};

@initialize:python@
@@

def make_my_fresh_expression(s1, s2):
  return '"' + s1.strip('"') + "/" + s2.strip('"') + '"'

@r3 depends on c1 && c2 && c3@
expression c1.E1;
identifier c1.sysctls;
expression c2.E2;
identifier c2.base;
identifier c3.header;
fresh identifier E3 = script:python(E2, E1) { make_my_fresh_expression(E2, E1) };
@@

header =
-register_sysctl_table(base);
+register_sysctl(E3, sysctls);

Generated-by: Coccinelle SmPL
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 fs/ocfs2/stackglue.c | 25 +------------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/fs/ocfs2/stackglue.c b/fs/ocfs2/stackglue.c
index 16f1bfc407f2..731558a6f27d 100644
--- a/fs/ocfs2/stackglue.c
+++ b/fs/ocfs2/stackglue.c
@@ -672,31 +672,8 @@ static struct ctl_table ocfs2_mod_table[] = {
 	{ }
 };
 
-static struct ctl_table ocfs2_kern_table[] = {
-	{
-		.procname	= "ocfs2",
-		.data		= NULL,
-		.maxlen		= 0,
-		.mode		= 0555,
-		.child		= ocfs2_mod_table
-	},
-	{ }
-};
-
-static struct ctl_table ocfs2_root_table[] = {
-	{
-		.procname	= "fs",
-		.data		= NULL,
-		.maxlen		= 0,
-		.mode		= 0555,
-		.child		= ocfs2_kern_table
-	},
-	{ }
-};
-
 static struct ctl_table_header *ocfs2_table_header;
 
-
 /*
  * Initialization
  */
@@ -705,7 +682,7 @@ static int __init ocfs2_stack_glue_init(void)
 {
 	strcpy(cluster_stack_name, OCFS2_STACK_PLUGIN_O2CB);
 
-	ocfs2_table_header = register_sysctl_table(ocfs2_root_table);
+	ocfs2_table_header = register_sysctl("fs/ocfs2", ocfs2_mod_table);
 	if (!ocfs2_table_header) {
 		printk(KERN_ERR
 		       "ocfs2 stack glue: unable to register sysctl\n");
-- 
2.33.0


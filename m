Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9C5118D73
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 17:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BDE36E14A;
	Tue, 10 Dec 2019 16:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4076E14A;
 Tue, 10 Dec 2019 16:23:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 08:23:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="225196991"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 08:23:03 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 10 Dec 2019 17:22:43 +0100
Message-Id: <20191210162243.14966-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] lib/sysfs: Add support for getting
 boolean module parameters
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Boolean module parameters are exposed as "Y"/"N" strings, not 0/1.
Make igt_sysfs_get_boolean() helper useful for getting their values.

v2: Use case insensitive string compare and more compact style (Chris)

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
I've made it still more compact by eliminating a goto, Chris, I hope
your Reviewed-by: still applies.

Thanks,
Janusz

 lib/igt_sysfs.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/lib/igt_sysfs.c b/lib/igt_sysfs.c
index c439944d..17d0ab80 100644
--- a/lib/igt_sysfs.c
+++ b/lib/igt_sysfs.c
@@ -474,11 +474,19 @@ bool igt_sysfs_set_u32(int dir, const char *attr, uint32_t value)
  */
 bool igt_sysfs_get_boolean(int dir, const char *attr)
 {
+	char *buf;
 	int result;
 
-	if (igt_sysfs_scanf(dir, attr, "%d", &result) != 1)
+	buf = igt_sysfs_get(dir, attr);
+	if (!buf)
 		return false;
 
+	if (sscanf(buf, "%d", &result) != 1) {
+		/* kernel's param_get_bool() returns "Y"/"N" */
+		result = !strcasecmp(buf, "Y");
+	}
+
+	free(buf);
 	return result;
 }
 
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

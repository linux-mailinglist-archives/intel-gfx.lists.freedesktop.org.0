Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBx3CV9zymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F4C35B79D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E65710E743;
	Mon, 30 Mar 2026 12:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JIOIMwNg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com
 [209.85.160.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70CA410EBC6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:24 +0000 (UTC)
Received: by mail-oa1-f50.google.com with SMTP id
 586e51a60fabf-40ef10ec84cso1060147fac.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551323; x=1775156123; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PHBDIqz9/qVForB86mGxoTdQjucG23eTecUbThbELwQ=;
 b=JIOIMwNgut7zpMR8MY6Xy82gDArQYbm9cCsWN0ZFE21J40w277YRUOuNlCPk84KOi9
 7/UyDl5h1agq1AtdRFRoCZTktR5iED2zCW0h4qZmkib2+KdNRv5xZh/1a3conav6jqIi
 dMnBkmeYVVmzgJU+yqntxT4d9oAORE/N13UB3PBW+3px71qTxNCSqoubbPnl4eb24Y+r
 M8ufdhKwPH/YZMAxfuh/ddMp6Zmq60bdJznVfAEePubGKm0utAzWmsTuq4m8OHetDYTv
 SPfNL2Jsp17+gOZXY1GnNMHhfp9NvcdoFbNGqa0lKHXEEZ6GUxFU/9CsTHq75m6g+Rkd
 IZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551323; x=1775156123;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=PHBDIqz9/qVForB86mGxoTdQjucG23eTecUbThbELwQ=;
 b=gDTHnznDkRO66DAw8370PaFCVL9mvTumawAZN2RFhQp80B9kdpqnMqULrdApxi/WFI
 iNnEXvhmgK3NOeD2LnkmqYGt59719M58brWv8XpT/NqSH0P/BS/H0yfESCsg7TgPkHC1
 w3UlwZnmgUhKdr+KaD16YFoHpFHNFyV7TV490nFB4EiC8lT92TifK8am6Hct5C8Lhu/t
 IVnywo8zR4+FuHwXRmU5b0F/20Kp1y86MMlei5FxBFRtjtvXMYH2KFAaqoeBhtG8Q9yj
 vfUlhgq1pALx7/KflZzTtEFfzGW4vXBrNGERK3uc+pLyoiz4I2nnPxC5sVUyWqssodRu
 HDNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUnpgqTkV5Mhj+4V8sQIVUfIi2fVqjWrAvLCTrSJUnLPHdHEh+6BvTxAKEgPdOnhU4dPdHItv4geZE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwITkR1ikbpvLKpLSSFyrJTyEdJYNECUWExHxmi9Y6EVKD7iGVh
 O0FVd+XN2UPq6fCpH1QO1TgMdSpwr7gFP+TDH3NpQcyVlIExdrMBJM23
X-Gm-Gg: ATEYQzzhZ2RG4ypdZv7MuNKcasyejqkBulFih7omZ7aclwWijIcJQBpgJ/kA4qXE/P5
 Tga5pzTKTxptbbD/EJk4w06+bTD+EPdvZSCF6zSlBTYv1+JtTTxCKJZZgXmogV/g4kUVQz5gs5N
 fTeZjempf1exuPxJbwiYufQeyjHW62D8Yr4vZXEx0yFPm2RdlT3uwuit6JczuN6pVuuDgjllsD3
 KYfdIhIJEir4HGusP1OipgPSStDS5/f66inSLYS6LX4Jt0YkK0FEs3xqItn7VEGip30gB+3JQmX
 ZESzQmkLTM0na2XxIzi6YfFyg4xhZLkEdn2LPLGpk5Ua7lvwYQEHrgrYkZwLZaSYyv7rPYLGd7R
 K6wNNsrcSnNOAZq03WdL0qJyJIaKlS+BU46iFnP+0Zm1wopzqrR8X6sjwaIoTii4hNauwZYeDA6
 J2YnQ0948bdKlQZ86146jqU/6Z6z50hCaHHyNci42ilNrmmADQ
X-Received: by 2002:a05:6871:520d:b0:417:5970:28ea with SMTP id
 586e51a60fabf-41ca715a2acmr4330662fac.51.1774551323554; 
 Thu, 26 Mar 2026 11:55:23 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:23 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Philipp Hahn <phahn-oss@avm.de>
Subject: [PATCH v12 36/69] dyndbg: Ignore additional arguments from pr_fmt
Date: Thu, 26 Mar 2026 12:53:40 -0600
Message-ID: <20260326185413.1205870-37-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:phahn-oss@avm.de,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,avm.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,avm.de:email]
X-Rspamd-Queue-Id: B1F4C35B79D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Philipp Hahn <phahn-oss@avm.de>

pr_fmt can be used to add a common prefix to any output from a module:
	#define pr_fmt(fmt) KBUILD_MODNAME ".%s " fmt, __func__

But adding additional arguments breaks dynamic debug:
> error: macro "DEFINE_DYNAMIC_DEBUG_METADATA_CLS" passed 4 arguments, but takes just 3
> |         pr_debug_ratelimited("%s", "Hello world!");
> |                                                  ^
> note: macro "DEFINE_DYNAMIC_DEBUG_METADATA_CLS" defined here
> | #define DEFINE_DYNAMIC_DEBUG_METADATA_CLS(name, cls, fmt)       \
> |
> error: ‘DEFINE_DYNAMIC_DEBUG_METADATA_CLS’ undeclared (first use in this function)
> |         DEFINE_DYNAMIC_DEBUG_METADATA_CLS(name, _DPRINTK_CLASS_DFLT, fmt)
> |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> note: in expansion of macro ‘DEFINE_DYNAMIC_DEBUG_METADATA’
> |         DEFINE_DYNAMIC_DEBUG_METADATA(descriptor, pr_fmt(fmt));         \
> |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> note: in expansion of macro ‘pr_debug_ratelimited’
> |         pr_debug_ratelimited("%s", "Hello world!");
> |         ^~~~~~~~~~~~~~~~~~~~

Add an additional ', ...' to DEFINE_DYNAMIC_DEBUG_METADATA_CLS to slurp
any additional argument, which `pr_fmt` might add.

Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
[pr_fmt change on _submod]
Reviewed-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 2 +-
 lib/test_dynamic_debug.c      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index 1b401f398a3c..49f37d6a4eab 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -344,7 +344,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 		dump_stack();					\
 }
 
-#define DEFINE_DYNAMIC_DEBUG_METADATA_CLS(name, cls, fmt)	\
+#define DEFINE_DYNAMIC_DEBUG_METADATA_CLS(name, cls, fmt, ...)	\
 	static struct _ddebug  __aligned(8)			\
 	__section("__dyndbg_descriptors") name = {		\
 		.modname = KBUILD_MODNAME,			\
diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
index db555f5f8ea4..779309898422 100644
--- a/lib/test_dynamic_debug.c
+++ b/lib/test_dynamic_debug.c
@@ -23,7 +23,7 @@
  * the usage clearer.
  */
 #if defined(TEST_DYNAMIC_DEBUG_SUBMOD)
-  #define pr_fmt(fmt) "test_dd_submod: " fmt
+  #define pr_fmt(fmt) "test_dd_submod: %s " fmt, __func__
 #else
   #define pr_fmt(fmt) "test_dd: " fmt
 #endif
@@ -214,7 +214,7 @@ static int __init test_dynamic_debug_init(void)
 
 static void __exit test_dynamic_debug_exit(void)
 {
-	pr_debug("exited\n");
+	pr_debug_ratelimited("exited\n");
 }
 
 module_init(test_dynamic_debug_init);
-- 
2.53.0


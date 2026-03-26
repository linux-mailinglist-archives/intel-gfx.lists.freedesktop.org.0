Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D2YNoVzymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E76935B851
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDCC10E751;
	Mon, 30 Mar 2026 12:58:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l7A8l/Ng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE2810EBEC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:37 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-7d7422b4ff1so428588a34.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551337; x=1775156137; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jaS+vAPe+o14cf01tnHTOxQ9DFEqgjCQ99ScUUNb7AU=;
 b=l7A8l/NgaYmte1+s/N3GaZ26vD/wdo3Jqkkct2+QjMzrTiDaRUWixPeiq0tnaUgq/y
 AyEt4r7nrS0ZODSD/NVNLNe/iDsU607Q58Pl1gPhwRF4P6QhlUvlpkxKKgK71W8v8L2D
 BPLWlN/wUtN69cbttSDd3IEqiyug9cYd+c/wCvfu7HEctBVKepiUJj/03zr2nw31gHyz
 S24+1WKAwRoaVJd62MPz2BK7hAveyJEz/vEtzXst34tsojb4s00R/8NXZk/u2Rdjqyjf
 nS/wZE9KL3QlLDxJ6PARJZPpXdtZES2P8BCw2VD3CppMbNjVet3SPT+fzzbngDIWb3xO
 E1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551337; x=1775156137;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jaS+vAPe+o14cf01tnHTOxQ9DFEqgjCQ99ScUUNb7AU=;
 b=fDUxjM5ffvtnsoxblij7ifPqcI7TxgyEkp35LzCmp9eQCTzaReeu3hLcNLes/toshg
 Xici9DvN19Zep8CqsVw+BeRzb1Da7NCBPLv0pKGrzAXiHuPb/7pfB07bYkl79BCmcDT7
 FUQtUJGgXrPwrsd5nIKsS+FwVIQpCDO/w1hVdBenLVBDUUaNfX00hNFmE2qttFSEP/nz
 FO4cwllG2aYXnm1Dp8XDeaYwu80dQlBeD+LKUgN2d/JTaqSDpjHY9ISf6Pnfy2fUJ40p
 tjoON2EVv+veQls8LCRb5VIsnP9ZiJ+8uJulYjBZKA/GF55QbmW9gBOw2BE3riabyN5D
 e00w==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3v1B7332tlU6aLL2arBGZbQ9In31ZWfDOwWAfx2rLssasfFH2iPNdBjTD9eso5WVNmgLRioKujm8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwnIiR+djrnYjUaYn5XVp3/Ndr4GboiLtzMwDpiIvbNMZMNErL7
 0wt/HvO0oYz5I/74UiQp9JuYozqXWt//IW1O5KIhLJHz6+qwwrKi+cZf
X-Gm-Gg: ATEYQzxy2Vq7H9nfGRbQnOlRKZkeH4HwoDIMzU8XIH1U7MlbTYOygoahoC61K05/kIU
 BgnPE80VGLl1BFq2hGq51/hY01wYiLT1YjKRcDMNjlJQsA6N0lMpKBJbQBIpbGdRuVQYD64d5PR
 9uif87kj1lhWa8JVLz/IFm3rFOtJm2Nc9t9OX0R7HydOdmgOpFc7dXUMrn7IY4+2Rj77cQTZ4bZ
 S2zVtKhuRFQSYYNMR2Hzd9RdYMuRMPDzNotSbkf0yBWhyga+tbzagLc6FqriV9m8L49ZLE6Wuto
 Pc/H9aQN8cQ7LaWHeX491Ypy6Cpncx/kMfrp2iL+gkgPW4r/sLpufNxROFbz5wL2hPVlpb69SLq
 4SgsfS8DU5h+Z9b8vyh0UIpDKxcOJyxQNSrCZfpKgTXybi/hev389KEjq3y6X5SVS0FXOntLnZi
 I3rx/BaoH7/WUybwk8Sov6t/r8cHhiQdy9/4ltXLt8sdAxxVCV
X-Received: by 2002:a05:6820:338a:20b0:67e:f8c:6bcf with SMTP id
 006d021491bc7-67e0f8c6db0mr1039841eaf.21.1774551337025; 
 Thu, 26 Mar 2026 11:55:37 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:36 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 42/69] drm-dyndbg: adapt drm core to use dyndbg
 classmaps-v2
Date: Thu, 26 Mar 2026 12:53:46 -0600
Message-ID: <20260326185413.1205870-43-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 8E76935B851
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

dyndbg's CLASSMAP-v1 api was broken; DECLARE_DYNDBG_CLASSMAP tried to
do too much.  Its replaced by DYNAMIC_DEBUG_CLASSMAP_DEFINE which
creates & EXPORTs a classmap, and DYNAMIC_DEBUG_CLASSMAP_USE which
refers to that exported classmap, creating a module dependency.  DRM
gets DRM_CLASSMAP_* wrappers to hide the DRM_USE_DYNAMIC_DEBUG ifdef.

The drivers still use DECLARE_DYNDBG_CLASSMAP for now, so they still
redundantly re-declare the classmap, but we can convert the drivers
later to DYNDBG_CLASSMAP_USE, at which point they'll respond to the
echo class FOO >control commands.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
this ignored a checkpatch
 WARNING: Argument 'name' is not used in function-like macro
 #70: FILE: include/drm/drm_print.h:148:
 +#define DRM_CLASSMAP_USE(name)

the macro is empty, and correct. only 1 arg is expected.

v++: fix old CLASSBITS/CLASSMAP comment
---
 drivers/gpu/drm/drm_print.c | 25 +++++++++++++------------
 include/drm/drm_print.h     | 13 ++++++++++++-
 2 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index 9b622345e2eb..c0ec866f31dd 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -56,18 +56,19 @@ MODULE_PARM_DESC(debug, "Enable debug output, where each bit enables a debug cat
 #if !defined(CONFIG_DRM_USE_DYNAMIC_DEBUG)
 module_param_named(debug, __drm_debug, ulong, 0600);
 #else
-/* classnames must match vals of enum drm_debug_category */
-DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
-			"DRM_UT_CORE",
-			"DRM_UT_DRIVER",
-			"DRM_UT_KMS",
-			"DRM_UT_PRIME",
-			"DRM_UT_ATOMIC",
-			"DRM_UT_VBL",
-			"DRM_UT_STATE",
-			"DRM_UT_LEASE",
-			"DRM_UT_DP",
-			"DRM_UT_DRMRES");
+/* classnames must match value-symbols of enum drm_debug_category */
+DRM_CLASSMAP_DEFINE(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS,
+		    DRM_UT_CORE,
+		    "DRM_UT_CORE",
+		    "DRM_UT_DRIVER",
+		    "DRM_UT_KMS",
+		    "DRM_UT_PRIME",
+		    "DRM_UT_ATOMIC",
+		    "DRM_UT_VBL",
+		    "DRM_UT_STATE",
+		    "DRM_UT_LEASE",
+		    "DRM_UT_DP",
+		    "DRM_UT_DRMRES");
 
 static struct ddebug_class_param drm_debug_bitmap = {
 	.bits = &__drm_debug,
diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index ab017b05e175..b743ee3f8f5e 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -96,7 +96,10 @@ extern unsigned long __drm_debug;
  *
  */
 enum drm_debug_category {
-	/* These names must match those in DYNAMIC_DEBUG_CLASSBITS */
+	/*
+	 * These enum-names are reused in DRM_CLASSMAP_DEFINE to
+	 * expose them as classes in /proc/dynamic_debug/control
+	 */
 	/**
 	 * @DRM_UT_CORE: Used in the generic drm code: drm_ioctl.c, drm_mm.c,
 	 * drm_memory.c, ...
@@ -141,6 +144,14 @@ enum drm_debug_category {
 	DRM_UT_DRMRES
 };
 
+#ifdef CONFIG_DRM_USE_DYNAMIC_DEBUG
+#define DRM_CLASSMAP_DEFINE(...)    DYNAMIC_DEBUG_CLASSMAP_DEFINE(__VA_ARGS__)
+#define DRM_CLASSMAP_USE(name)      DYNAMIC_DEBUG_CLASSMAP_USE(name)
+#else
+#define DRM_CLASSMAP_DEFINE(...)
+#define DRM_CLASSMAP_USE(name)
+#endif
+
 static inline bool drm_debug_enabled_raw(enum drm_debug_category category)
 {
 	return unlikely(__drm_debug & BIT(category));
-- 
2.53.0


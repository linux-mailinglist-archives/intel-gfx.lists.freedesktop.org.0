Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP51OGdkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890A72F76A3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9E110E526;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="hTdyY45m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4753010EC20
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:25:00 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-467161c4b89so1365887b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408299; x=1774013099; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MSI+J0679V/DmlJlREZ5wQ9k+pFMYu6PsZxwHc99Yws=;
 b=hTdyY45mvr2XhOdbaKznl2huansZYxi0c3QF0/LeT9rSvMnPD6sUQ61sSnp3P82eNw
 1fmGSS+JrQcvWeLJ8GDI0znAy6HywqtbAcPN26ujeczJNpDmqAVUJj9Z2tPWFlD0M6ZA
 Yqu8tz02rfeWP3XRakpCvEK9tkudyRbpFfwNoHebPkM411KicZWF7IfJ+djM9NRWJjw1
 ml2wSBH1zjp2HbuktXmn9T9gKt2sYwxfMFw8gX6BN/U8xy0RoPLKZnfkwUbZ086ft4mg
 U49CYwhqsgyta0F3eSGySoq2PmqMbDkXKMUeHtR+EsHrpWZqt7wrCyoe5jnTZv28Uion
 zywA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408299; x=1774013099;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=MSI+J0679V/DmlJlREZ5wQ9k+pFMYu6PsZxwHc99Yws=;
 b=EXLaPXt2+YQxIbp3DqJIvpBmuQ4H5Lfjwl/GwtRjYGCvhc4aH0xnbyoXwv1sF+R4Z6
 +bMF5Jj5yUBPOTtbA41dw3X7fhnN1CnBX3zK/c3V1bbHxK0rgqejUkWv/aa1u20xuyk6
 85b8D6tMZN7oAvO9syipTESve9VjN9TzgI3a/dv0gJH70UmJrCrqGhdNASJuLAyCuKkQ
 W2OWJkeMejF5ebu2xolPvqlESki7XeruIwecEGEW2Dt2p8YtG6NHCrsrOCXiqz/P4AbB
 zBQ1xrcE6UfXPoqS/oucQa6b5lTADUX++cgtrmDAYPTTGPM+XJhVa1ykvDWoOjpmMWBV
 oEcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXhEgLEchoD4IHFU4rmhOxgmU3z/YGdInrwDGj7TH/fBDNK2HhtdqtnUUb+zKqN6bFEjne/s/bbhRk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyBl6WNEKPmH/hw1641bAowWu3Ub3+JSRkndK40nRTzS2A7uxsz
 IGp6tIEXIfRdYHU685aMvZz9bk6oOVLOcvMEGrCgqZ1DVgA9kNO1QxV6
X-Gm-Gg: ATEYQzyCGTFCR5MUf/4KwXtsHmWQV3117xNDniaNIIBaJrc+mwv5DmoOctpHkYaKFv3
 H1YCj2qe3bw/LmsrBG0aFb04acJzcKsgFWHrShkImJ0LEP9Sl0pzXAJNAJZb814ZVW8/aB1N0u5
 RAlPH6Z6GtjYQ5aZzipSz3zXF6dtTzLnS5YqKSUsNCBVmIRpeOLqX6wyN3GrDfrCaKqAbpijhQC
 fgXJPbThWuL8goSNibUHayrkXpxSvjblU2Ao1GOP9uFKmWQuzx1yGbZPLRnwToc8eeBWvvaEGV3
 oNoKPhEingcE5snX/G4O+5PZpmhOnEc/Vm6YSVa0s0Rnx7DmIQNwH9g+zFLnwL4XaDJNXKBhzh9
 XXyTJzx684BwImnBb4RRL1tjwZt1Kgg2FknxgXuMTNjqZTaES3amW/s3FZzw4BZ/8LsoRj1j0IF
 r2nXhXOcr/YsrgTvBto/eNHf2eGjcmqhho5Yd9f/h+29J+NTlj
X-Received: by 2002:a05:6808:444b:b0:455:7fe4:b215 with SMTP id
 5614622812f47-467575d484amr1587635b6e.53.1773408299425; 
 Fri, 13 Mar 2026 06:24:59 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:59 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Maciej Falkowski <maciej.falkowski@linux.intel.com>,
 Karol Wachowski <karol.wachowski@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 59/65] accel/ivpu: implement IVPU_DBG_* as a dyndbg
 classmap
Date: Fri, 13 Mar 2026 07:20:24 -0600
Message-ID: <20260313132103.2529746-60-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maciej.falkowski@linux.intel.com,m:karol.wachowski@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.361];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 890A72F76A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Invoke DRM_CLASSMAP_DEFINE to create a classmap of
class-ids/categories for ivpu_dbg().

This brings static-key optimized-off benefits to the ivpu_dbg()
callsites.  DRM_CLASSMAP_PARAM_REF wires the sysfs kparam to the
classmap.

This is the 1st real-world example of a module avoiding another
module's classmap's class_id range reservation.

Its also something of an oddity: it "is" a DRM module only cuz

1. CONFIG_DRM_ACCEL_IVPU exists.

2. code therefore uses CONFIG_DRM_USE_DYNAMIC_DEBUG, so must also use
   it's dependent wrappers: DRM_CLASSMAP_*

accel/amdxdna is already using drm.debug via dev_dbg(), so it is more
fully DRM but iirc its a single call.

Anyway, to play nice with DRM, we change all the constants, from
macros calling BIT(X), to an explicit "enum ivpu_dbg_category"
starting at 16 to avoid DRM_UT_CORE..RES.  This is all in an indef to
avoid changing the constants for the non-dyndbg case.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/accel/ivpu/ivpu_drv.c | 27 +++++++++++++++++++--
 drivers/accel/ivpu/ivpu_drv.h | 45 ++++++++++++++++++++++++++++++-----
 2 files changed, 64 insertions(+), 8 deletions(-)

diff --git a/drivers/accel/ivpu/ivpu_drv.c b/drivers/accel/ivpu/ivpu_drv.c
index dd3a486df5f1..2d7d290eb8bb 100644
--- a/drivers/accel/ivpu/ivpu_drv.c
+++ b/drivers/accel/ivpu/ivpu_drv.c
@@ -3,6 +3,7 @@
  * Copyright (C) 2020-2025 Intel Corporation
  */
 
+#include <linux/dynamic_debug.h>
 #include <linux/firmware.h>
 #include <linux/module.h>
 #include <linux/pci.h>
@@ -37,8 +38,30 @@
 #define DRIVER_VERSION_STR "1.0.0 " UTS_RELEASE
 #endif
 
-int ivpu_dbg_mask;
-module_param_named(dbg_mask, ivpu_dbg_mask, int, 0644);
+unsigned long ivpu_dbg_mask;
+
+#if !defined(CONFIG_DRM_USE_DYNAMIC_DEBUG)
+
+module_param_named(dbg_mask, ivpu_dbg_mask, ulong, 0644);
+#else
+DRM_CLASSMAP_DEFINE(ivpu_dbg_classes, DD_CLASS_TYPE_DISJOINT_BITS,
+		IVPU_DBG_REG,
+		"IVPU_DBG_REG",
+		"IVPU_DBG_IRQ",
+		"IVPU_DBG_MMU",
+		"IVPU_DBG_FILE",
+		"IVPU_DBG_MISC",
+		"IVPU_DBG_FW_BOOT",
+		"IVPU_DBG_PM",
+		"IVPU_DBG_IPC",
+		"IVPU_DBG_BO",
+		"IVPU_DBG_JOB",
+		"IVPU_DBG_JSM",
+		"IVPU_DBG_KREF",
+		"IVPU_DBG_RPM",
+		"IVPU_DBG_MMU_MAP");
+DRM_CLASSMAP_PARAM_REF(dbg_mask, ivpu_dbg_mask, ivpu_dbg_classes, p);
+#endif
 MODULE_PARM_DESC(dbg_mask, "Driver debug mask. See IVPU_DBG_* macros.");
 
 int ivpu_test_mode;
diff --git a/drivers/accel/ivpu/ivpu_drv.h b/drivers/accel/ivpu/ivpu_drv.h
index 6378e23e0c97..b59aa0759e26 100644
--- a/drivers/accel/ivpu/ivpu_drv.h
+++ b/drivers/accel/ivpu/ivpu_drv.h
@@ -63,6 +63,10 @@
 
 #define IVPU_SCHED_MODE_AUTO -1
 
+extern unsigned long ivpu_dbg_mask;
+
+#if !defined(CONFIG_DRM_USE_DYNAMIC_DEBUG)
+
 #define IVPU_DBG_REG	 BIT(0)
 #define IVPU_DBG_IRQ	 BIT(1)
 #define IVPU_DBG_MMU	 BIT(2)
@@ -79,6 +83,41 @@
 #define IVPU_DBG_MMU_MAP BIT(13)
 #define IVPU_DBG_IOCTL   BIT(14)
 
+#define ivpu_dbg(vdev, type, fmt, args...) do {				\
+	if (unlikely(IVPU_DBG_##type & ivpu_dbg_mask))			\
+		dev_dbg((vdev)->drm.dev, "[%s] " fmt, #type, ##args);	\
+} while (0)
+
+#else /* !!CONFIG_DRM_USE_DYNAMIC_DEBUG */
+
+enum ivpu_dbg_category {
+	/*
+	 * since accels are drm-devices (CONFIG_DRM_ACCEL_*), adjust
+	 * IVPU_DBG_* to avoid DRMs 0..10 class_id reservations.
+	 */
+	IVPU_DBG_REG = 16,
+	IVPU_DBG_IRQ,
+	IVPU_DBG_MMU,
+	IVPU_DBG_FILE,
+	IVPU_DBG_MISC,
+	IVPU_DBG_FW_BOOT,
+	IVPU_DBG_PM,
+	IVPU_DBG_IPC,
+	IVPU_DBG_BO,
+	IVPU_DBG_JOB,
+	IVPU_DBG_JSM,
+	IVPU_DBG_KREF,
+	IVPU_DBG_RPM,
+	IVPU_DBG_MMU_MAP,
+	IVPU_DBG_IOCTL
+};
+
+#define ivpu_dbg(vdev, type, fmt, ...)                    \
+	_dynamic_func_call_cls(IVPU_DBG_##type, fmt, __dynamic_dev_dbg,	\
+			       (vdev)->drm.dev, fmt, ##__VA_ARGS__)
+
+#endif /* !!CONFIG_DRM_USE_DYNAMIC_DEBUG */
+
 #define ivpu_err(vdev, fmt, ...) \
 	drm_err(&(vdev)->drm, "%s(): " fmt, __func__, ##__VA_ARGS__)
 
@@ -93,11 +132,6 @@
 
 #define ivpu_info(vdev, fmt, ...) drm_info(&(vdev)->drm, fmt, ##__VA_ARGS__)
 
-#define ivpu_dbg(vdev, type, fmt, args...) do {                                \
-	if (unlikely(IVPU_DBG_##type & ivpu_dbg_mask))                         \
-		dev_dbg((vdev)->drm.dev, "[%s] " fmt, #type, ##args);          \
-} while (0)
-
 #define IVPU_WA(wa_name) (vdev->wa.wa_name)
 
 #define IVPU_PRINT_WA(wa_name) do {					\
@@ -208,7 +242,6 @@ struct ivpu_file_priv {
 	bool aborted;
 };
 
-extern int ivpu_dbg_mask;
 extern u8 ivpu_pll_min_ratio;
 extern u8 ivpu_pll_max_ratio;
 extern int ivpu_sched_mode;
-- 
2.53.0


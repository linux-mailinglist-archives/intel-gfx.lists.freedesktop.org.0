Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E07D1185630
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8264A6E065;
	Sat, 14 Mar 2020 18:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB31E6E073
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:33:54 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d5so15900131wrc.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ko61kqcpyfw9iR8Gv2VKYvN880iSUAEnAwvd8yQs5dQ=;
 b=Xt8/frCp+8mGoALFAY0F46oPz15EeXfWMFgiTBgSD9xxIbOIYWhB3pXO3wGp5C8hUv
 B7xP9IqjqB/5MTG4bNVjGiJwpo6Nqn/4jXXm2p2SDmoeeXJ53OadgZB2AJeuXuPX9zyQ
 mJ//EG/iq8mRYBsNm+LHbCt50rtIWfk7/Lk3IT/qCuZvN4gT/9mkk03X6W3xsqX62OKk
 9LMEUaiPu0sLCJcYwxDm3N7lyC2/UIBxG3yN/yWU7Aq3+7uTI82WvtbRo/WLPeRqqYPa
 sf8uKB2upJV+nnkgm+R/XX/UjFuQ+fXB3/MsNAAIHMgwfhYaAFgbdgTZHIa2yFTGKqIA
 Qy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ko61kqcpyfw9iR8Gv2VKYvN880iSUAEnAwvd8yQs5dQ=;
 b=K1S4CUomUHOIuvmjdCZz5qAQtHNpigp40owFHQeCUXWdCxKNbql3yss75HrYjNoWYV
 90WhoOO5qpFfpvLoRxzRDpMkAarei9bHqPk6ZFvxj/hlvb5qFw5h/G9lZ3PsOs6Y5Vrr
 7h/qFMe7hVKxmHYys2p9MdMzsmm9bMDvKAiQIlS5XyuvgMYQWIwoITCTvVkQMRR8zKbl
 mQ9SYmDdcRz0F7lEXMmdHO9rvNvXvQjMU6wMOo7isKfBnPeqVGnEc42EjX7hNJnP9C+k
 POyePXkePMpnTAz330PtcnI59Z6aLIn2HIQMmGv7FzkAmNoM2l9NofH48A7VGqjCceRO
 W4rw==
X-Gm-Message-State: ANhLgQ1cUYuykKjrClS2WHUo9VxD9MDt23DMwnXpIX8rlgs928FkmIAB
 xr4klS5Usj75LlktiA0ChcU=
X-Google-Smtp-Source: ADFU+vvpPX7m1fj880PkYrpPNefA7rO9aRU2YR6Nq0tsykFn0GpHg3zQpBk6b+zXyUAJwCY/07OYmw==
X-Received: by 2002:adf:de8b:: with SMTP id w11mr20812791wrl.258.1584210833261; 
 Sat, 14 Mar 2020 11:33:53 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:33:52 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:38 +0300
Message-Id: <20200314183344.17603-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/ggtt: convert to drm_device based
 logging macros.
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

Converts various instances of the printk based drm logging macros to use
the struct drm_device based logging macros in i915/gt/intel_ggtt.c.
This change was done using the following coccinelle script that matches
based on the existence of a drm_i915_private device:
@@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

New checkpatch warnings were fixed manually.

Note that this converts DRM_DEBUG_DRIVER to drm_dbg()

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 38 ++++++++++++++++------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index aed498a0d032..4a10662adbd6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -767,13 +767,13 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	else
 		ggtt->gsm = ioremap_wc(phys_addr, size);
 	if (!ggtt->gsm) {
-		DRM_ERROR("Failed to map the ggtt page table\n");
+		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
 		return -ENOMEM;
 	}
 
 	ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
 	if (ret) {
-		DRM_ERROR("Scratch setup failed\n");
+		drm_err(&i915->drm, "Scratch setup failed\n");
 		/* iounmap will also get called at remove, but meh */
 		iounmap(ggtt->gsm);
 		return ret;
@@ -833,7 +833,8 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	if (!err)
 		err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(39));
 	if (err)
-		DRM_ERROR("Can't set DMA mask/consistent mask (%d)\n", err);
+		drm_err(&i915->drm,
+			"Can't set DMA mask/consistent mask (%d)\n", err);
 
 	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 	if (IS_CHERRYVIEW(i915))
@@ -980,7 +981,8 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	 * just a coarse sanity check.
 	 */
 	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
-		DRM_ERROR("Unknown GMADR size (%pa)\n", &ggtt->mappable_end);
+		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
+			&ggtt->mappable_end);
 		return -ENXIO;
 	}
 
@@ -988,7 +990,8 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	if (!err)
 		err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(40));
 	if (err)
-		DRM_ERROR("Can't set DMA mask/consistent mask (%d)\n", err);
+		drm_err(&i915->drm,
+			"Can't set DMA mask/consistent mask (%d)\n", err);
 	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 
 	size = gen6_get_total_gtt_size(snb_gmch_ctl);
@@ -1035,7 +1038,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 
 	ret = intel_gmch_probe(i915->bridge_dev, i915->drm.pdev, NULL);
 	if (!ret) {
-		DRM_ERROR("failed to set up gmch\n");
+		drm_err(&i915->drm, "failed to set up gmch\n");
 		return -EIO;
 	}
 
@@ -1083,26 +1086,29 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
 		return ret;
 
 	if ((ggtt->vm.total - 1) >> 32) {
-		DRM_ERROR("We never expected a Global GTT with more than 32bits"
-			  " of address space! Found %lldM!\n",
-			  ggtt->vm.total >> 20);
+		drm_err(&i915->drm,
+			"We never expected a Global GTT with more than 32bits"
+			" of address space! Found %lldM!\n",
+			ggtt->vm.total >> 20);
 		ggtt->vm.total = 1ULL << 32;
 		ggtt->mappable_end =
 			min_t(u64, ggtt->mappable_end, ggtt->vm.total);
 	}
 
 	if (ggtt->mappable_end > ggtt->vm.total) {
-		DRM_ERROR("mappable aperture extends past end of GGTT,"
-			  " aperture=%pa, total=%llx\n",
-			  &ggtt->mappable_end, ggtt->vm.total);
+		drm_err(&i915->drm,
+			"mappable aperture extends past end of GGTT,"
+			" aperture=%pa, total=%llx\n",
+			&ggtt->mappable_end, ggtt->vm.total);
 		ggtt->mappable_end = ggtt->vm.total;
 	}
 
 	/* GMADR is the PCI mmio aperture into the global GTT. */
-	DRM_DEBUG_DRIVER("GGTT size = %lluM\n", ggtt->vm.total >> 20);
-	DRM_DEBUG_DRIVER("GMADR size = %lluM\n", (u64)ggtt->mappable_end >> 20);
-	DRM_DEBUG_DRIVER("DSM size = %lluM\n",
-			 (u64)resource_size(&intel_graphics_stolen_res) >> 20);
+	drm_dbg(&i915->drm, "GGTT size = %lluM\n", ggtt->vm.total >> 20);
+	drm_dbg(&i915->drm, "GMADR size = %lluM\n",
+		(u64)ggtt->mappable_end >> 20);
+	drm_dbg(&i915->drm, "DSM size = %lluM\n",
+		(u64)resource_size(&intel_graphics_stolen_res) >> 20);
 
 	return 0;
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

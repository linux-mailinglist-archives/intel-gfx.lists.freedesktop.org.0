Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD5A185632
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B816E079;
	Sat, 14 Mar 2020 18:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59BB06E073
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:34:00 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d5so15900270wrc.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mThYwUAovn9HyNI8TSc/VR4/zEqx8zhNnzMWT17U344=;
 b=PEGXuX2sRwWiOLCtZaH4uXS1uW4JuRLrejsYpZ8rl8CPZInDMI1wiD6JMXof5XsFT3
 teZOKY4zuQErFs48DOnsZlWCRyQwJucfRgxeMkJ6jcObirft81G6DTiapPZtKWnUVApm
 yy71ELWsFckD60wBbGWfAPKQuNblYp69/CjAUqgFNq5rGY5KgAKcYcOJDRMFbcF3/sYj
 yfRg6fbitg5o2rQ+Jh6fuBJ+f55pI9kkaZX/jyFd9iYTybJTb662uhllQhyB3PpE5jse
 M/ym876+KWRNRyrD2YT+4Wbes/y3QWy89Uuv7Ht6dtQuKGsn1tMcXUkT3gNL+6XHvc+K
 OZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mThYwUAovn9HyNI8TSc/VR4/zEqx8zhNnzMWT17U344=;
 b=QbWWOsaD3kI7AsQ9azF5NvlS6ECDDYLep+ChGrhM46aydnd87WrUL3KjbH4IIrjn0V
 g/9Mb4o3Zr373fJwAfeM/Jy0VrSeEIVYFPnmQ6H2joivlkvUf3HwSz1z0RPB/KI5uV1D
 G5EPLjvNvprDtSkdUBIlUwngMOR1o3PR2Y+4VK5WbhkRbOlWBalCmRwMKGp3yGMVwBiN
 5gYvVGaqIlzpQU5NL37p7mpUzOPJu1vre2U4hFGO2sid27RpUxomkJHDalj8/tk+N6OC
 RKg0UzoNCT2jfpuXNiF04CaZ1iB6eYCosLxLEDyf+wxIsyuCFseFB6MbfHsknhDZVWKn
 yL1A==
X-Gm-Message-State: ANhLgQ2lwtoSk/VesjsXqIFa8SodkvLCOtY31VYPyv6fGm3enZD1jJvH
 ocGH82qBx6eE8KNbpUAMBwY=
X-Google-Smtp-Source: ADFU+vtW6LKTLrjBTpRhOLGDLid64pSTMsspGVD7/bZX8vQ52RtlZCCl9We6mqEuLnCFKMxqj7Vt5w==
X-Received: by 2002:adf:fa8d:: with SMTP id h13mr15754476wrr.155.1584210839018; 
 Sat, 14 Mar 2020 11:33:59 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:33:58 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:40 +0300
Message-Id: <20200314183344.17603-4-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/rc6: convert to struct drm_device
 based logging macros.
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
the struct drm_device logging macros. This also involves extracting the
drm_i915_private device from intel types in some cases.

Note that this converts DRM_DEBUG_DRIVER() to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 35 ++++++++++++++++-------------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 66c07c32745c..50aa63270cdc 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -246,16 +246,18 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 	ret = sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
 				     &rc6vids, NULL);
 	if (IS_GEN(i915, 6) && ret) {
-		DRM_DEBUG_DRIVER("Couldn't check for BIOS workaround\n");
+		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
 	} else if (IS_GEN(i915, 6) &&
 		   (GEN6_DECODE_RC6_VID(rc6vids & 0xff) < 450)) {
-		DRM_DEBUG_DRIVER("You should update your BIOS. Correcting minimum rc6 voltage (%dmV->%dmV)\n",
-				 GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
+		drm_dbg(&i915->drm,
+			"You should update your BIOS. Correcting minimum rc6 voltage (%dmV->%dmV)\n",
+			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
 		rc6vids &= 0xffff00;
 		rc6vids |= GEN6_ENCODE_RC6_VID(450);
 		ret = sandybridge_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
 		if (ret)
-			DRM_ERROR("Couldn't fix incorrect rc6 voltage\n");
+			drm_err(&i915->drm,
+				"Couldn't fix incorrect rc6 voltage\n");
 	}
 }
 
@@ -263,14 +265,15 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 static int chv_rc6_init(struct intel_rc6 *rc6)
 {
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
 	resource_size_t pctx_paddr, paddr;
 	resource_size_t pctx_size = 32 * SZ_1K;
 	u32 pcbr;
 
 	pcbr = intel_uncore_read(uncore, VLV_PCBR);
 	if ((pcbr >> VLV_PCBR_ADDR_SHIFT) == 0) {
-		DRM_DEBUG_DRIVER("BIOS didn't set up PCBR, fixing up\n");
-		paddr = rc6_to_i915(rc6)->dsm.end + 1 - pctx_size;
+		drm_dbg(&i915->drm, "BIOS didn't set up PCBR, fixing up\n");
+		paddr = i915->dsm.end + 1 - pctx_size;
 		GEM_BUG_ON(paddr > U32_MAX);
 
 		pctx_paddr = (paddr & ~4095);
@@ -304,7 +307,7 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 		goto out;
 	}
 
-	DRM_DEBUG_DRIVER("BIOS didn't set up PCBR, fixing up\n");
+	drm_dbg(&i915->drm, "BIOS didn't set up PCBR, fixing up\n");
 
 	/*
 	 * From the Gunit register HAS:
@@ -316,7 +319,8 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 	 */
 	pctx = i915_gem_object_create_stolen(i915, pctx_size);
 	if (IS_ERR(pctx)) {
-		DRM_DEBUG("not enough stolen space for PCTX, disabling\n");
+		drm_dbg(&i915->drm,
+			"not enough stolen space for PCTX, disabling\n");
 		return PTR_ERR(pctx);
 	}
 
@@ -398,14 +402,14 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 	rc_sw_target = intel_uncore_read(uncore, GEN6_RC_STATE);
 	rc_sw_target &= RC_SW_TARGET_STATE_MASK;
 	rc_sw_target >>= RC_SW_TARGET_STATE_SHIFT;
-	DRM_DEBUG_DRIVER("BIOS enabled RC states: "
+	drm_dbg(&i915->drm, "BIOS enabled RC states: "
 			 "HW_CTRL %s HW_RC6 %s SW_TARGET_STATE %x\n",
 			 onoff(rc_ctl & GEN6_RC_CTL_HW_ENABLE),
 			 onoff(rc_ctl & GEN6_RC_CTL_RC6_ENABLE),
 			 rc_sw_target);
 
 	if (!(intel_uncore_read(uncore, RC6_LOCATION) & RC6_CTX_IN_DRAM)) {
-		DRM_DEBUG_DRIVER("RC6 Base location not set properly.\n");
+		drm_dbg(&i915->drm, "RC6 Base location not set properly.\n");
 		enable_rc6 = false;
 	}
 
@@ -417,7 +421,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 		intel_uncore_read(uncore, RC6_CTX_BASE) & RC6_CTX_BASE_MASK;
 	if (!(rc6_ctx_base >= i915->dsm_reserved.start &&
 	      rc6_ctx_base + PAGE_SIZE < i915->dsm_reserved.end)) {
-		DRM_DEBUG_DRIVER("RC6 Base address not as expected.\n");
+		drm_dbg(&i915->drm, "RC6 Base address not as expected.\n");
 		enable_rc6 = false;
 	}
 
@@ -425,24 +429,25 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1 &&
 	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1 &&
 	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1)) {
-		DRM_DEBUG_DRIVER("Engine Idle wait time not set properly.\n");
+		drm_dbg(&i915->drm,
+			"Engine Idle wait time not set properly.\n");
 		enable_rc6 = false;
 	}
 
 	if (!intel_uncore_read(uncore, GEN8_PUSHBUS_CONTROL) ||
 	    !intel_uncore_read(uncore, GEN8_PUSHBUS_ENABLE) ||
 	    !intel_uncore_read(uncore, GEN8_PUSHBUS_SHIFT)) {
-		DRM_DEBUG_DRIVER("Pushbus not setup properly.\n");
+		drm_dbg(&i915->drm, "Pushbus not setup properly.\n");
 		enable_rc6 = false;
 	}
 
 	if (!intel_uncore_read(uncore, GEN6_GFXPAUSE)) {
-		DRM_DEBUG_DRIVER("GFX pause not setup properly.\n");
+		drm_dbg(&i915->drm, "GFX pause not setup properly.\n");
 		enable_rc6 = false;
 	}
 
 	if (!intel_uncore_read(uncore, GEN8_MISC_CTRL0)) {
-		DRM_DEBUG_DRIVER("GPM control not setup properly.\n");
+		drm_dbg(&i915->drm, "GPM control not setup properly.\n");
 		enable_rc6 = false;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

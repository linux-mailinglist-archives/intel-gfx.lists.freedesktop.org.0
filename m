Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA29185635
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748196E090;
	Sat, 14 Mar 2020 18:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ACA96E091
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:34:08 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id a25so16248434wrd.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MoPnHRUZxqWD3cmKPM/eF9fwu9Fso27x6Y/45dnQ73o=;
 b=hT3RcCV4m/kQgg8ngb4QVOuoKgMDvCO+g3mn3mSqvxOaHvx5uvWXONlydVIL8JhCOC
 lScxIZLD90IdFbBv5DjlBVEElmJclejBh8y5l7yTSXb4EjztAcALPAsEkiKOojP53Ufx
 5TUayNFHwVoPhvxgfILPHusBe+uqbclNaJcaza6kmlrZjoYJf+cJvIr7qQOrUDKwALmS
 StZZd/uDneoiagaEH8S0dJzr8A4FVcP6Fwf/Oj0QWzf7mPk2UqcMqpEb5CYf8VI8usL6
 M/6STcFSNW/Oh5cHI+axdio9nYoNwrcue3A4lgHp9iVdGB/7wSctg9bjqewbUGyD2MlD
 +QpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MoPnHRUZxqWD3cmKPM/eF9fwu9Fso27x6Y/45dnQ73o=;
 b=kDJ+sO4fiOoqvjyzke5EOVXIWnfzkIHPU5T34p51ODk24xNB/oJ+BCLIWDBlv3t25e
 bRO2hzArUcxUMbvySJPdbhzDm89/CvbC2dhtBsqHrHRYXUJQO5yEjulG8IC+jjocfAky
 fTX/7zIQgIiOvST6WOJrpkl5SFGYH1zP0TaAp7gLs6WsIJqmcTTzk1eV9N2LudHlyZzp
 xdiM3MT57N6FOKIUWK1kynEmcV9C17KW01TZ19qiQvz0/cTO9+X+mzD2BE+MqFx3QpBr
 bJUwWeLJhzP2H4zO3w4luMsDGoEQyBaStxUMJktJOi/Z0AUbkl+JixDpK7NVWZjbYjVK
 Q9JA==
X-Gm-Message-State: ANhLgQ0OvldqdbLr8KaPfaeSAVThgAvnHU0UrI/2wqSC/NoYVePuVE/n
 FL5iQGb+tMWQFqb5lThBk+k=
X-Google-Smtp-Source: ADFU+vsGPhA+JnnYz719LM5Fh2vyg3dRWuozJJNKCxv/kCXs/ZxvX75+LP2SLgbzVH/kWUE6p+078Q==
X-Received: by 2002:a5d:5488:: with SMTP id h8mr24247163wrv.387.1584210847183; 
 Sat, 14 Mar 2020 11:34:07 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.34.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:34:06 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:43 +0300
Message-Id: <20200314183344.17603-7-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/rps: use struct drm_device based
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

Replace the use of the printk based drm logging macros with the struct
drm_device based logging macros in i915/gt/intel_rps.c. This also
involves extracting the drm_i915_private device pointer from various
intel types.

This converts the instances of DRM_DEBUG_DRIVER to drm_dbg() while not
converting DRM_DEBUG() instances due to the lack of an analogous
drm_device based macro.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 75 ++++++++++++++---------------
 1 file changed, 36 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 87f9638d2cbf..7bf631ca560b 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -183,8 +183,8 @@ static void gen5_rps_init(struct intel_rps *rps)
 	fmin = (rgvmodectl & MEMMODE_FMIN_MASK);
 	fstart = (rgvmodectl & MEMMODE_FSTART_MASK) >>
 		MEMMODE_FSTART_SHIFT;
-	DRM_DEBUG_DRIVER("fmax: %d, fmin: %d, fstart: %d\n",
-			 fmax, fmin, fstart);
+	drm_dbg(&i915->drm, "fmax: %d, fmin: %d, fstart: %d\n",
+		fmax, fmin, fstart);
 
 	rps->min_freq = fmax;
 	rps->max_freq = fmin;
@@ -453,7 +453,8 @@ static bool gen5_rps_enable(struct intel_rps *rps)
 
 	if (wait_for_atomic((intel_uncore_read(uncore, MEMSWCTL) &
 			     MEMCTL_CMD_STS) == 0, 10))
-		DRM_ERROR("stuck trying to change perf mode\n");
+		drm_err(&uncore->i915->drm,
+			"stuck trying to change perf mode\n");
 	mdelay(1);
 
 	gen5_rps_set(rps, rps->cur_freq);
@@ -880,12 +881,13 @@ static void gen6_rps_init(struct intel_rps *rps)
 
 static bool rps_reset(struct intel_rps *rps)
 {
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 	/* force a reset */
 	rps->power.mode = -1;
 	rps->last_freq = -1;
 
 	if (rps_set(rps, rps->min_freq, true)) {
-		DRM_ERROR("Failed to reset RPS to initial values\n");
+		drm_err(&i915->drm, "Failed to reset RPS to initial values\n");
 		return false;
 	}
 
@@ -1036,8 +1038,8 @@ static bool chv_rps_enable(struct intel_rps *rps)
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
 		      "GPLL not enabled\n");
 
-	DRM_DEBUG_DRIVER("GPLL enabled? %s\n", yesno(val & GPLLENABLE));
-	DRM_DEBUG_DRIVER("GPU status: 0x%08x\n", val);
+	drm_dbg(&i915->drm, "GPLL enabled? %s\n", yesno(val & GPLLENABLE));
+	drm_dbg(&i915->drm, "GPU status: 0x%08x\n", val);
 
 	return rps_reset(rps);
 }
@@ -1134,8 +1136,8 @@ static bool vlv_rps_enable(struct intel_rps *rps)
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
 		      "GPLL not enabled\n");
 
-	DRM_DEBUG_DRIVER("GPLL enabled? %s\n", yesno(val & GPLLENABLE));
-	DRM_DEBUG_DRIVER("GPU status: 0x%08x\n", val);
+	drm_dbg(&i915->drm, "GPLL enabled? %s\n", yesno(val & GPLLENABLE));
+	drm_dbg(&i915->drm, "GPU status: 0x%08x\n", val);
 
 	return rps_reset(rps);
 }
@@ -1292,7 +1294,8 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
 				  CCK_GPLL_CLOCK_CONTROL,
 				  i915->czclk_freq);
 
-	DRM_DEBUG_DRIVER("GPLL reference freq: %d kHz\n", rps->gpll_ref_freq);
+	drm_dbg(&i915->drm, "GPLL reference freq: %d kHz\n",
+		rps->gpll_ref_freq);
 }
 
 static void vlv_rps_init(struct intel_rps *rps)
@@ -1320,28 +1323,24 @@ static void vlv_rps_init(struct intel_rps *rps)
 		i915->mem_freq = 1333;
 		break;
 	}
-	DRM_DEBUG_DRIVER("DDR speed: %d MHz\n", i915->mem_freq);
+	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 
 	rps->max_freq = vlv_rps_max_freq(rps);
 	rps->rp0_freq = rps->max_freq;
-	DRM_DEBUG_DRIVER("max GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->max_freq),
-			 rps->max_freq);
+	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->max_freq), rps->max_freq);
 
 	rps->efficient_freq = vlv_rps_rpe_freq(rps);
-	DRM_DEBUG_DRIVER("RPe GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->efficient_freq),
-			 rps->efficient_freq);
+	drm_dbg(&i915->drm, "RPe GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->efficient_freq), rps->efficient_freq);
 
 	rps->rp1_freq = vlv_rps_guar_freq(rps);
-	DRM_DEBUG_DRIVER("RP1(Guar Freq) GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->rp1_freq),
-			 rps->rp1_freq);
+	drm_dbg(&i915->drm, "RP1(Guar Freq) GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->rp1_freq), rps->rp1_freq);
 
 	rps->min_freq = vlv_rps_min_freq(rps);
-	DRM_DEBUG_DRIVER("min GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->min_freq),
-			 rps->min_freq);
+	drm_dbg(&i915->drm, "min GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->min_freq), rps->min_freq);
 
 	vlv_iosf_sb_put(i915,
 			BIT(VLV_IOSF_SB_PUNIT) |
@@ -1371,28 +1370,24 @@ static void chv_rps_init(struct intel_rps *rps)
 		i915->mem_freq = 1600;
 		break;
 	}
-	DRM_DEBUG_DRIVER("DDR speed: %d MHz\n", i915->mem_freq);
+	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 
 	rps->max_freq = chv_rps_max_freq(rps);
 	rps->rp0_freq = rps->max_freq;
-	DRM_DEBUG_DRIVER("max GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->max_freq),
-			 rps->max_freq);
+	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->max_freq), rps->max_freq);
 
 	rps->efficient_freq = chv_rps_rpe_freq(rps);
-	DRM_DEBUG_DRIVER("RPe GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->efficient_freq),
-			 rps->efficient_freq);
+	drm_dbg(&i915->drm, "RPe GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->efficient_freq), rps->efficient_freq);
 
 	rps->rp1_freq = chv_rps_guar_freq(rps);
-	DRM_DEBUG_DRIVER("RP1(Guar) GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->rp1_freq),
-			 rps->rp1_freq);
+	drm_dbg(&i915->drm, "RP1(Guar) GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->rp1_freq), rps->rp1_freq);
 
 	rps->min_freq = chv_rps_min_freq(rps);
-	DRM_DEBUG_DRIVER("min GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->min_freq),
-			 rps->min_freq);
+	drm_dbg(&i915->drm, "min GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->min_freq), rps->min_freq);
 
 	vlv_iosf_sb_put(i915,
 			BIT(VLV_IOSF_SB_PUNIT) |
@@ -1455,6 +1450,7 @@ static void rps_work(struct work_struct *work)
 {
 	struct intel_rps *rps = container_of(work, typeof(*rps), work);
 	struct intel_gt *gt = rps_to_gt(rps);
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 	bool client_boost = false;
 	int new_freq, adj, min, max;
 	u32 pm_iir = 0;
@@ -1530,7 +1526,7 @@ static void rps_work(struct work_struct *work)
 	new_freq = clamp_t(int, new_freq, min, max);
 
 	if (intel_rps_set(rps, new_freq)) {
-		DRM_DEBUG_DRIVER("Failed to set new GPU frequency\n");
+		drm_dbg(&i915->drm, "Failed to set new GPU frequency\n");
 		rps->last_adj = 0;
 	}
 
@@ -1652,9 +1648,10 @@ void intel_rps_init(struct intel_rps *rps)
 		sandybridge_pcode_read(i915, GEN6_READ_OC_PARAMS,
 				       &params, NULL);
 		if (params & BIT(31)) { /* OC supported */
-			DRM_DEBUG_DRIVER("Overclocking supported, max: %dMHz, overclock: %dMHz\n",
-					 (rps->max_freq & 0xff) * 50,
-					 (params & 0xff) * 50);
+			drm_dbg(&i915->drm,
+				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
+				(rps->max_freq & 0xff) * 50,
+				(params & 0xff) * 50);
 			rps->max_freq = params & 0xff;
 		}
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

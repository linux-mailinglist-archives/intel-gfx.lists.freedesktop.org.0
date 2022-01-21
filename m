Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8709495F6D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF08F10EA70;
	Fri, 21 Jan 2022 13:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9946A10EA70
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770439; x=1674306439;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O/viYfp3etJF6mdiDQ+KKVyIBVT8hIqPAyUSKMXL5Nk=;
 b=Y8UrZ88ZwcFRG7G3sWr1ES47E1efVouRV80kQqsPmpu30hedUNNAI9ad
 PQZbGb64WyUjjXwjunTko0tTnSo+v0Hd7xd1NtPziQjZZfhKg93HbPX9q
 kCiuXmqcpsTyzj8U760I++cI9+SPmE+3yPUOQ0czoUjsYZfE/Z64bfVRY
 suNREA6XkcVaN3bdOb6gwj3APmKW58NY+RivSQjgKClv/lzTYPtbAmcKk
 RMRAqSZzcXm0RfZBulWjy5WuzSNveyzgNfWpVVyVeges9mRR2blMnzYi2
 2RGYXnTzqkYKXqO2OaE44XHbsepM7+/MIR/w1roiz/NmZD+Liv6mlwH6t Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243242156"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="243242156"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:07:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="616502257"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 21 Jan 2022 05:07:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 15:07:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:07:10 +0200
Message-Id: <20220121130710.10382-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use per-device debugs for
 bigjoiner stuff
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Specify which device we're talking about when spewing
bigjoiner debugs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 36e547bd0cbe..9fb72c356208 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7633,9 +7633,10 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 
 	slave_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
 	if (!slave_crtc) {
-		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
-			      "CRTC + 1 to be used, doesn't exist\n",
-			      crtc->base.base.id, crtc->base.name);
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] Big joiner configuration requires "
+			    "CRTC + 1 to be used, doesn't exist\n",
+			    crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -7649,16 +7650,18 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
 	if (slave_crtc_state->uapi.enable)
 		goto claimed;
 
-	DRM_DEBUG_KMS("[CRTC:%d:%s] Used as slave for big joiner\n",
-		      slave_crtc->base.base.id, slave_crtc->base.name);
+	drm_dbg_kms(&i915->drm,
+		    "[CRTC:%d:%s] Used as slave for big joiner\n",
+		    slave_crtc->base.base.id, slave_crtc->base.name);
 
 	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
 
 claimed:
-	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
-		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
-		      slave_crtc->base.base.id, slave_crtc->base.name,
-		      master_crtc->base.base.id, master_crtc->base.name);
+	drm_dbg_kms(&i915->drm,
+		    "[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
+		    "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
+		    slave_crtc->base.base.id, slave_crtc->base.name,
+		    master_crtc->base.base.id, master_crtc->base.name);
 	return -EINVAL;
 }
 
-- 
2.32.0


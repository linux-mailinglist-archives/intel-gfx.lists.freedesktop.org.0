Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8087BFB4E0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 12:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E41610E72C;
	Wed, 22 Oct 2025 10:07:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mnQjv4Wv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9A010E72C;
 Wed, 22 Oct 2025 10:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761127647; x=1792663647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=18qmIiliJyC6FuYP/6FDUOJhUAVcE11fF/xkZeb16kI=;
 b=mnQjv4WvkW9S3zOit06oWCR9jqZaFmOdz1pUg3cWYLcqpC7z9ynOS65l
 2l00ygy0h21pokmHiU1sXoOMWRqiVQgXZ7gGXMXkjm5z3Imnp2BS3KzMp
 9SLlz/mhc9MJ2+SQGprCZWiNP33eJkYihHnxGfM3OZPEShJK/MtIex9i+
 e7vNy4fIH98klnQRwPWzIC0bMgHYSpfHqjk+5nEjqxHiZkvlh4c27rWvA
 ehYO2dtz50vJajEwzDVNMPt+1g7Wf+pxO/NDYhPuvPZHWl6N3b2FXa+ls
 IKEmx9cADQ+OlgkHAbPP/69tX+oblblFCjZ1HxQROjMJFGj8llD8/IJyU w==;
X-CSE-ConnectionGUID: R/jF3EHKSPmJD4voXNq97A==
X-CSE-MsgGUID: E1SKoj4JR+mANfho5JoOMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="65886692"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="65886692"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:26 -0700
X-CSE-ConnectionGUID: bV6F2B/gRg2QU0SixhNUZQ==
X-CSE-MsgGUID: CmHa5xffT7qfhCTD0KizMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="183535843"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, stable@vger.kernel.org,
 Petr Vorel <pvorel@suse.cz>
Subject: [PATCH 1/3] drm/i915/dmc: Clear HRR EVT_CTL/HTP to zero on ADL-S
Date: Wed, 22 Oct 2025 13:07:16 +0300
Message-ID: <20251022100718.24803-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
References: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

On ADL-S the main DMC HRR event DMC_EVT_CTL/HTP are never
restored to their previous values during DC6 exit. This
angers assert_dmc_loaded(), and basically makes the HRR
handler unusable because we don't rewrite EVT_HTP when
enabling DMC events.

Let's just clear the HRR EVT_CTL/HTP to zero from the
beginnning so that the expected value matches the post-DC6
reality.

I suppose if we ever had actual use for HRR we'd have to both,
reject HRR+PSR, and reprogram EVT_HTP when enabling the event.
But for now we don't care about HRR so keeping both registers
zeroed is fine.

Cc: stable@vger.kernel.org
Tested-by: Petr Vorel <pvorel@suse.cz>
Fixes: 43175c92d403 ("drm/i915/dmc: Assert DMC is loaded harder")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15153
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 55 +++++++++++++++++++++++-
 1 file changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index be6d37ea1139..5ba531e3bc36 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -550,6 +550,36 @@ static bool is_event_handler(struct intel_display *display,
 		REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == event_id;
 }
 
+static bool fixup_dmc_evt(struct intel_display *display,
+			  enum intel_dmc_id dmc_id,
+			  i915_reg_t reg_ctl, u32 *data_ctl,
+			  i915_reg_t reg_htp, u32 *data_htp)
+{
+	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg_ctl))
+		return false;
+
+	if (!is_dmc_evt_htp_reg(display, dmc_id, reg_htp))
+		return false;
+
+	/* make sure reg_ctl and reg_htp are for the same event */
+	if (i915_mmio_reg_offset(reg_ctl) - i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0)) !=
+	    i915_mmio_reg_offset(reg_htp) - i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0)))
+		return false;
+
+	/*
+	 * On ADL-S the HRR event handler is not restored after DC6.
+	 * Clear it to zero from the beginning to avoid mismatches later.
+	 */
+	if (display->platform.alderlake_s && dmc_id == DMC_FW_MAIN &&
+	    is_event_handler(display, dmc_id, MAINDMC_EVENT_VBLANK_A, reg_ctl, *data_ctl)) {
+		*data_ctl = 0;
+		*data_htp = 0;
+		return true;
+	}
+
+	return false;
+}
+
 static bool disable_dmc_evt(struct intel_display *display,
 			    enum intel_dmc_id dmc_id,
 			    i915_reg_t reg, u32 data)
@@ -1068,9 +1098,32 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 	for (i = 0; i < mmio_count; i++) {
 		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
 		dmc_info->mmiodata[i] = mmiodata[i];
+	}
 
+	for (i = 0; i < mmio_count - 1; i++) {
+		u32 orig_mmiodata[2] = {
+			dmc_info->mmiodata[i],
+			dmc_info->mmiodata[i+1],
+		};
+
+		if (!fixup_dmc_evt(display, dmc_id,
+				   dmc_info->mmioaddr[i], &dmc_info->mmiodata[i],
+				   dmc_info->mmioaddr[i+1], &dmc_info->mmiodata[i+1]))
+			continue;
+
+		drm_dbg_kms(display->drm,
+			    " mmio[%d]: 0x%x = 0x%x->0x%x (EVT_CTL)\n",
+			    i, i915_mmio_reg_offset(dmc_info->mmioaddr[i]),
+			    orig_mmiodata[0], dmc_info->mmiodata[i]);
+		drm_dbg_kms(display->drm,
+			    " mmio[%d]: 0x%x = 0x%x->0x%x (EVT_HTP)\n",
+			    i+1, i915_mmio_reg_offset(dmc_info->mmioaddr[i+1]),
+			    orig_mmiodata[1], dmc_info->mmiodata[i+1]);
+	}
+
+	for (i = 0; i < mmio_count; i++) {
 		drm_dbg_kms(display->drm, " mmio[%d]: 0x%x = 0x%x%s%s\n",
-			    i, mmioaddr[i], mmiodata[i],
+			    i, i915_mmio_reg_offset(dmc_info->mmioaddr[i]), dmc_info->mmiodata[i],
 			    is_dmc_evt_ctl_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_CTL)" :
 			    is_dmc_evt_htp_reg(display, dmc_id, dmc_info->mmioaddr[i]) ? " (EVT_HTP)" : "",
 			    disable_dmc_evt(display, dmc_id, dmc_info->mmioaddr[i],
-- 
2.49.1


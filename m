Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E074A0041D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 07:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A6810E7FB;
	Fri,  3 Jan 2025 06:11:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5iiGEIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C9A10E288;
 Fri,  3 Jan 2025 06:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735884694; x=1767420694;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=MtfEGt6dj+l5V1FE0XIc+jSnXyW4lho3d8vohBPD/S0=;
 b=O5iiGEITR1vAUjpgZ/KNOIcjyqQMdXdOZ2Syp6qSxfpf/FxR9NLWukhr
 iHJDEYq7XVuC1kzzkSc43bPxuktCjyS3V87F3h1LzY8MXUPWexoxMJsuf
 x8z/HiAUpbMIEHANx7NZDLYvLwqBJVHBmaao4tt3GoWm0J0VmQEUYAlYf
 dKDSZQxbYhecJk1Yiml/bOQ4MhPO1BL4FlRDxUfygcaDKdL6SYzctR8Gi
 Rbt6xL6KT+Rf1AXT3tsQR0x3r/vFs+dO7dPQ88iQVvVR7VnfwtwYavVWH
 J5BqSHEQrm9LldbZxzrBYW+NnNfZqs/NOzVfH/9EXTlssd/7IvN160G+l g==;
X-CSE-ConnectionGUID: 8M10Re0fQ/SedpUscEMXlw==
X-CSE-MsgGUID: A7wfyIuNSJyQeux2p/rzRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="38958347"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="38958347"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 22:11:34 -0800
X-CSE-ConnectionGUID: hYTUqLr5Q3GXidkgvUK8ww==
X-CSE-MsgGUID: OHZdi0+UTfSVi0oXn6pIvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106762689"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa005.jf.intel.com with ESMTP; 02 Jan 2025 22:11:32 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Fri, 03 Jan 2025 11:26:37 +0530
Subject: [PATCH v6] drm/i915/dp: Guarantee a minimum HBlank time
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-hblank-v6-1-c2f749181fc6@intel.com>
X-B4-Tracking: v=1; b=H4sIABR8d2cC/2WOQQqDMBREr1KybiRJjcaueo/iIsZvE6pJ+VGpi
 HdvFAqFzu7BzGNWEgEdRHI9rQRhdtEFn6A4n4ix2j+AujYxEUxIxtmF2qbX/klNW0KpTAO8VCS
 VXwidex+ie524wzDQ0SLo7zznKawSBVMZF1XOGeVU4+QzzIYJR7vcnB+hz0wYdqN1cQy4HM9mu
 Xv/TswyKURRaVXmynSy+THU27Z9AOucjdDeAAAA
X-Change-ID: 20250103-hblank-cd7e78cbe178
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Mandate a minimum Hblank symbol cycle count between BS and BE in 8b/10b
MST and 128b/132b mode.

v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
    (Jani)
    Limit hblank to 511 and accommodate BS/BE in calculated value
    (Srikanth)
v5: Some spelling corrections (Suraj)
v6: Removed DP2.1 in comment as this is applicable for both DP2.1 and
    DP1.4 (Suraj)

Spec: DP2.1a
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
Changes in v6:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v5: https://lore.kernel.org/r/20250103-hblank-v5-1-269a8748cf5b@intel.com
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 35 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h                    |  4 +++
 4 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 1faef60be4728cd80a0a6b0151797ceda5c443ce..0e7e0b7803d9865177d6f68e8afdef94a91d9697 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -248,6 +248,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
+		drm_printf(&p, "minimum HBlank: %d\n", pipe_config->min_hblank);
 	}
 
 	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index eb9dd1125a4a09511936b81219e7f38fae106dfd..96467be97ae64aa40e985d0272016860b666c119 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1095,6 +1095,7 @@ struct intel_crtc_state {
 
 	int max_link_bpp_x16;	/* in 1/16 bpp units */
 	int pipe_bpp;		/* in 1 bpp units */
+	int min_hblank;
 	struct intel_link_m_n dp_m_n;
 
 	/* m2_n2 for eDP downclock */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fffd199999e02eb66ea478ff872f72b277bd3970..bd561c08d945fcafa65af9254a71cd66f17923d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -211,6 +211,35 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 					    num_joined_pipes);
 }
 
+static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
+					    struct intel_connector *connector,
+					    int bpp_x16)
+{
+	struct intel_encoder *encoder = connector->encoder;
+	struct intel_display *display = to_intel_display(encoder);
+	const struct drm_display_mode *adjusted_mode =
+					&crtc_state->hw.adjusted_mode;
+	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
+	int hblank;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
+	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
+
+	/* bit 8:0 minimum hblank symbol cylce count, i.e maximum value would be 511 */
+	hblank = min(511, hblank);
+
+	/* Software needs to adjust the BS/BE framing control from the calculated value */
+	hblank = hblank - 2;
+
+	if (intel_dp_is_uhbr(crtc_state))
+		crtc_state->min_hblank = max(hblank, 5);
+	else
+		crtc_state->min_hblank = max(hblank, 3);
+}
+
 static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      int max_bpp, int min_bpp,
@@ -284,6 +313,8 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
 							      true, dsc_slice_count, link_bpp_x16);
 
+		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
+
 		intel_dp_mst_compute_m_n(crtc_state, connector,
 					 local_bw_overhead,
 					 link_bpp_x16,
@@ -1267,6 +1298,10 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
 	}
 
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
+			       pipe_config->min_hblank);
+
 	enable_bs_jitter_was(pipe_config);
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 765e6c0528fb0b5a894395b77a5edbf0b0c80009..7bd783931199e2e5c7e15358bb4d2c904f28176a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3197,6 +3197,10 @@
 #define _TRANS_DP2_VFREQLOW_D			0x630a8
 #define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
 
+#define _DP_MIN_HBLANK_CTL_A			0x600ac
+#define _DP_MIN_HBLANK_CTL_B			0x610ac
+#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)
+
 /* SNB eDP training params */
 /* SNB A-stepping */
 #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)

---
base-commit: 048d83e7f9dae81c058d31c371634c1c317b3013
change-id: 20250103-hblank-cd7e78cbe178

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>


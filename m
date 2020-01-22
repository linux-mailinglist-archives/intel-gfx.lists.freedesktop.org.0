Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94419145707
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 14:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F65F6F516;
	Wed, 22 Jan 2020 13:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60626F515;
 Wed, 22 Jan 2020 13:46:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:45:59 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="307529273"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 05:45:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 22 Jan 2020 15:45:12 +0200
Message-Id: <257510948a786f11c1b6e8aeb9d29deb039d2adf.1579700414.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579700414.git.jani.nikula@intel.com>
References: <cover.1579700414.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/bios: fill in DSC rc_model_size
 from VBT
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Alex Deucher <alexdeucher@gmail.com>, Harry Wentland <hwentlan@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The VBT fields match the DPCD data, so use the same helper.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 70fb87e7afb6..26bcea77efc5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2427,16 +2427,11 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 			      crtc_state->dsc.slice_count);
 
 	/*
-	 * FIXME: Use VBT rc_buffer_block_size and rc_buffer_size for the
-	 * implementation specific physical rate buffer size. Currently we use
-	 * the required rate buffer model size calculated in
-	 * drm_dsc_compute_rc_parameters() according to VESA DSC Annex E.
-	 *
 	 * The VBT rc_buffer_block_size and rc_buffer_size definitions
-	 * correspond to DP 1.4 DPCD offsets 0x62 and 0x63. The DP DSC
-	 * implementation should also use the DPCD (or perhaps VBT for eDP)
-	 * provided value for the buffer size.
+	 * correspond to DP 1.4 DPCD offsets 0x62 and 0x63.
 	 */
+	vdsc_cfg->rc_model_size = drm_dsc_dp_rc_buffer_size(dsc->rc_buffer_block_size,
+							    dsc->rc_buffer_size);
 
 	/* FIXME: DSI spec says bpc + 1 for this one */
 	vdsc_cfg->line_buf_depth = VBT_DSC_LINE_BUFFER_DEPTH(dsc->line_buffer_depth);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

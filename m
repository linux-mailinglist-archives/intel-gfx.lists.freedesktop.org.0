Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D1677FBC9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E476F10E51D;
	Thu, 17 Aug 2023 16:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D8610E511
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288965; x=1723824965;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ROEx426tyJD8F9YXR2GdJG6RsEobEw5AMU8qhDjYuH4=;
 b=OmE+SlOwWa1B8/S/55TS0DbW6Ruvc9JUuFj5lC9WfBou51BTNMXF+SA2
 zIfcxFc9e/XKP6oTTPOboh3peNMRqacObMqWblTzMz4omp51x8VYJua/9
 JoBkttsTIlLl8MpFtOZctIUsI3yi8znW5lBqU17qPY8APDLCmPWXxdQxt
 gkL5tlHx8GEh9T0XNEkSPGj2tsPTZ1qDRpilq+siiRTsOQAYh7R9ucB6D
 rDqczSzHOQRLVpdr/4rGT/ZlDFZL4A6XfUhwf0NzfYHH/WTqYEsA4m1zt
 deGXhVn8yAxfj3ojjbaGZtsjjWldwV0MCEXbdtao7MYzY88R0DjPJNhdJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826601"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826601"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601351"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601351"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:44 +0300
Message-Id: <20230817161456.3857111-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/17] drm/i915/dp: Limit the output link bpp in
 DSC mode
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

Limit the output link bpp in DSC mode to the link_config_limits
link.min_bpp .. max_bpp range the same way it's done in non-DSC mode.
Atm, this doesn't make a difference, the link bpp range being
0 .. max pipe bpp, but a follow-up patch will need a way to reduce max
link bpp below its current value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  3 +++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c4016fd0dc980..b5d38765dde54 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1703,9 +1703,16 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	pipe_config->lane_count = limits->max_lane_count;
 
 	if (intel_dp_is_edp(intel_dp)) {
+		u16 dsc_max_output_bpp;
+
+		dsc_max_output_bpp =
+			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd),
+			      limits->link.max_bpp);
+
 		pipe_config->dsc.compressed_bpp =
-			min_t(u16, drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
+			min_t(u16, dsc_max_output_bpp >> 4,
 			      pipe_config->pipe_bpp);
+
 		pipe_config->dsc.slice_count =
 			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
 							true);
@@ -1761,6 +1768,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 * calculation procedure is bit different for MST case.
 		 */
 		if (compute_pipe_bpp) {
+			dsc_max_output_bpp = min_t(u16, dsc_max_output_bpp,
+						   limits->link.max_bpp);
+
 			pipe_config->dsc.compressed_bpp = min_t(u16,
 								dsc_max_output_bpp >> 4,
 								pipe_config->pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 48c247ddef53a..0dcb9a203dfe7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -230,6 +230,9 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	if (max_bpp > sink_max_bpp)
 		max_bpp = sink_max_bpp;
 
+	min_bpp = max(min_bpp, (limits->link.min_bpp + 0xf) >> 4);
+	max_bpp = min(max_bpp, limits->link.max_bpp >> 4);
+
 	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
 						     min_bpp, limits,
 						     conn_state, 2 * 3, true);
-- 
2.37.2


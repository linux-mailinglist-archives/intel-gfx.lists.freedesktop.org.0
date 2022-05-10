Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8463E521270
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA6410F10F;
	Tue, 10 May 2022 10:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922F010F10F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179384; x=1683715384;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IzDWD1sloY+QXfXsiRN4n3DF0ugYKZYv4Q5pRWPT820=;
 b=cbcEGPzFdcC02rAxL/HUaypdtYC585Gl8Eum7o2Fpnnu7XG84G3tJL/D
 77qWWX4BsG/DZL4WfOCkLeFT4D07jMCs6Tt2aaczUU7WbWamSZBGn3105
 94lk28Dz+FG8PkeZr9KABttM4u95CDLEQ32OfsRsxK1eC817rHs6uOmxK
 TU+LCv23dWG7IsAwH0Og54hFLPfTfIMJIDwjT1EtWYD8hGFBkA5abPvz0
 iyO/91HM3noYc3ChRdh46GRWFXQScIe8GG4LN5gsZP5Iwq/8VgkpjS8Wh
 i2vapiK+S8SZivRzbEHUuUbtPpoYxu2LSS/bqD1IYC4LcG5H6UlexL1uq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249236132"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="249236132"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="593435205"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 10 May 2022 03:43:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:33 +0300
Message-Id: <20220510104242.6099-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/15] drm/i915/pps: Stash away original BIOS
 programmed PPS delays
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

In order to do the panel VBT parsing after the EDID read
(needed to determine panel_type from PNPID) we need to stash
away the original BIOS programmed PPS delays so that we
can consult them again when we reinit the PPS delays after
the VBT parsing has been done.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c           | 13 ++++++++-----
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 408152f9f46a..0c13208c952d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1496,6 +1496,7 @@ struct intel_pps {
 	 */
 	bool pps_reset;
 	struct edp_power_seq pps_delays;
+	struct edp_power_seq bios_pps_delays;
 };
 
 struct intel_psr {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 25f1962dbddf..9877c43a9f6f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1165,16 +1165,19 @@ static bool pps_delays_valid(struct edp_power_seq *delays)
 		delays->t10 || delays->t11_t12;
 }
 
-static void pps_init_delays_cur(struct intel_dp *intel_dp,
-				struct edp_power_seq *cur)
+static void pps_init_delays_bios(struct intel_dp *intel_dp,
+				 struct edp_power_seq *bios)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
-	intel_pps_readout_hw_state(intel_dp, cur);
+	if (!pps_delays_valid(&intel_dp->pps.bios_pps_delays))
+		intel_pps_readout_hw_state(intel_dp, &intel_dp->pps.bios_pps_delays);
 
-	intel_pps_dump_state(intel_dp, "cur", cur);
+	*bios = intel_dp->pps.bios_pps_delays;
+
+	intel_pps_dump_state(intel_dp, "bios", bios);
 }
 
 static void pps_init_delays_vbt(struct intel_dp *intel_dp,
@@ -1242,7 +1245,7 @@ static void pps_init_delays(struct intel_dp *intel_dp)
 	if (pps_delays_valid(final))
 		return;
 
-	pps_init_delays_cur(intel_dp, &cur);
+	pps_init_delays_bios(intel_dp, &cur);
 	pps_init_delays_vbt(intel_dp, &vbt);
 	pps_init_delays_spec(intel_dp, &spec);
 
-- 
2.35.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C3E87FD9F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 13:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504A710E085;
	Tue, 19 Mar 2024 12:33:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FOAgDga+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3499B10E085
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 12:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710851622; x=1742387622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hm0TdmwAMWR0eyhmOFHoo7J1yVR75PC752lRZ/MdENk=;
 b=FOAgDga+L/GYsoXAy8m/vhmtyL8qnRPg2BfwXk2DBoOn/Dr0aEq/reaD
 PU+7NDGzEyrvlSszjmkhm4bQid8Hg8bNKZ5RmfJeyzU7AAiob/9k/ncSK
 Z40/sEGdZ6DhNnAld7i9rYCUPfHgKzuea7vcUM7ieotCVi94qKyuLgojG
 DC48422HM+DBKb99xVcOHtpnheHJKZT3AyuInfG8TVrMixE5PAFqFLxTj
 StAfQYU+ZH70v3pPHlFweAz4oag5kx8F5QhArYp0JOA39yJkL8or07oO6
 WKvLQME8ONtE4HHDiIl4KBK3sxy0fabOpVYkJJz/adhR85/8F6KgTFN9r Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5894286"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5894286"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18437964"
Received: from jlaghzal-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.53.224])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/5] drm/i915/psr: Calculate PIPE_SRCSZ_ERLY_TPT value
Date: Tue, 19 Mar 2024 14:33:23 +0200
Message-Id: <20240319123327.1661097-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319123327.1661097-1-jouni.hogander@intel.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
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

When early transport is enabled we need to write PIPE_SRCSZ_ERLY_TPT on
every flip doing selective update. This patch calculates
PIPE_SRCSZ_ERLY_TPT same way as is done for PSR2_MAN_TRK_CTL value and
stores i in intel_crtc_state->pipe_srcsz_early_tpt to be written later
during flip.

Bspec: 68927

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  2 ++
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8b9860cefaae..ba573490fd87 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1423,6 +1423,8 @@ struct intel_crtc_state {
 
 	u32 psr2_man_track_ctl;
 
+	u32 pipe_srcsz_early_tpt;
+
 	struct drm_rect psr2_su_area;
 
 	/* Variable Refresh Rate state */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 747761efa4be..cbf9495c7072 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2075,6 +2075,20 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	crtc_state->psr2_man_track_ctl = val;
 }
 
+static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
+					  bool full_update)
+{
+	int width, height;
+
+	if (!crtc_state->enable_psr2_su_region_et || full_update)
+		return 0;
+
+	width = drm_rect_width(&crtc_state->psr2_su_area);
+	height = drm_rect_height(&crtc_state->psr2_su_area);
+
+	return PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1);
+}
+
 static void clip_area_update(struct drm_rect *overlap_damage_area,
 			     struct drm_rect *damage_area,
 			     struct drm_rect *pipe_src)
@@ -2362,6 +2376,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 skip_sel_fetch_set_loop:
 	psr2_man_trk_ctl_calc(crtc_state, full_update);
+	crtc_state->pipe_srcsz_early_tpt =
+		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
 	return 0;
 }
 
-- 
2.34.1


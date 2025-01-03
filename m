Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14812A00A14
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81C910E8C2;
	Fri,  3 Jan 2025 13:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TyYgd6Zk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415A610E8CD;
 Fri,  3 Jan 2025 13:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912406; x=1767448406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wIaU5c27Z+Pqy3uurPnEYyapzBmTGTS9ZLTUxlM+9mc=;
 b=TyYgd6ZkS/jQjphEBQOgMOFr2M2pR/pdDpLgQTS7m8J+OBiwHqR2CLoK
 n83l9dy4DjpgnhQ9s43uoaA8dkaCSdSB9pjTiP7XP2VyUAOio/1081usL
 q8oJ/xIW8yNPP4hVRD10nFLD3XSKvm9gXhcfi6exdKniBY7lkpdO+m6Lu
 vE9dcYx5ORDTSj5FkXDyXEgyrH+/KFuNBk5EjZV5ehJ+G6GY/93t4LW/L
 pEsBcuVKaiYvVG/vr2CiesShNWZ/LhWzs2dEHCNFjAjkIQ18CTJ1Vo6z+
 6O6U4ut6Jv8ol+wAg8TVdK0ai7IyRQuroSPuqjt1i+WubmgLuEVZX3ci5 w==;
X-CSE-ConnectionGUID: qdH9UIjSQOW/MbtQcVGL6w==
X-CSE-MsgGUID: TzmZA2hVSHWWABDc1VedVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36040282"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36040282"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:25 -0800
X-CSE-ConnectionGUID: vQWqOZg5TgebGDkpl9pXAQ==
X-CSE-MsgGUID: PftgUudIT9+x71UwgoSbZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105851982"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 08/16] drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL
 mode for UHBR SST
Date: Fri,  3 Jan 2025 15:52:31 +0200
Message-Id: <122ebeadf4bf0870fc26b7d12abdff88f4be8799.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

128b/132b SST needs 128b/132b mode enabled in the TRANS_DDI_FUNC_CTL
register.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

v2: Use the MST path instead of SST to also set transport select (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 36aaa82f4536..6e0684545b48 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -561,7 +561,8 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
 		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		temp |= (crtc_state->fdi_lanes - 1) << 1;
-	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+		   intel_dp_is_uhbr(crtc_state)) {
 		if (intel_dp_is_uhbr(crtc_state))
 			temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
 		else
-- 
2.39.5


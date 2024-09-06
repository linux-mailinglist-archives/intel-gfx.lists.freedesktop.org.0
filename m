Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 753AA96F4CF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E701A10EA33;
	Fri,  6 Sep 2024 12:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ipQVIGHy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A4510EA48
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627404; x=1757163404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bYGRvVDz6Yf13fU0XBeOJJI6pw0NbHKrsIr4b9RK0Sw=;
 b=ipQVIGHyu991vMF5vDuD1byK8rOBIaVKjStuSvGV570wzR8rvRpcEHJX
 Kye9as68w+mbq2S0mrWaUlJaGNTTDaWskiRF0g4QccaQo/TWHmMxX5Wb5
 +tqQM03bjLJZRj0J8ttM78+o4+aZUhfj5EL+VKyASfn1AERmwLKJpKcfH
 ObF7LiOMpKxb03kqeD6P21x5YjLRI35tkoNjT4nPuebHC2oJWi7uXnRS8
 HMRsXt4mQjNvOR8g07iwHhmXtm36sXHdBNSVTYlK8tcwWroh9kCjC8MIY
 KHnOAVyDh7s0LrFdMM7ySQ8HsFvS+KkHYzlagQLToO01LzXGBdP0esuzz w==;
X-CSE-ConnectionGUID: g20e7Y3ARTG6R6NC+UcUOA==
X-CSE-MsgGUID: kDZlkrZYRByqisdO6ED6Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257412"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257412"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:44 -0700
X-CSE-ConnectionGUID: 8yEnSPHtQeiQL2VM3aTVPw==
X-CSE-MsgGUID: k09wVm30RfeVFxDMxnx6JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691084"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 09/14] drm/i915/display: Add helpers to check for ultrajoiner
 primary
Date: Fri,  6 Sep 2024 18:28:02 +0530
Message-ID: <20240906125807.3960642-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Add helpers to check if ultrajoiner is used and to check for ultrajoiner
primary.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h       |  2 ++
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1243e4b24acc..212163b1c73e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -298,6 +298,19 @@ bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state
 	return !intel_crtc_is_bigjoiner_primary(crtc_state);
 }
 
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
+{
+	return intel_joiner_num_pipes(crtc_state) == INTEL_ULTRA_JOINER_PIPES;
+}
+
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_crtc_is_ultrajoiner(crtc_state) &&
+	       (crtc->pipe == joiner_primary_pipe(crtc_state));
+}
+
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 840a98947de8..e0de2715a4a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -428,6 +428,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
+bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c213fb61ceb7..6c8ba9760f1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -489,6 +489,7 @@ struct intel_hdcp {
 enum intel_joiner_pipe_count {
 	INTEL_NONE_JOINER_PIPES = 0,
 	INTEL_BIG_JOINER_PIPES = 2,
+	INTEL_ULTRA_JOINER_PIPES = 4,
 	INTEL_INVALID_JOINER_PIPES,
 };
 
-- 
2.45.2


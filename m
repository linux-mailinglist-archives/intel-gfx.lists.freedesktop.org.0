Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5889E27C5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 17:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DEF110EA9A;
	Tue,  3 Dec 2024 16:41:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i62cMM4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29BA10EAAC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 16:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733244067; x=1764780067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kFgVf2j2M2r3ElV0Pn9wtkFlqgYvwXyUXGio5Za1gd0=;
 b=i62cMM4ol9nnY4OSR3Mehm5VF7h/PHn2B8ckGwYeb5eOjqJoFF4XjHHN
 iX6zGaAsxmL0SB4AdMukN4iIg7LQHXWKY7S5YS8NtkjceqDG3aia3sWb9
 ljnsYk6z8aOS403y9v8z9fvGfSXNOnXO3nWVNtqMvI269xEoMCmCuGzxI
 MlAoCw49ge1/lijsemoD0bDeRyAPoYIT1ZaHc8xAiPSRgaV2uYwSpGnpb
 OXrFqrqQ4/BH98/DqtYzD2Mx1ZvqpOEZNZ0UEnuTNqjEOHhQ4tZ/rhXBM
 Za+tOsCAXp9DS47tSZCXxma9AluoTa1q9kAx+b4FOaj8QpTq5bJPOa69t A==;
X-CSE-ConnectionGUID: 03b9tEOXR86dzb6HHfwkLg==
X-CSE-MsgGUID: 2Yw29HRHQH6R4GW+eKrXTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="33347504"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="33347504"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:07 -0800
X-CSE-ConnectionGUID: jCkCwy7dSq2HNpvZMCM2ug==
X-CSE-MsgGUID: C46q+ejnSvuVw+2OYwxDQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="93580391"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 08:41:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/6] drm/i915/hdmi: move declarations for
 hsw_read/write_infoframe() to the right place
Date: Tue,  3 Dec 2024 18:40:51 +0200
Message-Id: <37d23be996417ccfa2d376cae4f1d748a16887cd.1733243959.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733243959.git.jani.nikula@intel.com>
References: <cover.1733243959.git.jani.nikula@intel.com>
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

The functions are located in intel_hdmi.c, put the declarations in
intel_hdmi.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.h   | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.h | 8 --------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 466f48df8a74..8211a8e6f9f7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -62,4 +62,13 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
 				  int hdmi_max_slices, int hdmi_throughput);
 int intel_hdmi_dsc_get_slice_height(int vactive);
 
+void hsw_write_infoframe(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state,
+			 unsigned int type,
+			 const void *frame, ssize_t len);
+void hsw_read_infoframe(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state,
+			unsigned int type,
+			void *frame, ssize_t len);
+
 #endif /* __INTEL_HDMI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index e19e10492b05..47f9ae77b328 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -35,13 +35,5 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config);
 u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
 				    const struct intel_crtc_state *pipe_config);
-void hsw_write_infoframe(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state,
-			 unsigned int type,
-			 const void *frame, ssize_t len);
-void hsw_read_infoframe(struct intel_encoder *encoder,
-			const struct intel_crtc_state *crtc_state,
-			unsigned int type,
-			void *frame, ssize_t len);
 
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.39.5


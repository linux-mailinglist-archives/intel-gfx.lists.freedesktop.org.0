Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B127A2286A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 06:19:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F59610E8E1;
	Thu, 30 Jan 2025 05:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VkYHdbuu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8690010E8EE;
 Thu, 30 Jan 2025 05:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738214367; x=1769750367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mfb2TSGwnbk31NPtHgFjm0lZsxvOBAit7sSf7vc69fI=;
 b=VkYHdbuu2j4RQZOujjnYk8SvXeNc77q8i0okCeMxVTzObXvkUBZwxXX+
 NZsN8vZyjNXVRSlPFzrDFAUOPkJz+tfvd8JNLaLekyug/lML7h+4NvmsY
 4mzVwZrDHmVIDSiLQfMvBMaYOveREattIEMjicZHhRP9+VJ6F9olT9eO9
 ihWR+A9eqq86fyg94NwZr0g+KUzeXjhzUDyPwLqxvndY8/QeAfs3vPfPG
 dcs1mnC71Rt9uSOlAIW5h382i4JAT2M6ogGzSj191RddN3a2kkManuhXc
 uFpevap7jQqGGfRfcZuQJ/3fiy9j0DbAmizsMfW2GQGp7YaEQE2aoh2fN Q==;
X-CSE-ConnectionGUID: b6SWAhgcQSmwwfkTdXTLPw==
X-CSE-MsgGUID: hFSyEnwXQC6CkNExXyxuoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="50133485"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="50133485"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 21:19:26 -0800
X-CSE-ConnectionGUID: FEqOfrrdQSCITwU12HkqmA==
X-CSE-MsgGUID: C4OE49UIS3etqcfJWJq2vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="109060367"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 29 Jan 2025 21:19:24 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v6 6/6] drm/i915/display: Move as sdp params change to fastset
Date: Thu, 30 Jan 2025 10:46:09 +0530
Message-ID: <20250130051609.1796524-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
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

as_sdp param changes from vrr to cmrr should happen to fastset.
Changing as_sdp params should not trigger any modeset.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d68d652c1bc..60867b5b03ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5752,10 +5752,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(avi);
 	PIPE_CONF_CHECK_INFOFRAME(spd);
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
-	if (!fastset)
+	if (!fastset) {
 		PIPE_CONF_CHECK_INFOFRAME(drm);
+		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
+	}
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
-	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-- 
2.48.1


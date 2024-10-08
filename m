Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B746399413A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B28810E498;
	Tue,  8 Oct 2024 08:23:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9+hc+vT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54DE10E498
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375830; x=1759911830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oHniTVHgiWKFFPo/2EkQGv6HEm6tbcqnfUDw4LNXgwM=;
 b=M9+hc+vTWy+JTf3vpU5W62owm5dCZBDX0n0N6hLIqA0bCNE7VgyuJwmO
 VHCF8XBcmPiAj3cwat1EdmF3Ry9J2Az+UYEiK0B2XvI9JA9Z7Z5akvC3e
 laXKAdEoUP3CViqM4FOpHjVqRBIBvVvL6Si/DUR4+XcE9WAu62TkXoIW2
 JDO/zn5NauWeteIkzw2exDrm1xUxbe7KDN6CPiwJ3vpKBgmgDxsyexzLy
 qwp7rstJXHkSKtMSZLm80uzPcTYJzu8Uto53mSlng4zjkQPfl/HAdUrds
 zYacRgyCo4t2rhMJjhsuwdmBt0Y2WVrQDb+1mCVBokaU+QW3BqOuamynB g==;
X-CSE-ConnectionGUID: GdLHD6tyQwigZ5vYgR782A==
X-CSE-MsgGUID: hHAEbnSbS6WqtZO9k4oN7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079126"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079126"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:50 -0700
X-CSE-ConnectionGUID: vQNNI4y9Simf7R5YC/s68w==
X-CSE-MsgGUID: sFlMHYCrRJm2egev7QRktg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755762"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:47 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 3/9] drm/i915/display: update call to
 intel_dp_audio_compute_config
Date: Tue,  8 Oct 2024 11:23:21 +0300
Message-Id: <20241008082327.342020-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
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

For the complete audio compute config calculations, we would
need to have the transcoder M/N values as well. So move
intel_dp_audio_compute_config after the transcoder M/N values
are calculated in intel_link_compute_m_n().This becomes more
relevant after the follow-up patches where we will need to
assess if an audio frequency can be supported with a pipe config.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0fd9c1c51a43..dfe42f4dc2d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3131,8 +3131,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= n;
 	}
 
-	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
-
 	intel_link_compute_m_n(link_bpp_x16,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
@@ -3140,6 +3138,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 			       &pipe_config->dp_m_n);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
-- 
2.34.1


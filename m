Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088B9DA762
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE7E10EAAC;
	Wed, 27 Nov 2024 12:07:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvbRQ26c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8CB10EAB9;
 Wed, 27 Nov 2024 12:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709259; x=1764245259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sAUCfOiv7RotWjcTQIYd1tlS7zrMVOvYJYbDiBjOKF0=;
 b=mvbRQ26cskcJdS+DO0QFhC+8P4cpGVJzB5932N5T90V4enGHy3WU/IBU
 xEQXUv20mdCY4VVTnAC+KkMMP6KoMm05DNZkk/qwci1W3QraBAYUyMChJ
 qVBRu2K4sdXiLum6Dxzc4VA4wVd9zzzzJx1VCWpbb1uuf0tqYWZz0uDtN
 fesjtGUih9qDON4YcOrpLFDgbU9yly76lQTKiolLGKVr5ibeSUWdlm4mz
 FlEtc8fajYTkNy/JHC2FEmTVkKbfDzK9Iyz4polObs2fhnIrb9zXmGEE1
 IIR1ELpnmYmuvpxQctM32PA/TB88kkzgQLWOR2bvA7lx195302w+hWJJS A==;
X-CSE-ConnectionGUID: o7giVujpTd6HqfY6d+B0OA==
X-CSE-MsgGUID: PQ6eH5/4Roe00BlauKLnpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972803"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972803"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:39 -0800
X-CSE-ConnectionGUID: GXatqezvSaGHIWYjQ16qQw==
X-CSE-MsgGUID: rjSzro6sQnixnlLvyce3+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754931"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:37 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 2/6] drm/i915/display: update call to
 intel_dp_audio_compute_config
Date: Wed, 27 Nov 2024 14:07:11 +0200
Message-Id: <20241127120715.185348-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
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
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 053a9a4182e7..888bcc549ddb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3170,8 +3170,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= n;
 	}
 
-	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
-
 	intel_link_compute_m_n(link_bpp_x16,
 			       pipe_config->lane_count,
 			       adjusted_mode->crtc_clock,
@@ -3179,6 +3177,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 			       &pipe_config->dp_m_n);
 
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
-- 
2.34.1


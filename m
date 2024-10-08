Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA57299413B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A5EA10E499;
	Tue,  8 Oct 2024 08:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GdAzVFUx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69BA610E49B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375832; x=1759911832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zYFIcvLIn8z7B8oE5f0YP9swHMmG0tvX9QjxcV2RbeA=;
 b=GdAzVFUxkfNx0nhEc9YiOLrRsTZXusIpBU5PpdHKcxbo1/x24dHWy8yX
 x+XM5vb5CUEUdjb4J+FNfI8DPPpXxqXPEie3TmYFWT1zfvKBmHzSq6/ai
 sDqM8Wl2N4v+bI/N5zSKwtFmbcqjzT2bsuruQ6rqz43oUTp15bXRCuaeU
 sfROIecWysXeglUwD9xjWz1bcU8/JN5fr4ZLqoUuDBXxNcPD+ckEBWgwz
 aUk/1Ok8yncpOXbq0qEwp3wV/re4BJ3/UHOLav23JFLz0gXS2PEBZ04h5
 tVL5cJQPz5RUdnGipu9f8bZeKB2myZbezShPeqdoSJqoFRcwrmbK8C7ho g==;
X-CSE-ConnectionGUID: kWyJnFd7ShyzxwyBoTmDNg==
X-CSE-MsgGUID: FmJcjqr8RbSsD2D6dsw+Aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079134"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079134"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:52 -0700
X-CSE-ConnectionGUID: EWRO1RR0SDaIqTLxr8FWdQ==
X-CSE-MsgGUID: Ju9EsI68SX++ktAMaNmWLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755765"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:50 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 4/9] drm/i915/display: update logic to determine crtcstate has
 audio support
Date: Tue,  8 Oct 2024 11:23:22 +0300
Message-Id: <20241008082327.342020-5-vinod.govindapillai@intel.com>
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

In intel_dp_audio_compute_config() pipe_config->has_audio decision
is now based on combination of two condition checks. Split out these
condition as two separate checks to facilitate handling has_audio
decision when we introduce audio bw checks in the follow up patches.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dfe42f4dc2d1..6347258b4a49 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2999,8 +2999,9 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
 {
-	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
+	pipe_config->has_audio = intel_dp_has_audio(encoder, conn_state);
+
+	pipe_config->has_audio = pipe_config->has_audio &&
 		intel_audio_compute_config(pipe_config, conn_state);
 
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
-- 
2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B05994141
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280FA10E49E;
	Tue,  8 Oct 2024 08:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFPXpfav";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF0610E4A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375844; x=1759911844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GgZSfLTy8mt9vCOfMOTOUmVH38sAdRoELHAfpr7CgQ8=;
 b=jFPXpfavVeBTEy3CxqMj5jng4N0AaWkv7tTDw5R/27Tzixhw6JISl0yg
 gRjW9G9T5CNHp8hBDE/s9ion8d8UgkjPW7XUi7zggYy09EI/dLGkibjH6
 9csyEKRvPxmHbfXLAJrB+G1yCvzv/qrfFV+qy3YX9pYGRlQOdw+Drsjrr
 j/GFJUTs4JRVeTllfYzeSI4rcfujmOkDIZytUd4zbTqaPuhaCS0XMvXsY
 25+sPPkO4bBU+WWGk1OqSQri1lCMNomrK5C8l6F8FYrr6ckIUEmF80vuu
 PIJBdtnoBfqx1jh2mXGGeBr5OU/wdWHA8p7/ng2MJQGY9+9VsshShb6Lw g==;
X-CSE-ConnectionGUID: W65eOPKIRSuyOMHtbebUdw==
X-CSE-MsgGUID: Vd7CyduGRcSv0P21o0HnTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079144"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079144"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:24:04 -0700
X-CSE-ConnectionGUID: m5gK13dkTdSRNQbLXUJeIw==
X-CSE-MsgGUID: a/NZY0QYTmuC06HsEpTvtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755867"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:24:01 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 8/9] drm/i815/disaply: limit the audio bw check with DP2 config
Date: Tue,  8 Oct 2024 11:23:26 +0300
Message-Id: <20241008082327.342020-9-vinod.govindapillai@intel.com>
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

Limit the audio bw check with DP2 configurations only

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dde7244ccd15..8f04796f3eb8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3048,7 +3048,8 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 {
 	pipe_config->has_audio = intel_dp_has_audio(encoder, conn_state);
 
-	pipe_config->has_audio = pipe_config->has_audio &&
+	if (intel_dp_is_uhbr(pipe_config))
+		pipe_config->has_audio = pipe_config->has_audio &&
 		intel_dp_audio_compute_bw_limits(pipe_config, conn_state);
 
 	pipe_config->has_audio = pipe_config->has_audio &&
-- 
2.34.1


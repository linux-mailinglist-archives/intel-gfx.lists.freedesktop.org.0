Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A328B24229
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 09:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230BC10E4BB;
	Wed, 13 Aug 2025 07:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y/eu8Pfa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A758710E4BB;
 Wed, 13 Aug 2025 07:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755068797; x=1786604797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xyVzB0Ly/v0aAs95H67RXxR5UswIhLxoNDwyreSP0hY=;
 b=Y/eu8PfaV0yW8JxsgLgdQwrTnTBq7nQpUxFkiJcR8nTskqzuYrx/1E/6
 Pqo5GJWTvFBhsdfCaPrWNeI+IR0VfXDxgwd1lBrIZ183H9laLzQADO5Dl
 cd+d7QjlvB8Cb5FSkhon0ENgF27bRt6d4O5hLyOqhR6p4zBsCs/ORg0w4
 wiaCk2ni0IJWBVvc+Ivn234Bo8SMvoOKKuYa13GqJEpAhFPcYfihHPB2X
 UAKNR/9Q2PYOLws1joSZcbWQQnRl5Vd42QdLETAwJEqDbn/tWVX6Byv8D
 C4MGIS49Z9M2DguCWkY1jeml5FEk6GqtubGRouQ7jY6vkrtQW+1N9BwhO w==;
X-CSE-ConnectionGUID: szJA9BvlRW6OUU2jdWDqtA==
X-CSE-MsgGUID: hA8rf0MOT/6pejFSjBncnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="60975109"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="60975109"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:06:37 -0700
X-CSE-ConnectionGUID: PVBefrDFSn26DpmgFycVVA==
X-CSE-MsgGUID: f846DX6qRm270eKYpRQUtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165578508"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.181])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 00:06:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/4] drm/i915/alpm: Add own define for LFPS count
Date: Wed, 13 Aug 2025 10:06:15 +0300
Message-ID: <20250813070617.480793-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250813070617.480793-1-jouni.hogander@intel.com>
References: <20250813070617.480793-1-jouni.hogander@intel.com>
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

Add own define for LFPS count and use it for the configuration. This new
define will be used for calculating ALPM parameters as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index e48a4218c163..ae556a885c2a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -22,6 +22,8 @@
 				(SILENCE_PERIOD_MAX_TIME -	\
 				 SILENCE_PERIOD_MIN_TIME) / 2)
 
+#define LFPS_CYCLE_COUNT 10
+
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_CAP;
@@ -403,7 +405,7 @@ void intel_alpm_port_configure(struct intel_dp *intel_dp,
 			PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			PORT_ALPM_CTL_SILENCE_PERIOD(
 				intel_dp->alpm_parameters.silence_period_sym_clocks);
-		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
+		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(LFPS_CYCLE_COUNT) |
 			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
 			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
-- 
2.43.0


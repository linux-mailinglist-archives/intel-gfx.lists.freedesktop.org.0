Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547CEC78BA0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC64810E854;
	Fri, 21 Nov 2025 11:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J8OI3Ew4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0AA110E856;
 Fri, 21 Nov 2025 11:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723838; x=1795259838;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gAvKJskenPKLlaXxZvjt7PniA7mZc5eWwacfO05BIw0=;
 b=J8OI3Ew4WoE4vntXxOu+muSTmTtE6QZYLN4hr2jG3cfGUo9MfFyJ9Mj3
 g2ZdHFT27r3t5TBC6uhdm0H+XoETL5yhz8bZ9PBNdqnMl8pHjuqFRJwBu
 IL5d5pU0gNibHmvpZ0zsD4/E6Ki0/wRBeCfZyTrmtKgbvxfODr0UI3GnJ
 tWd8JS4pQ+3rbetHXQ7cjCZcUeOjgQaojHo960vyNIrCgUAuGQBtMFIZ+
 7vguJyabzLZz/3JjBox/IeDJ1YtgsePDjmDBxeA02H53HgONDYd1K+BbT
 mUugU46IacKMPZeLZY9aN2Vy3ylu7Q2nqYKcazSRB78/zCpKSd0Yjzq4+ A==;
X-CSE-ConnectionGUID: ETEE/BE3RlaQ3RsaakLsmA==
X-CSE-MsgGUID: r428vXhAQYee75t/hGPAmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845527"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845527"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:18 -0800
X-CSE-ConnectionGUID: tVY8pquaQFe6GuPsW7o8ng==
X-CSE-MsgGUID: HHT7+2T9T9+fCgtA1gKp7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801995"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:17 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Date: Fri, 21 Nov 2025 13:16:52 +0200
Message-ID: <20251121111655.164830-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251121111655.164830-1-jouni.hogander@intel.com>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
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

Currently we are leaving pr_dpcd containing Panel Replay capability DPCD
registers as it is on disconnect. Clear it as well on disconnect.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62808cd35f5f2..7195c408d93ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6050,6 +6050,7 @@ intel_dp_detect(struct drm_connector *_connector,
 	if (status == connector_status_disconnected) {
 		intel_dp_test_reset(intel_dp);
 		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
+		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
 		intel_dp->psr.sink_panel_replay_dsc_support =
-- 
2.43.0


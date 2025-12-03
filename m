Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C65C9EB63
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3A410E761;
	Wed,  3 Dec 2025 10:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UxO0A0vk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B601510E777;
 Wed,  3 Dec 2025 10:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764757918; x=1796293918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sQank2GAN1JK9FdR2lIsiwWZ1fWzLARw3tEolJNKFxM=;
 b=UxO0A0vkwiIAuJXvGaHUi+szut44eYMJuEH9GNXu3D+w1JfFKsOtFPnT
 Bs1DdmKt9i41VJ9AYGs77+u+Wrm+g0elCInGEC2VRx9KpJUQjHgHa+OVE
 4GSdZsHROjrcxOojjG1mMCC1eanaQt9tuWOyZxt8Hzupr1U3B0BQRY2R/
 GGQTYQvZUGoGts4tcjP5sD1Ofhy/8MYgM6Trh2iaycGIQd1XMsZIPYm7F
 LlLMvqymjPOpR9wJwJJBYM30+grs0s/nN6M+0abEz9u11ii6bJiQBbkOP
 3rKAcQB86xr203e+zXa2V7BHUMqRxAGa3GYdtD1N7jVU0z71sc+U2Z4WT A==;
X-CSE-ConnectionGUID: 5ZlhlVHvQ7+d6DUY6wTahw==
X-CSE-MsgGUID: KOtXXzL2RzyvxOgg7X3zaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66912124"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66912124"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:58 -0800
X-CSE-ConnectionGUID: ME//Bi+TQ9qGHgGvEtux+Q==
X-CSE-MsgGUID: Qctz1OG4SIaK7t0fmVLm9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194657403"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.208])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Date: Wed,  3 Dec 2025 12:31:31 +0200
Message-ID: <20251203103134.1054430-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251203103134.1054430-1-jouni.hogander@intel.com>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
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

v2: add FIXME

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dcceb0ae2a56d..3838835e7e7eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6048,7 +6048,15 @@ intel_dp_detect(struct drm_connector *_connector,
 
 	if (status == connector_status_disconnected) {
 		intel_dp_test_reset(intel_dp);
+		/*
+		 * FIXME: Resetting these caps here cause
+		 * state computation fail if the connector need to be
+		 * modeset after sink disconnect. Move resetting them
+		 * to where new sink is connected.
+		 */
 		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
+		memset(connector->dp.panel_replay_caps.dpcd, 0,
+		       sizeof(connector->dp.panel_replay_caps.dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
 		intel_dp->psr.sink_panel_replay_dsc_support =
-- 
2.43.0


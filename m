Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A966C9EB57
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26FD010E766;
	Wed,  3 Dec 2025 10:31:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQnUJPJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7140010E761;
 Wed,  3 Dec 2025 10:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764757910; x=1796293910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wLOLUoQdSiaoObdO1wZiQU88+Cj6CCJO9xojPMlCn7Y=;
 b=LQnUJPJMe6ArTwUtoIigB4Kg39qhdYsa3LkZO2lXDq5jzByMb+wwrl/Z
 KMMECMFEB9Wp7rWEAs64bFejrVOnDdtLALA9DFf8hxkZ14eFHKg9XlqkD
 lsW4cQ0X/nbuSb9MmMPkXM8pVsVe5AcUFNfMSlOJWs1BFienzwTQCRdOw
 /BBMNZhgIkcT9MN51thq/Cd+2VzrByXXOl/SdDOmbn+4IqxpDPDR7yLio
 u5Nn571f78IfuF2wpprZMANQ+K0o5bRPvEgVlZVWhYl83f+1Cj3uizGdH
 f/pzdbs9s7UsBtmDjpbPYdPOOHNF7/Qv7h21y4dZUNtQlhhnIJpubJ61H A==;
X-CSE-ConnectionGUID: XRctkhoSRqmhth0rX6ptXw==
X-CSE-MsgGUID: DQnFyvT1SzK5k0TE/GzZrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66912111"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="66912111"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:50 -0800
X-CSE-ConnectionGUID: pyNmbcfXSs+wfxCo4ND2IA==
X-CSE-MsgGUID: y6G9zVaHTo+nrGe1llKWug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="194657363"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.208])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:31:48 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/8] drm/i915/psr: Add panel granularity information into
 intel_connector
Date: Wed,  3 Dec 2025 12:31:27 +0200
Message-ID: <20251203103134.1054430-2-jouni.hogander@intel.com>
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

As a preparation for MST Panel Replay implementation add psr_caps and
panel_replay_caps structures into intel_connector. These are supposed to
contain all sink information related to PSR and Panel Replay.

As a first step in moving Panel Replay and PSR sink data add panel
granularity information into these newly added caps structures.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f8f7bc956214b..82f1aac22d50d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -561,6 +561,16 @@ struct intel_connector {
 			} overall_throughput;
 			int max_line_width;
 		} dsc_branch_caps;
+
+		struct {
+			u16 su_w_granularity;
+			u16 su_y_granularity;
+		} panel_replay_caps;
+
+		struct {
+			u16 su_w_granularity;
+			u16 su_y_granularity;
+		} psr_caps;
 	} dp;
 
 	struct {
-- 
2.43.0


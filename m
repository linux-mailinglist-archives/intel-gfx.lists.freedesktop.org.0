Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9573CC78B8E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA0510E13E;
	Fri, 21 Nov 2025 11:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PoGy5h4+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C7F10E854;
 Fri, 21 Nov 2025 11:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763723831; x=1795259831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rhi4mxMnb8b+CXGdymKPiq4/lukEtRmAeic81jIYH9c=;
 b=PoGy5h4+6vEVDPGV5WUqRArZJ7DNhnMfLVtFip3tlacFRMZGwQCdFQEV
 Sjy6mtv1ZjkRraF+EM+7wHB/pm1H67zrcI2eA+ewP7AoU+gtQhumeTEzR
 PTr7XOS5Uf41PgvWVy0rQwvZeoPfWgJAgJ1iIh5DQzZqHQJ8GR5xl1tAo
 m82QRi9SZ95CGOeD3wlGWhB0zOy31MFRKAHXZlmygCoDVRlXkQb9wDIHK
 exvIup7H25FWKB+2TlPOP8xUuhqXOvZchygtijCMPQByFsNXh50CKmSPh
 uyiOcCwQmDIB8kA0l81i1WYadu5ZctMVDwuLk54olBYfVNKx0zhwVLrrU g==;
X-CSE-ConnectionGUID: YXubINxzTcSUgu+zxZVqKw==
X-CSE-MsgGUID: Oa6jUmh8RQWlgXjv7Tc8DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65845516"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65845516"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:11 -0800
X-CSE-ConnectionGUID: w+b1y8MBSGeiH7az31J9Pg==
X-CSE-MsgGUID: RZCuDr4gT9WtQXZozmvnlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="196801979"
Received: from krybak-mobl1.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.246.72])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:17:10 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/8] drm/i915/psr: Add panel granularity information into
 intel_connector
Date: Fri, 21 Nov 2025 13:16:48 +0200
Message-ID: <20251121111655.164830-2-jouni.hogander@intel.com>
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

As a preparation for MST Panel Replay implementation add psr_caps and
panel_replay_caps structures into intel_connector. These are supposed to
contain all sink information related to PSR and Panel Replay.

As a first step in moving Panel Replay and PSR sink data add panel
granularity information into these newly added caps structures.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 38702a9e0f508..f39d62aa99246 100644
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


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2864DCA3491
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A0A10E91D;
	Thu,  4 Dec 2025 10:47:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KdYcBvL+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E262210E91D;
 Thu,  4 Dec 2025 10:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845279; x=1796381279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wLOLUoQdSiaoObdO1wZiQU88+Cj6CCJO9xojPMlCn7Y=;
 b=KdYcBvL+yd7C8JTbhC1mUuwuGJRKjUFvU37LIc8JVclBzZuFf2jy4ttD
 w3npWWKNtkV3iPZ7e1Gly1M7x0u8OnDd64XMwpY8xPF6Rao2+kk7+5RFl
 J/N2Nkb2gn1ztSdJsjRWIjSjz5cK3O3V48reTCQEhU4sglEHKzjNV9np1
 zGgyWAMFChNvWrQ5qeiR82XQ/d5HxoT0WXFt9LToZmBkTRyWSODABGuPT
 P4XDs+u3eovyJU8LWfBXg6dsZj4az4sR7TxOyuEZE0ossCSzwULddzIP9
 2SQohElxPkY+ZQ+PzYrB6GfOsBJDdL+UMwxUdStUKjbqOg+68v9cG24Jr w==;
X-CSE-ConnectionGUID: LF2iSEtMTDynBV2o1MmS6w==
X-CSE-MsgGUID: +e9wQRNrTkiLTDBkL3vOiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66901796"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66901796"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:47:59 -0800
X-CSE-ConnectionGUID: 8zum8YD2QyugMV5zVDRJkw==
X-CSE-MsgGUID: I0hce+lOTlSDWHZwoD3fgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194018702"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:47:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Imre Deak <imre.deak@intel.com>
Subject: [PATCH v3 1/8] drm/i915/psr: Add panel granularity information into
 intel_connector
Date: Thu,  4 Dec 2025 12:47:26 +0200
Message-ID: <20251204104733.1106145-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251204104733.1106145-1-jouni.hogander@intel.com>
References: <20251204104733.1106145-1-jouni.hogander@intel.com>
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


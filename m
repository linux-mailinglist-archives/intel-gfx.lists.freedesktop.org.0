Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A79CB1C44E
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 12:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B154A10E3CC;
	Wed,  6 Aug 2025 10:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5noZ54H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D370110E3CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 10:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754476262; x=1786012262;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ghdkzW+7tArpv/lpYayNpNMn/UJbrFKyNNKYmg+ndpI=;
 b=O5noZ54HSGaVr9d9pFCX/ExqmnqIztBZ+ul1wdL/s5trKi0jBdjIwJZ/
 tvoNTo68AUhoc9ElgrjS7IEu484hFJRbvuh2qxnlXmBrvWfQ6lcqQJg8R
 ZUPqlcHVWfKhYfES/Wk4M0jqk3qHQAdPQBDVlDncDn1AjlTU/tkRXdrx/
 GLXA2io9tOhhvlrXTR2hHn1TGnEHcn/TzkNSOhUruyzOjyDuija796/vj
 KNXeSOjMXfkY3v6XdhJQq43yhDj7IhbaHacT2m6E1T4brVG0wIwC0GEHf
 zjATqNiQcVVAI62sGzBDSKWHxlvHUeiume4rwcwPwMnOuMfBarxP09/xM g==;
X-CSE-ConnectionGUID: JQ/+YCYgSiyJ1+H5nO+IvQ==
X-CSE-MsgGUID: 62Z6nw0KQfiZ4zbGABO/VQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56926386"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56926386"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 03:31:01 -0700
X-CSE-ConnectionGUID: 41BuIuRQQgK42S6ILFzlAA==
X-CSE-MsgGUID: DnRwFaEdSw6YG8QHgswN7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="163960880"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 03:31:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/dsi: Fix overflow issue in pclk parsing
Date: Wed,  6 Aug 2025 13:27:27 +0300
Message-ID: <20250806102727.2043589-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

Parsed divider p will overflow and is considered being valid divider in
case pll_ctl == 0.

Fix this by using do while.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index b52463fdec47..f56985c3da54 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -142,10 +142,10 @@ static int vlv_dsi_pclk(struct intel_encoder *encoder,
 	pll_div &= DSI_PLL_M1_DIV_MASK;
 	pll_div = pll_div >> DSI_PLL_M1_DIV_SHIFT;
 
-	while (pll_ctl) {
+	do {
 		pll_ctl = pll_ctl >> 1;
 		p++;
-	}
+	} while (pll_ctl);
 	p--;
 
 	if (!p) {
-- 
2.43.0


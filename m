Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448E0B29EDA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF78710E41A;
	Mon, 18 Aug 2025 10:07:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGxBlehK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A2310E41A;
 Mon, 18 Aug 2025 10:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755511675; x=1787047675;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wyh+VXuCDoANSzDzCxQHwLZbO9AfbVgRNE1YIPI6kb4=;
 b=FGxBlehKqVvSxQobvkP89hK6N0tZfA7MVci2kJAE9S7q085onarvFmnx
 fduKBycD3MoUXKyHDsT5GRVtr2rt2vvdhXIAjzYoRO8VIwek8YivlASfO
 zC0ndRV1j93ESnu1WhfEnzT+pjbzMdP1VmJnrJe7OLlXtEwDgV3s19CmR
 IJewiHdmMX1gORdiKVqqXyqjwrufiDW9vLwPejRN48XkvD5MTJ7Ua2DUb
 IvwsT9QCSo1fro8JVWu1Nko7CHlu/jY8++kR5EmeEj2i+KO54RjXhcUlU
 pQSrYL2a8668Z0+/k/a3tv7zvOxpPyIUdM/ZyR+7SybD7FroH3G4jJn1y A==;
X-CSE-ConnectionGUID: XUCeJCLESVyubfqvrH6B4w==
X-CSE-MsgGUID: PmZKoARaTmaIbYu3S1Q1XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69105566"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69105566"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:55 -0700
X-CSE-ConnectionGUID: bA2Cjxv8QkGxldQnAvPBaA==
X-CSE-MsgGUID: JMy/rT80RRSmjjaoCJ1H8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171778860"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [CI 4/5] drm/i915/dram: bypass fsb/mem freq detection on dg2 and no
 display
Date: Mon, 18 Aug 2025 13:07:27 +0300
Message-ID: <7bfed06d431354f3918ea73d43a2ec8ed9426a76.1755511595.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755511595.git.jani.nikula@intel.com>
References: <cover.1755511595.git.jani.nikula@intel.com>
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

Non-display now calls the intel_fsb_freq() and intel_mem_freq()
functions, so we don't have to have the frequencies initialized for dg2
or non-display cases.

This is in preparation for unifying the pre-gen9 handling in dram info.

DG2 remains a special case as described in commit 5eb6bf0b44e7
("drm/i915/dg2: Don't read DRAM info").

v2: Rebase

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 02b8fa784525..e087e8d205f7 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -727,10 +727,13 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	struct dram_info *dram_info;
 	int ret;
 
+	if (IS_DG2(i915) || !HAS_DISPLAY(display))
+		return 0;
+
 	detect_fsb_freq(i915);
 	detect_mem_freq(i915);
 
-	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(display))
+	if (GRAPHICS_VER(i915) < 9)
 		return 0;
 
 	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
-- 
2.47.2


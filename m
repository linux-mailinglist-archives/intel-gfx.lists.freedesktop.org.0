Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061FF7B4D80
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 10:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C52B10E233;
	Mon,  2 Oct 2023 08:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA59B10E233
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 08:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696236441; x=1727772441;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oeuhAazVj8sHDsFiJ+7yYXP6Qe7ACvYZK5wjI/0c4Xg=;
 b=Xu889qsi3n7ddFHP0B0ogD0jRiuxp8d+p+l4C5KY/oNCbRkaPV9nKPcH
 iByfN1wQ8mNqk5VcTqp8c7/TcmdL0+hDOkyzJ7dX4LI3S68FHMV9eL1wm
 K/ZvLIRCvnggQsq5g1+y1XDXcC6asPhIdPqC/7VeD1mWCV8Qy3Bdu/MrY
 ylj4Oc2W99PcRkKLHUib/xendHVTySypKerWXYWWJYf1JSeH5IYxGFcJU
 W1hUUXaHErEHcElwquqe1hCw05Pueh239K6jikaJMnFeNILBAzOWn59NQ
 FIeH0Howw9Nzg+VgBVdecparit4CUthKOF02V6/pEXVHoYH3fTjEvKvxD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="446759285"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="446759285"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="727201970"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="727201970"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 01:47:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Oct 2023 11:47:02 +0300
Message-Id: <63e644f056c7745eb0e8e165c990c392a38ec85c.1696236329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696236329.git.jani.nikula@intel.com>
References: <cover.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/mocs: use to_gt() instead of
 direct &i915->gt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Have to give up the const on i915 pointer, but it's not big of a deal
considering non-const i915 gets passed all over the place.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 07269ff3be13..353f93baaca0 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -487,7 +487,7 @@ static bool has_mocs(const struct drm_i915_private *i915)
 	return !IS_DGFX(i915);
 }
 
-static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
+static unsigned int get_mocs_settings(struct drm_i915_private *i915,
 				      struct drm_i915_mocs_table *table)
 {
 	unsigned int flags;
@@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	memset(table, 0, sizeof(struct drm_i915_mocs_table));
 
 	table->unused_entries_index = I915_MOCS_PTE;
-	if (IS_GFX_GT_IP_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71))) {
+	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
 		table->size = ARRAY_SIZE(mtl_mocs_table);
 		table->table = mtl_mocs_table;
 		table->n_entries = MTL_NUM_MOCS_ENTRIES;
-- 
2.39.2


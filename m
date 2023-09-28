Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0693C7B24D7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73C410E6A7;
	Thu, 28 Sep 2023 18:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB80D10E6A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924553; x=1727460553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oeuhAazVj8sHDsFiJ+7yYXP6Qe7ACvYZK5wjI/0c4Xg=;
 b=bdcgaUW++7u1H8k2Qk/abC/8JTadPhBsxoszekqKT/bzDlom5CfCsbJG
 gmauPgZwzjE97p0Q/T8r/kK3ApljjUA6G/P0oKAxkNwjkD8/nK6D8Rktt
 vCHK6gffwxCxMXy388ynJXvKDI33U6FPRagdWzA8DqUsDkcBuShfIzADh
 enX8ansyNb7OLwLNT5FmShgKLm77ZZjAX/hBA19R/t//Z/+sd3umA3DN1
 YOE1e1SJWc/+1gE+WRph1LuahktXoIC9hi7awRDB4JIxuT3SYoRQkwFUf
 knKk/jwK4ocTPSiz01ePvDv78zJvNb8eLMSGRbMwIauC2R3wUr/8Y0Gw9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362377541"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="362377541"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726329187"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="726329187"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:46 +0300
Message-Id: <406b3f78371d1f2d703b0908ad613bf3fe723a2b.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915/mocs: use to_gt() instead of
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
Cc: jani.nikula@intel.com
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


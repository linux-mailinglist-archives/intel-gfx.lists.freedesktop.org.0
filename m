Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 987B3830557
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 13:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44AD210E660;
	Wed, 17 Jan 2024 12:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 17 Jan 2024 12:33:05 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C49E010E640
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 12:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705494786; x=1737030786;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fp2n5mxxHpouk3/AlL/ybfPKnryTg5kaYn7YlFRL2h8=;
 b=b5s67gGgV34KXAYipeuI6hhKssd2qKAKr65gaL0A+JlXZWOtTAEUbKlM
 letZ166uLtfQQNUunquCsSwKexX/7uNAtOrv6aWuR3+zHeSddNS3a23Yz
 mt07QxKRw2J/NjMxhhJdS5T+PV/YTqORtJtQIoYBKpWpTYNsFXo4onX2T
 5SQG8LaRjtFswitaTdQoRqJeEh3JacZpC4TaJt00vuzFp3CL6AAG3hn+M
 lmyv7hyCKjpgCc17hhbn9lwAPuRMikV+AwhI8j4+FiNOBDRXAUpXb0Sab
 SLe3G6QlHfBHqjUm08MLzviYuU5jXskbXojT2AXeWOUd9ebDpkIjiburD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="40665"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="40665"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:25:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="18826426"
Received: from msznigir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.230])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:25:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/opregion: remove unused lid_state
Date: Wed, 17 Jan 2024 14:25:46 +0200
Message-Id: <20240117122546.1551400-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not sure if lid_state has ever been used, but at least not for a long
time. Remove it.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 3f5a20f9153e..f242bb320610 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -266,7 +266,6 @@ struct intel_opregion {
 	void *vbt_firmware;
 	const void *vbt;
 	u32 vbt_size;
-	u32 *lid_state;
 	struct work_struct asle_work;
 	struct notifier_block acpi_notifier;
 };
@@ -958,7 +957,6 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		goto err_out;
 	}
 	opregion->header = base;
-	opregion->lid_state = base + ACPI_CLID;
 
 	drm_dbg(&dev_priv->drm, "ACPI OpRegion version %u.%u.%u\n",
 		opregion->header->over.major,
-- 
2.39.2


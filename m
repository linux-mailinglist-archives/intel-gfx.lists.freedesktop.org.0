Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 779425BAC8E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D672810EC6A;
	Fri, 16 Sep 2022 11:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C390C10EC6A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663328341; x=1694864341;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zCGB4tEAzkF9rpdJFieXR85ogBe/N/gcAKOcDb6KJU8=;
 b=T3YLk7RB24135qN9TgaZtR0E5XKC1WQq4aF4kO5QwdyTOgd8GsU154Gj
 iuMz9bY7xP2EjmIf8Bh2v5hjW7xwfcDJeRKRgFhU5TCMsY0ENz2sQHPOo
 84Q8r6MFM4wCZqB3wpv2U0TpBpRFtGlHvXSkIlTLQzKZ7ouaHTIoR5ZJa
 tMOkK3Cu+X2uDqGAp+tFPj1xGbwAwtBx/9HBJax2jWBT0kM8AshBLuTB2
 EQXxLJxX0MULzsarJPIZmKZXi8nlvqt+wvg6cM4LCqMtSW1mys5OZuWdH
 qB88b1q9VfgQ7ZcyhfshPb1n5sOlc6x5aK7HS5/oXQrReCG2t104hYd6m Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="278701735"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="278701735"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:39:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="946345908"
Received: from malisch-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.50])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:38:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 14:38:50 +0300
Message-Id: <20220916113850.3712354-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: remove ipc_enabled from
 struct drm_i915_private
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

The ipc_enabled member was supposed to be moved under the display wm
sub-struct, but due to a rebase fail only the new one was added and the
old one was left behind. Finish the job.

Fixes: 70296670f672 ("drm/i915/display: move IPC under display wm sub-struct")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9f9372931fd2..bdc81db76dbd 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -397,8 +397,6 @@ struct drm_i915_private {
 	 */
 	u8 snps_phy_failed_calibration;
 
-	bool ipc_enabled;
-
 	struct i915_pmu pmu;
 
 	struct i915_drm_clients clients;
-- 
2.34.1


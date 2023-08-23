Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE04785E18
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD11110E47C;
	Wed, 23 Aug 2023 17:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9382B10E0A9;
 Wed, 23 Aug 2023 17:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810555; x=1724346555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TjUd1KUY0Sz4P9yqYYMjV1NRI4o92mVDYefoiOhV8/A=;
 b=UaianIRvHtk2D4MkkCzIoettBjWCcKYnSbmvFnCGdVpg1l63jgnySNdZ
 IMRTp4DFSRLL3Wh70NbJgyan1qaekW1F6Xf8noRCySexPNE3LOM1l36Nn
 1OcqM2dDsU3m6i3dyTw8GXHTun/u5pJwx5PfpxWOG9XDwbQFU+YdwERVl
 B8Uzj+HT6KNOgipx3fGNfXtzOX+VDDu8jU4E2qoZ5VUIpgpfI54fAwc/+
 mYqVnVWbsy93Ip3Vb1LCyxdxMtINBK70oGd5vWURkVnIgRL80lKpCWEIf
 arWUjCrTMZ283yjB5oYef/AvYn0u9lApJ+kGaSyz6vExkc6se5lwHmIm2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147461"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147461"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204762"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204762"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:00 -0700
Message-Id: <20230823170740.1180212-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/42] drm/i915/display: Remove unused
 POWER_DOMAIN_MASK
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

That macro became unused with commit 323286c81245 ("drm/i915: Move the
power domain->well mappings to intel_display_power_map.c").

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230815201344.298573-1-gustavo.sousa@intel.com
(cherry picked from commit c0eeae21425ed8994f3ba5362c2f2faf5ed6d774)
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 41afb3d611b7..7e2059abae9a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -340,8 +340,6 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
 	mutex_unlock(&power_domains->lock);
 }
 
-#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
-
 static void __async_put_domains_mask(struct i915_power_domains *power_domains,
 				     struct intel_power_domain_mask *mask)
 {
-- 
2.40.1


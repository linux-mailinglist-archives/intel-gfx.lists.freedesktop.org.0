Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9514483A492
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 09:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EC210E3F9;
	Wed, 24 Jan 2024 08:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F264C10E3F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 08:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706086362; x=1737622362;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uhIXzyWZG2wLsJEgcM5SMfHO96ghumXm8s++xfgD4vw=;
 b=cQTcBHFptV7ZnucqFF+H0ylYtl8dO2LrUE8hvBIioHs++s3xcN53lbm6
 S2eMeTJ5y7yoaLpDEYzTYlqONtE5HlxjuyeMDYY+iQJdFToUQkBQoct0k
 krU52RFK2R3I47AYDqx6QeM5KT94GR33OO1wvtP9/BrYiNJZp11f0zgAa
 Iahbs5opzk0Uq+qX9D8Q6KQuPtWMWiJ2vhDMeeZfTxLNKoSr0yeX4vmqH
 TgQEwHgDgSMa0m3Nqnw5SPoBs7g6I++cQNy0QZPM+OrStAnT4HBXAaUJh
 c6Wmo5lhjBrSKZTsclhVeIWTuQD4PdjQKFEQybTLPotTwxgTtZcU2o8J3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="20336842"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="20336842"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 00:52:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="786354956"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="786354956"
Received: from tunterlu-mobl2.amr.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.41.232])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 00:52:40 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: limit eDP MSO pipe only for display version 20 and
 below
Date: Wed, 24 Jan 2024 10:52:29 +0200
Message-Id: <20240124085229.1896779-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

The pipes that can be used for eDP MSO are limited to pipe A (and
sometimes also pipe B) only for display version 20 and below.

Modify the function that returns the pipe mask for eDP MSO so that
these limitations only apply to version 20 and below, enabling all
pipes otherwise.

Bspec: 68923
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: James Ausmus <james.ausmus@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 922194b957be..5c99ae148213 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2336,13 +2336,18 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 	}
 }
 
-/* Splitter enable for eDP MSO is limited to certain pipes. */
+/*
+ * Splitter enable for eDP MSO is limited to certain pipes, on certain
+ * platforms.
+ */
 static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
 {
 	if (IS_ALDERLAKE_P(i915))
 		return BIT(PIPE_A) | BIT(PIPE_B);
-	else
+	else if (DISPLAY_VER(i915) <= 20)
 		return BIT(PIPE_A);
+
+	return ~0;
 }
 
 static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
-- 
2.39.2


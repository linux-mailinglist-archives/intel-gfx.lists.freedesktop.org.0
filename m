Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3088590057E
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0463310EC5E;
	Fri,  7 Jun 2024 13:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HVVGiV/e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BF110EC5F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768176; x=1749304176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+oZBJJ4UsyM9VcYOis+YllpY4eQloSoEcA3XiKqboQA=;
 b=HVVGiV/e4Hr0yDGB3ARsMGWe0VgEHJ/wO4CniobotDDT9lkIKlMxoL4N
 AzB/Dv4UcIbQsilYBBPYYcPFwv9ac8pfWv5R5zR3VUXtWPUuK8lKTkeGT
 4cgh+y9ELxxdvJL07GfQ6rL8HeP3KbhGIUrFFv+r6xDiwwNaVTTptD6Yt
 uroYNRUNGXRCtUOpAkUZ2aObClbRElM2d1ulLgizAuf8z2NMHVOmXri3b
 BHr5+V1xRs+ibzyFkaJBQ3ej2GPjuSg6AxVng1XxqZUVGL+l/XEn7r0ap
 br3w6Ua4vRaY6uXhJZgcNhz8unVl6szcRYF/9Opmk6uQYh42gYxtcDhrH Q==;
X-CSE-ConnectionGUID: GQ7DzR4nSr6N9g3NsBlyEA==
X-CSE-MsgGUID: cW/WEN+ITlCXBkXFCITapQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331641"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331641"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:36 -0700
X-CSE-ConnectionGUID: uksWmuc6TLW2v9T1/S07kA==
X-CSE-MsgGUID: LRJuS1o5SkGx+z4HFkgAtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458941"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 04/13] drm/i915/display: Skip Panel Replay on pipe comparison
 if no active planes
Date: Fri,  7 Jun 2024 16:49:08 +0300
Message-Id: <20240607134917.1327574-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

Panel Replay is not enabled if there are no active planes. Do not compare
it on pipe comparison. Otherwise we get pipe mismatch.

Fixes: ac9ef327327b ("drm/i915/psr: Panel replay has to be enabled before link training")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7370acdd6b8b..2747dd01bb0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5331,7 +5331,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	 * Panel replay has to be enabled before link training. PSR doesn't have
 	 * this requirement -> check these only if using panel replay
 	 */
-	if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
+	if (current_config->active_planes &&
+	    (current_config->has_panel_replay ||
+	     pipe_config->has_panel_replay)) {
 		PIPE_CONF_CHECK_BOOL(has_psr);
 		PIPE_CONF_CHECK_BOOL(has_sel_update);
 		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
-- 
2.34.1


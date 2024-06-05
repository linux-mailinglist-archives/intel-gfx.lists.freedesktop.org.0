Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5575B8FC8FB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603A910E3EB;
	Wed,  5 Jun 2024 10:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eiLiRtTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1A110E5F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583187; x=1749119187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ycKo+uhWdC/oOkm5ysJvhE83D0VSqgq/dw6i3KRMhU=;
 b=eiLiRtTGe4/0wSJZuE70ctheSltT+I5xTWZY+fCrGnyZjhqP3n4QsPZS
 lK/G8AQcTHhH2hTSqvaZDTfNQwM4Bs8VLtYxoSj/kKJ/fvn6F6ooWBQEa
 r9WzFegTVvqHC1gZEkOzCMnigs8RPkkQpfGcneqH0U05J41zeSuGNiBcu
 oEHvL8GXwNXVO9SbbNKPW9v2OR0y+EgfuN00cr8NxgcVR4GQX6mv8lCOI
 /2loJZ2UQniMayrtuQhYHdZA3S1z170xDEoF/S47Q8FwyOLDqvESUve81
 TtTLDbuKIA7r++DkYJNJp7yoDssTFZegPsnBOw4wfG1rtzqrvPAqJCKbr A==;
X-CSE-ConnectionGUID: pLeuCMqdSDS0QcUpt0D/7g==
X-CSE-MsgGUID: Y/VLFAEnTw+cNugiTQhGDw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136089"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136089"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:27 -0700
X-CSE-ConnectionGUID: tBbFnKNAQV6333bs5aU3uw==
X-CSE-MsgGUID: MLUXsEuPSuCuUSY+5CAtiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686091"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 04/26] drm/i915/display: Skip Panel Replay on pipe
 comparison if no active planes
Date: Wed,  5 Jun 2024 13:25:31 +0300
Message-Id: <20240605102553.187309-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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


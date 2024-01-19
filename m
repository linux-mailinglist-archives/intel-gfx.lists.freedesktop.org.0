Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 838CE83276C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2305F10E9E3;
	Fri, 19 Jan 2024 10:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848C710E9B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659078; x=1737195078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iDHgVQVMFFxgWY+VzK5Kej2c6MHf/lHLN5Q3kSJuWZg=;
 b=EUzhB4FTOFQXo/pMDNU09WCp/oATbg0+Np0bymrpB+CbL2fZywTwjil1
 apt6XTryr6+2vMODijMN1uQ8A3DtwZQoO7fyvhNLMPL1bpCqEVSaoX60w
 8cW7Fbkuqwb6fHl6prmcHaaSax6/ghNxLdiXhT70L4RqwYoiObMSK7TNl
 Jm85kxvqQAhE1+1qF+HLPD6ihshacZOMJ4y80xdgtDM0In7/aGq3KpIP5
 2VXk7xBC/5BMhWKZsYbExAJ+JGMMgb9gqxrXQld8roIvB0/fqYjDwffgz
 gRCE8To6WHIeftThyrrZoNOabF9oPWE4VwM97FNn/LwVKp6v5MJtngI8s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070876"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070876"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563391"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:17 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 17/21] drm/i915/psr: Panel replay uses SRD_STATUS to track
 it's status
Date: Fri, 19 Jan 2024 12:10:20 +0200
Message-Id: <20240119101024.1060812-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Panel replay uses SRD_STATUS to track it's status despite selective update
mode.

Bspec: 53370

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 617ffd1854dc..01785587adbb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2547,7 +2547,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.sel_update_enabled)
+		if (!intel_dp->psr.panel_replay_enabled &&
+		    intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2568,7 +2569,8 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (!intel_dp->psr.panel_replay_enabled &&
+	    intel_dp->psr.sel_update_enabled) {
 		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-- 
2.34.1


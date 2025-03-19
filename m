Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB8DA68E40
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 14:51:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEEF10E503;
	Wed, 19 Mar 2025 13:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uchfmef5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB67910E503;
 Wed, 19 Mar 2025 13:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742392315; x=1773928315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkyg0tCKgmIz9Z1RYoL/mKTgniplwGuVfJx/dAieoYE=;
 b=Uchfmef5mQmtw8GlZanYhGbraIeJLMA8ufiiTcm6xfSRM1kv1fpqclrt
 Gp5HuiT5Da7gtx+mBv1V6swOhkVNMzKAlCCqsPZX/8FtqYV12Bczg11wN
 XGb5I0eIxhaDm7rEDzbu2vPNI8ledUFA4qB/dWkrKE8c3N43JCu12yoKq
 70opC0114+K3v8Tq6OEYENw7DXE0QB1SGIYCTZGTx8IS/OYDTgTT8Y1/K
 hjGJpS9gnDQeKP5G4r7gUnelCRg8gAUVKd6KgS35wXVBf9UXDWkjEY5bc
 cq6sNA4S6er8pmzAZhscFr3mZ5yvSl9//uEoFJRdF2VBLGDDyYn9l6npl g==;
X-CSE-ConnectionGUID: m2ArJDL1T/qiMm3MS+nVtQ==
X-CSE-MsgGUID: Xv4/K0R0TUKO0yb9d4Zqow==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="53796101"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="53796101"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 06:51:55 -0700
X-CSE-ConnectionGUID: h4MMZFMsTgWprOXh5+bJTw==
X-CSE-MsgGUID: VCl/LHEAQeykVoRT7fGcnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123121441"
Received: from vpanait-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.245.246.3])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 06:51:52 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com,
 jeevan.b@intel.com
Subject: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective update is
 on in xe2lpd
Date: Wed, 19 Mar 2025 15:51:29 +0200
Message-ID: <20250319135130.122703-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250319135130.122703-1-vinod.govindapillai@intel.com>
References: <20250319135130.122703-1-vinod.govindapillai@intel.com>
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

FBC was disabled in case PSR2 selective update in display 12 to
14 as part of a wa. From xe2lpd onwards there is a logic to be
implemented to decide between FBC and selective update. Until
that logic is implemented keep FBC disabled in case selective
update is enabled.

v1: updated patch description and some explanation and todo

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b6978135e8ad..92b00da4c0ab 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1464,13 +1464,15 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 *
-	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
-	 * coexist. So if PSR2 selective fetch is supported then mark that
-	 * FBC is not supported.
-	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
+	 * TODO: Implement a logic to select between PSR2 selective fetch and
+	 * FBC based on Bspec: 68881 in xe2lpd onwards.
+	 *
+	 * As we still see some strange underruns in those platforms while
+	 * disabling PSR2, keep FBC disabled in case of selective update is on
+	 * until the selection logic is implemented.
 	 */
-	if ((IS_DISPLAY_VER(display, 12, 14) || HAS_FBC_DIRTY_RECT(display)) &&
-	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
+	if (DISPLAY_VER(display) >= 12 && crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.43.0


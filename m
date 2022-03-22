Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195C04E489B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:45:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D7810E578;
	Tue, 22 Mar 2022 21:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E1A10E5B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 21:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985514; x=1679521514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ai2PurcxsjSNWKzmGAB/IMEPLF3+i9yP9h91OH4R9us=;
 b=d5w/qkyOpTwqJ6emM/tqOPBLbdYVzBtKiMhzUIEAB1uUbGLqeVjmtobB
 G4949M5hHnL9gy9eRUq8oKHy0Ykwgr4zcQnm17R+aH5w3kRnhRmphcRKi
 6bM1RFvPvbGn8tpNs1YYmvhoH+0H7x9Q/293/bR+qW6IdD1koycxwiRrn
 TTM/y7xet0/643PW2XBk9munwzcMirPrhCGqjuYOlVKbBzO+IxPdg80jQ
 2mTI/BUGsBg+SUXU7HuzjS9bU3UBnYZGRIYWD3WI4NEJZUaGzG2L2zq5V
 J7qRebN/89WlP0EDDAeCleOUOBpnsDPpJjI/0hczaO5OeXlRONIX9ez0p w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="282796525"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="282796525"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="583449623"
Received: from idwilson-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:13 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:46:16 -0700
Message-Id: <20220322214616.160640-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220322214616.160640-1-jose.souza@intel.com>
References: <20220322214616.160640-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Remove MBUS joining
 invalid TODOs
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

skl_compute_ddb() will for a modeset in all pipes when MBUS joining
changes between states, so all pipes will be disabled, have all
MBUS related registers updated and then each pipe enabled.
So no vblank syncronization is necessary and here droping those TODOs.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index cf290bb704221..9ccf0f062862c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6066,7 +6066,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 
 		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
-			/* TODO: Implement vblank synchronized MBUS joining changes */
 			ret = intel_modeset_all_pipes(state);
 			if (ret)
 				return ret;
@@ -8195,10 +8194,6 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	if (!HAS_MBUS_JOINING(dev_priv))
 		return;
 
-	/*
-	 * TODO: Implement vblank synchronized MBUS joining changes.
-	 * Must be properly coordinated with dbuf reprogramming.
-	 */
 	if (dbuf_state->joined_mbus) {
 		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
 			MBUS_JOIN_PIPE_SELECT_NONE;
-- 
2.35.1


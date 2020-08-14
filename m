Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C08A244747
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AAD46E2EF;
	Fri, 14 Aug 2020 09:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793F66E2EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 09:46:08 +0000 (UTC)
IronPort-SDR: 7jNROBoYVcVxufeVrSXUab91grzKmK4mmvVmxZEVnpB7gw/beRt58PRCI66LqBYpnR96ZiIrh9
 hcZPahhfi8mQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="152026585"
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="152026585"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 02:46:07 -0700
IronPort-SDR: isMhC1ClflQe8RxQHLLiyJCh9fVMHFmH6IXTmZFNvQrBS8OHMgJ7/c+U4zs0BTTrHP9hBLmq9I
 Vszlvlt5tERw==
X-IronPort-AV: E=Sophos;i="5.76,311,1592895600"; d="scan'208";a="440068590"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 14 Aug 2020 02:46:06 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 08:19:43 +0530
Message-Id: <20200814024950.26830-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] Critical KlockWork Error - Fixes -
 intel_cdclk.c - Possible NullPointerDereference1
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
Cc: Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9d6cacbdb691..1cd0ab5b36d2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1926,7 +1926,11 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	enum pipe pipe = new_cdclk_state->pipe;
+	enum pipe pipe;
+
+	if (!(old_cdclk_state && new_cdclk_state))
+		return
+	(void)(pipe = new_cdclk_state->pipe);
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -1955,7 +1959,13 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	enum pipe pipe = new_cdclk_state->pipe;
+	enum pipe pipe;
+
+	if (!(old_cdclk_state && new_cdclk_state))
+		return
+	(void)(pipe = new_cdclk_state->pipe);
+
+
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2484,6 +2494,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
 
+	if (!(old_cdclk_state && new_cdclk_state))
+		return
+
 	new_cdclk_state->active_pipes =
 		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

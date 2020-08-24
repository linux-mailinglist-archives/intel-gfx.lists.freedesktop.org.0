Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A366324FBB8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 12:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C017E6E1CF;
	Mon, 24 Aug 2020 10:41:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC7D6E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 10:41:58 +0000 (UTC)
IronPort-SDR: XGYa28ggePLS52Wk7uj64Kph7yIXm95DGJgeWKVP7UTKc2z0VHo9ONy4szdrDgsZc77povx5V7
 1cY72bDIJoSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="153285908"
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="153285908"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 03:41:58 -0700
IronPort-SDR: cgFN6zQF25AFGZxYM5k7lFlJcCoHDg+BJf7Fk/u10GHv4Z/6UYURlfQ0aTnwCkuiQgd5GONdLz
 rUtn7rbxRptQ==
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="473869535"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 24 Aug 2020 03:41:57 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Mon, 24 Aug 2020 09:15:55 +0530
Message-Id: <20200824034556.26626-4-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200824034556.26626-1-nischal.varide@intel.com>
References: <20200824034556.26626-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] Fixing Possible Null Pointer Dereference.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A possible Null Pointer dereference of new_state,old_state, new_crtc_state
pointers from intel_tv.c is handled in this patch.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 777032d9697b..5600d146ae81 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1836,17 +1836,20 @@ static int intel_tv_atomic_check(struct drm_connector *connector,
 	struct drm_connector_state *old_state;
 
 	new_state = drm_atomic_get_new_connector_state(state, connector);
-	if (!new_state->crtc)
-		return 0;
-
 	old_state = drm_atomic_get_old_connector_state(state, connector);
 	new_crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
 
+	if (!(old_state && new_state && new_crtc_state))
+		return 0;
+
+	if (!new_state->crtc)
+		return 0;
+
 	if (old_state->tv.mode != new_state->tv.mode ||
-	    old_state->tv.margins.left != new_state->tv.margins.left ||
-	    old_state->tv.margins.right != new_state->tv.margins.right ||
-	    old_state->tv.margins.top != new_state->tv.margins.top ||
-	    old_state->tv.margins.bottom != new_state->tv.margins.bottom) {
+		old_state->tv.margins.left != new_state->tv.margins.left ||
+		old_state->tv.margins.right != new_state->tv.margins.right ||
+		old_state->tv.margins.top != new_state->tv.margins.top ||
+		old_state->tv.margins.bottom != new_state->tv.margins.bottom) {
 		/* Force a modeset. */
 
 		new_crtc_state->connectors_changed = true;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

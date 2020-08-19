Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D03D8249BCD
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C16589C13;
	Wed, 19 Aug 2020 11:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C09B89BA5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 11:30:51 +0000 (UTC)
IronPort-SDR: 3SbfZBZU0TMHAiYLfwssVVasQMSYSXc8hfOz6dSiz1ify9MygUE9Xk71IjjoeWLtZlqk3sKSgQ
 2erU5do6XgKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="135157583"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="135157583"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 04:30:51 -0700
IronPort-SDR: 5ONVDmahuixEeS2Fcp4kn/zshBBSZSm2eFfeJnoP04Cx/URgI79VrmnFvu8sf7IGiTtvT/FiBL
 B07RifT7nkWg==
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="472206462"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 19 Aug 2020 04:30:49 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed, 19 Aug 2020 10:04:08 +0530
Message-Id: <20200819043409.26010-4-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200819043409.26010-1-nischal.varide@intel.com>
References: <20200819043409.26010-1-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5]
 Critical-KlockWork-Fix-intel_tv.c-Possible-Null
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

This patch fixes the Critical Klock work Error and in this case a
Possible Null Pointer Dereference has been addressed with a Null check
before dereferencing

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

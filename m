Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2587476F80
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 12:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A5410E8DF;
	Thu, 16 Dec 2021 11:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1008E10E873
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 11:08:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="226746736"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="226746736"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 03:08:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="545939389"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 16 Dec 2021 03:08:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Dec 2021 13:08:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Dec 2021 13:08:22 +0200
Message-Id: <20211216110822.8461-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Remember to update FBC state even
 when not reallocating CFB
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We mustn't forget to update our FBC state even if we don't have
to reallocate the CFB. Otherwise we won't refresh our notion
of what eg. the new fence or the new override CFB stride
should be. Using the wrong CFB stride in particular can cause
underruns and could even corrupt other stuff in stolen.

Fixes: f4cfdbb02ca8 ("drm/i915/fbc: Nuke state_cache")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4774
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 987ea4c4b5d0..465dc4e97ea8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1408,8 +1408,10 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
 		if (fbc->state.plane != plane)
 			return;
 
-		if (intel_fbc_is_ok(plane_state))
+		if (intel_fbc_is_ok(plane_state)) {
+			intel_fbc_update_state(state, crtc, plane);
 			return;
+		}
 
 		__intel_fbc_disable(fbc);
 	}
-- 
2.32.0


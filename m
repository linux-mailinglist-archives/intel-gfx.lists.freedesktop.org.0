Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EFB5523DB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 20:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94F8410F0EF;
	Mon, 20 Jun 2022 18:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ABE210F0E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 18:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655749760; x=1687285760;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R22Pa8+bKDMDldfwBZqbwmRKkZbSzKMgRH0cxs9Mz1s=;
 b=LQ9TBr67FnGZKqo/LXuwiBewAMzwv1+AXUz9KZ0uj5M2sO73nR38bTeX
 ZXb+9NXQwC2Iv/qeIKt9hVeu1PJdLq+7ZciJnttCh3tf5M5PX4rCfTKf3
 ocm3TrWNjU+X+zrSuz2eh9efnHlF0TNkiYkMIzraHCcmHqP29X3Nme3wA
 HgHGOKZIrPkjWsu9Llv+RXdiSG3CL3HtmTxDX3psxtDi9VlGMyuDp2pSY
 BW/bU8CFNPkiJJV1DI/cq8mRJtn+vSO7hBhdYcnsNU/87FMpjmFD76+SR
 L0KiMOLZftzUOkg7RNXZIl/E1TCtpVQ9dtmr1MXhSxo7mzvXb+9ziE2lL Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366277346"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="366277346"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="676638815"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jun 2022 11:29:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 21:29:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 21:29:16 +0300
Message-Id: <20220620182917.10765-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/fbc: Move flip_pending assignmnt
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

Move the flip_pending assignment into __intel_fbc_post_update()
from intel_fbc_post_update(). Now mirrors the pre_update() side.

The only reason the assignment was in the higher level function
is that we used to call __intel_fbc_post_update() from elsewhere
as well. That got cleaned up in commit b39d2c620242 ("drm/i915/fbc:
Call intel_fbc_activate() directly from frontbuffer flush")

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8b807284cde1..77669e03b9f7 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1296,6 +1296,8 @@ static void __intel_fbc_post_update(struct intel_fbc *fbc)
 
 	drm_WARN_ON(&i915->drm, !mutex_is_locked(&fbc->lock));
 
+	fbc->flip_pending = false;
+
 	if (!fbc->busy_bits)
 		intel_fbc_activate(fbc);
 	else
@@ -1317,10 +1319,8 @@ void intel_fbc_post_update(struct intel_atomic_state *state,
 
 		mutex_lock(&fbc->lock);
 
-		if (fbc->state.plane == plane) {
-			fbc->flip_pending = false;
+		if (fbc->state.plane == plane)
 			__intel_fbc_post_update(fbc);
-		}
 
 		mutex_unlock(&fbc->lock);
 	}
-- 
2.35.1


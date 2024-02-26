Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC63868012
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 19:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD79F10EE23;
	Mon, 26 Feb 2024 18:52:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKsSV4JU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEA310E63E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 18:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708973548; x=1740509548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dkhNooBSbe08WkniK1xNaYqak7r0bOVstdSsUTbRs2I=;
 b=NKsSV4JUet1OfHBzWcUpDGbH/Pyo4DAUBpW8xxoBONhpDOgx2GJUJC+C
 vEkFsj5pJ4zKTg9owZ+EL5R/foJmjjNIkFEi2XCQJkOZ90CtgCAHvaqy2
 40tjTAugjFYRK3vR2SUBebDEKiYmd+dPcTJsw1kOyZfjSObzrE7qpqeN5
 ST0amuhTRYuQ4+vpGoNYkvL1NfBzVAgHPM2JWcYdWaY7CNsY2HmX7GACJ
 iUT2EJVmAxtkhLx2SIkAPIOV7E8kb7erqTUyN2dZumvHkx+ahJjAu/qF4
 dav20AttCb3Jx3h1crtY3umTtElcpTQ9s7qdXvNzDWYqubrpreUmjsXMW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3151311"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3151311"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:52:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="7121079"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 10:52:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v3 11/21] drm/i915/dp: Sync instead of try-sync commits when
 getting active pipes
Date: Mon, 26 Feb 2024 20:52:45 +0200
Message-Id: <20240226185246.1276018-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220211841.448846-12-imre.deak@intel.com>
References: <20240220211841.448846-12-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Sync instead of only try-sync non-blocking commits when getting the
active pipes through a given DP port. Atm intel_dp_get_active_pipes()
will only try to sync a given pipe and if that would block ignore the
pipe. This was supposed to avoid link retraining in case a pending
modeset would do that anyway, however that could incorrectly ignore
fastset pipes as well for instance (which don't retraing the link).
The TC port reset path needs to handle all pipes, even if a waiting for
a pending commit would block. To account for the above cases sync all
the pipes unconditionally.

This also prepares for a follow-up change enabling the DP tunnel BW
allocation mode which needs to ensure that all active pipes are synced
and returned from intel_dp_get_active_pipes().

v2:
- Add a separate function to try-sync the pipes. (Ville)
v3:
- Just sync the pipes unconditionally in intel_dp_get_active_pipes().
  (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com> (v2)
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ebf5a6a344a40..b49dc3836b29b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4980,9 +4980,10 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 		if (!crtc_state->hw.active)
 			continue;
 
-		if (conn_state->commit &&
-		    !try_wait_for_completion(&conn_state->commit->hw_done))
-			continue;
+		if (conn_state->commit)
+			drm_WARN_ON(&i915->drm,
+				    !wait_for_completion_timeout(&conn_state->commit->hw_done,
+								 msecs_to_jiffies(5000)));
 
 		*pipe_mask |= BIT(crtc->pipe);
 	}
-- 
2.39.2


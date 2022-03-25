Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D2E4E738C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C9710E5F3;
	Fri, 25 Mar 2022 12:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F04410E48C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211548; x=1679747548;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zFxN7rTLhNQpeL0IoaqZE6Vj0AcULwAeL3xLTfzC6IY=;
 b=aBtpVS8Xi6uG1Fw1UiKTrOf7a4bKTFkZ1Rwe4ApTE/3fSED4/wji6RAN
 NA0mhKg85ApgbaIIykSHbihW87yaeO+eOzKesB1jLkfsiTfnMO3piphYh
 y+Iovsj77KxXf+dwp6/BqQQevpJJ4Fbw+JTxtarkctxZrg+++rltB2lVP
 aAy6sMcjSh71BBzjPNwZeZOhnxWLv2GW4yNTZzahCYNx2W/+WseSLhUX+
 MM0FEMhw07Kj1yF5Hg6lsuZ95FsEb/zvuM8VoTux45qgr/ks6eAUkT6SE
 mN6+ltwpHA91BIJTV3/HJDTl+koHWV9zPAszOpbPZW6BoZWUOf1ErOs9p A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="257451381"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="257451381"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="553212406"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 25 Mar 2022 05:32:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:31:59 +0200
Message-Id: <20220325123205.22140-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915: Clear the dpll_hw_state when
 disabling a pipe
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

Clear the dpll_hw_state when we're about disable the pipe.
Previously it looks like we just left the old junk in there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 494a343850e7..7960f1d52eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1406,12 +1406,12 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
 		return 0;
 
-	if (!crtc_state->hw.enable)
-		return 0;
-
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
 
+	if (!crtc_state->hw.enable)
+		return 0;
+
 	return i915->dpll_funcs->crtc_compute_clock(state, crtc);
 }
 
-- 
2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BD6C1926B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6953B10E1B2;
	Wed, 29 Oct 2025 08:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QHgFiJ8C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254A910E1B2;
 Wed, 29 Oct 2025 08:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727624; x=1793263624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+S2v/qtv5+2TpMxAqjaEhIkIHpt1LgcfJDu7xgcwN58=;
 b=QHgFiJ8CZ9sYNw8wQd22MH0Zu+c2Emx26iEqKKeRRk7Vw1i2C1XJUSEl
 OHs/fI/cEsLMKIEXeq+cPsRrbmRPqyISFUBU+PPi4LZ3c3qw23Z8S6cio
 jFluACJFAtzOkTOlRdt+miLn6Nrovqd93UVWGjZ8ZRK78Irfr0GzYdxDl
 2/BHfIm3r4hyDyDO/eANdTO0qDhQtUuc4zBW614Wyyp1xO0dcICE1H7M0
 tw5K9c8Bs91DVctO2edMFO/h7jkzF7+POSxQXrL2mKgjypODcNGeDE3nw
 NRq1r8CU6jfQ/+q07AV0hJhDtGT4W1L2cE/614dzFz6Zt6/GN/klX6Gt2 A==;
X-CSE-ConnectionGUID: iAA8UdHFQPCsGxjPsqoIdQ==
X-CSE-MsgGUID: R+ZnrGoJRYymSV9no9+eaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62868935"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="62868935"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:04 -0700
X-CSE-ConnectionGUID: sGqQrrKHS5aWxz9lVypBSg==
X-CSE-MsgGUID: 53GXyFPQQAeSTxkwsXS1FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="189660402"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:02 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 3/9] drm/i915:
 s/intel_atomic_check_crtcs()/intel_atomic_check_crtcs_late()/
Date: Wed, 29 Oct 2025 10:46:41 +0200
Message-ID: <20251029084647.4165-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename the current intel_atomic_check_crtcs() to
intel_atomic_check_crtcs_late() to indicate it is indeed
done rather late during intel_atomic_check(). I'll be
introducing a similar function that will get called earlier
and I want to use the typical foo() vs. foo_late() naming
there.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2744f83bda2e..7f00ed9d3d10 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4196,8 +4196,8 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int intel_crtc_atomic_check(struct intel_atomic_state *state,
-				   struct intel_crtc *crtc)
+static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
+					struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state =
@@ -5754,7 +5754,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
-static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
+static int intel_atomic_check_crtcs_late(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state __maybe_unused *crtc_state;
@@ -5764,7 +5764,7 @@ static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		int ret;
 
-		ret = intel_crtc_atomic_check(state, crtc);
+		ret = intel_crtc_atomic_check_late(state, crtc);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
 				       "[CRTC:%d:%s] atomic driver check failed\n",
@@ -6482,7 +6482,7 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_atomic_check_crtcs(state);
+	ret = intel_atomic_check_crtcs_late(state);
 	if (ret)
 		goto fail;
 
-- 
2.49.1


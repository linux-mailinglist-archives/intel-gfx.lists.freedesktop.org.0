Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DE7C1926E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DF210E747;
	Wed, 29 Oct 2025 08:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHSVokyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EAD810E747;
 Wed, 29 Oct 2025 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727628; x=1793263628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Pxm4kODny3UZ2I7H0HZE5K8LbpiHDXybflAqsa+A1E=;
 b=dHSVokyGxdwg7CnRJSJQiQVdj7UEL9pciWlkmkR4rqGwqCe+ctwlLH/7
 J2Q6Tz0+KSCrfi4DopAF2XHWTpeH5rn/D0LZfqur+9XMdWtg2tDLzoCDo
 cq0QTZVNOrur1Kn7tM7+jYFWI8sKFUpuv622ksXZNZH12dvlF19KbykNk
 QgLuAshpOGO2uS0nOJLUPR+ft9KptU3XYqPmrMP+tdkYrXHHcXBE40Fwp
 E8A/orBBT07GhUSQ0CKFOisq7t61vaUZMmLPID+GNxLtk1ET+E4r+sFiU
 DDBbF6aWFxdiVlfAwa/GX7+Zj/ZZuUmTOnB95x7/E70VVBMgge1rhFQTe A==;
X-CSE-ConnectionGUID: Zboii9U4T6qpcHQWt4hqSA==
X-CSE-MsgGUID: 6RH8n6cDR62YaDKtF3GYhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75187198"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="75187198"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:08 -0700
X-CSE-ConnectionGUID: 3a1xzDiYT2yLveKSZQjcjw==
X-CSE-MsgGUID: qcyucfwXRqSKO5i5Nrw2Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="189905595"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:07 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 4/9] drm/i915: Introduce a new intel_atomic_check_crtcs()
Date: Wed, 29 Oct 2025 10:46:42 +0200
Message-ID: <20251029084647.4165-5-ville.syrjala@linux.intel.com>
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

Add a new intel_atomic_check_crtcs() that gets called fairly
early during intel_atomic_check() and start collecting stuff
into it from elsewhere. For now we can suck in the
intel_crtc_min_cdclk() stiff.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7f00ed9d3d10..100535f5409f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5754,6 +5754,18 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
+static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
+{
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
+		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+
+	return 0;
+}
+
 static int intel_atomic_check_crtcs_late(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -6457,8 +6469,9 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
-		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
+	ret = intel_atomic_check_crtcs(state);
+	if (ret)
+		goto fail;
 
 	ret = intel_compute_global_watermarks(state);
 	if (ret)
-- 
2.49.1


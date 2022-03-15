Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FED4D9CE5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566B510E496;
	Tue, 15 Mar 2022 14:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79DC610E496
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352955; x=1678888955;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uPbDdx1EifCgxP6sQVjxGTG0yPy5PGMsnhXutMHLo2M=;
 b=mtWJvK8mleNiakO0KrjN4Mnh3RuOW/ht3bu6mrKLdjg9bEz7CmYQTQRV
 ienWsnwU4YQNDmpj1f6kHBOKZAS2YaoPg1q+ZtRT/WeRkovH707KG/DUe
 bfXIljDgt1BFq+nR1hoMYWs9DSaowUUbBXXnuy5joU4ef+qZIjq7OdlSy
 1eTrZ5HFl9mXxeBNibcfj3eq1tscigk4n6aVjZDxk10htzRNQF1Tf8CTV
 20NRo6S8w/rq5AOUnt6ZiaNPj5UaHVW9XB3ltQAj6Yprf1+zVYJpUk+Xb
 wT7Jl43KCskuWRVpyE/SVgnGRqorgFeUMIh5JImj8OK8toZ90Ubza4DVW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281078642"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="281078642"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="690204634"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 15 Mar 2022 07:00:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:59:57 +0200
Message-Id: <20220315140001.1172-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/fbc: Skip nuke when flip is pending
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

Don't issue a nuke from frontbuffer flush while a flip is pending.
This avoids the DSPADDR/DSPSURF rmw abuse from the pre-snb nuke
from racing with the DSPADDR/DSPSURF write being performed by
the flip/plane update. The flip itself will already cause the nuke
so a double nuke is redundant.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d657b5c6757b..86a0f024ef40 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -666,6 +666,10 @@ static bool intel_fbc_is_compressing(struct intel_fbc *fbc)
 
 static void intel_fbc_nuke(struct intel_fbc *fbc)
 {
+	struct drm_i915_private *i915 = fbc->i915;
+
+	drm_WARN_ON(&i915->drm, fbc->flip_pending);
+
 	trace_intel_fbc_nuke(fbc->state.plane);
 
 	fbc->funcs->nuke(fbc);
@@ -968,6 +972,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	struct intel_fbc_state *fbc_state = &fbc->state;
 
 	WARN_ON(plane_state->no_fbc_reason);
+	WARN_ON(fbc_state->plane && fbc_state->plane != plane);
 
 	fbc_state->plane = plane;
 
@@ -1272,6 +1277,7 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
 	__intel_fbc_cleanup_cfb(fbc);
 
 	fbc->state.plane = NULL;
+	fbc->flip_pending = false;
 	fbc->busy_bits = 0;
 }
 
@@ -1366,12 +1372,12 @@ static void __intel_fbc_flush(struct intel_fbc *fbc,
 	if (origin == ORIGIN_FLIP || origin == ORIGIN_CURSOR_UPDATE)
 		goto out;
 
-	if (fbc->busy_bits)
+	if (fbc->busy_bits || fbc->flip_pending)
 		goto out;
 
 	if (fbc->active)
 		intel_fbc_nuke(fbc);
-	else if (!fbc->flip_pending)
+	else
 		__intel_fbc_post_update(fbc);
 
 out:
-- 
2.34.1


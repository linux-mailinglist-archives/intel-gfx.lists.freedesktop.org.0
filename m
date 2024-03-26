Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416F688CED1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:31:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8981D10F2BF;
	Tue, 26 Mar 2024 20:31:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgbS5hay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E1CA10F2C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711485094; x=1743021094;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CqQvkLydSRKj8y5yNvTzocHbXOHOCSEvSiN9fNEFVv0=;
 b=mgbS5hay1Iyg8CDDAOFaWUKleNY3rHdd2cLw1VtEWvmnzrXAFOPUMrjh
 n/xkF5oB58IbCCv65L2vM/L8wRLsEy+b8VU4Wz3askF1ZACfG7PBSiIEc
 LTsn5HzQq2WwMIyCLmHenoZ2z39f4RBLzE1uTWgzJpCk0D3KtT3ItYXYM
 96gJkXRIZNWADzlmEraTol0JDOoJZf8rAYuK5vQb3JmidEUyNVuHlYqug
 OvzQZ83JxrBKjAWj5mQsbuJFHOG91ZCeuP/AkVlCVxwPVNlmAB1od2RUQ
 1qvoKuaUpQFfL7HeH7i5v+yI8V6eNYkJ+4dpNaw01YOw0dTS32DkWUmgK w==;
X-CSE-ConnectionGUID: 0B83bEmfQo2P8ANTf4qMOw==
X-CSE-MsgGUID: 53CgUc8dSOWBLPy2U3QRJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6453416"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6453416"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 13:31:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785430"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="827785430"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 13:31:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 22:31:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/cdclk: Fix CDCLK programming order when pipes
 are active
Date: Tue, 26 Mar 2024 22:31:26 +0200
Message-ID: <20240326203128.10259-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
References: <20240326203128.10259-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we always reprogram CDCLK from the
intel_set_cdclk_post_plane_update() when using squahs/crawl.
The code only works correctly for the cd2x update or full
modeset cases, and it was simply never updated to deal with
squash/crawl.

If the CDCLK frequency is increasing we must reprogram it
before we do anything else that might depend on the new
higher frequency, and conversely we must not decrease
the frequency until everything that might still depend
on the old higher frequency has been dealt with.

So let us only consider the relationship of the old and
new CDCLK frequencies when determining where to do
the reprogramming, regarless of whether all pipes might
be off or not at the time.

If the CDCLK freqiency remains unchanges we may still have to
do the reprogramming to change the voltage_level. Currently
we do that from intel_set_cdclk_pre_plane_update() which
probably is the right choice most of the time. The only
counterexample is when the voltage_level needs to increase
due to a DDI port, but the CDCLK frequency is decreasing.
The current approach will not bump the voltage level up until
after the port has already been enabled, which is too late.
But we'll take care of that case separately.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 31aaa9780dfc..49e2f09a796a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2600,7 +2600,6 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	enum pipe pipe = new_cdclk_state->pipe;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2609,11 +2608,11 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_pre_notify(state);
 
-	if (pipe == INVALID_PIPE ||
-	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
+	if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual,
+				new_cdclk_state->pipe);
 	}
 }
 
@@ -2632,7 +2631,6 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
-	enum pipe pipe = new_cdclk_state->pipe;
 
 	if (!intel_cdclk_changed(&old_cdclk_state->actual,
 				 &new_cdclk_state->actual))
@@ -2641,11 +2639,11 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	if (IS_DG2(i915))
 		intel_cdclk_pcode_post_notify(state);
 
-	if (pipe != INVALID_PIPE &&
-	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
+	if (old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual,
+				new_cdclk_state->pipe);
 	}
 }
 
-- 
2.43.2


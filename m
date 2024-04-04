Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7606F899074
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC7111342E;
	Thu,  4 Apr 2024 21:34:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjE+31Tm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5CC01125D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266488; x=1743802488;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mwrAO5eaV/5uQowaXVB/i2CRYMHOLYJO2CuozB2A/J8=;
 b=PjE+31TmnqRceLsCfnQ0bbfAFDLbeb+shEdu4YCsUEjCTRCTpDzXc6ya
 e2GHt/GGgSnRe45P9exfxHs5SCVYp0LM5hp16cRHIOt17KzpPK3ALfUSL
 EhDsRnsa41G82ZZ1LXgp/QznSM/zwTfBWrHJLx71WWsYNx3vhAkCzYF85
 5VjRhvQSHHpzlCJqs9w5lB3VhY97Aec/v5YPI91EWm4AgrZ9MlpMe59d8
 rgS9nuQ54A19If84RtVPnOuKXGZYVnAzEKdG3NG2S/gOClomdkG0pLo4K
 gWtu4nZJPW01VmEaNpxe50VMXNpc4tRMSOwbD306RK3Xz9pB2NRDZelK3 w==;
X-CSE-ConnectionGUID: pbdFThzxRG+lqAuTq2u5iA==
X-CSE-MsgGUID: bsn457e7RGiuxeYlAv2NDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710790"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710790"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790602"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790602"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:34:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:34:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for bigjoiner
Date: Fri,  5 Apr 2024 00:34:25 +0300
Message-ID: <20240404213441.17637-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

With bigjoiner the master crtc is the one that will send out the
uapi event/etc. We want that to happen after all the slaves are
done, so let's try to do the commits in reverse order so that
the master comes last.

Even worse, the modeset helper will simply complete the commit
on the slave pipe immediately as it consider the crtc to be inactive
(it can't see our crtc_state->hw.active/etc.).

With regular sync updates this generally doesn't matter all that
much as the slave pipe should typically finish its work during the
same frame as the master pipe. However in case the slave pipe's commit
slips into the next frame we end up in a bit of trouble. This is most
visible with either async flips (currently disabled with bigjoiner
exactly for this reason), and DSB gamma updates. With DSB the problem
happens because the DSB itself will wait until the next start vblank
before starting to execute. So if the master pipe already finished its
commit and the DSB on the slave pipe is still waiting for the next
vblank we will assume the DSB as gotten stuck and terminate it.

Reversing the commit order should ameliarate this for the most part
as the master pipe is guaranteed to start its commit after the slave
pipe started. The one thing that can still screw us over is the fact
that we aren't necessarily going to commit the pipes in the reverse
order as the actual order is dictated by the DDB overlap avoidance.
But that can only happen while other pipes are being enabled/disabled,
and so in the normal steady state we should be safe.

The full fix will involve making the commit machinery aware of the
slave pipes and not finish their commits prematurely. But that
will involve a bit more work than this. And this commit order
reversal will still be beneficial to avoid userspace getting an
-EBUSY from the following page flip if the second pipe's commit
does stretch into the next frame.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++++---
 drivers/gpu/drm/i915/display/intel_display.h |  8 ++++++++
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a481c9218138..0086a7422e86 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6956,8 +6956,12 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 	intel_dbuf_mbus_pre_ddb_update(state);
 
 	while (update_pipes) {
-		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-						    new_crtc_state, i) {
+		/*
+		 * Commit in reverse order to make bigjoiner master
+		 * send the uapi events after slaves are done.
+		 */
+		for_each_oldnew_intel_crtc_in_state_reverse(state, crtc, old_crtc_state,
+							    new_crtc_state, i) {
 			enum pipe pipe = crtc->pipe;
 
 			if ((update_pipes & BIT(pipe)) == 0)
@@ -7036,7 +7040,11 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		intel_pre_update_crtc(state, crtc);
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	/*
+	 * Commit in reverse order to make bigjoiner master
+	 * send the uapi events after slaves are done.
+	 */
+	for_each_new_intel_crtc_in_state_reverse(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
 
 		if ((update_pipes & BIT(pipe)) == 0)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 986ec77490de..423074d6947a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -344,6 +344,14 @@ enum phy_fia {
 	     (__i)++) \
 		for_each_if(crtc)
 
+#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
+	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
+	     (__i) >= 0  && \
+	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
+	      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
+	     (__i)--) \
+		for_each_if(crtc)
+
 #define for_each_oldnew_intel_plane_in_state(__state, plane, old_plane_state, new_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
-- 
2.43.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2809871888
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61998112957;
	Tue,  5 Mar 2024 08:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uvt+RNjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C196112956
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628460; x=1741164460;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kydhrfJNQZa2cTxCFBQ+7lUW9ws/JHpzERbAIEwp+cs=;
 b=Uvt+RNjyfSGuhCNFvJi9s0l8ugjhlCbWbrDZjo70kUK/Vtk2utNNruqC
 wP7sV/0crhOap7x9S9vWXGPvKxw3IlaU5pd9KDG/X+3WtGtejYdNOS9tw
 ncDAUnTeTGezUS79TRDcRzfMFYeyxHvxOdyPSMLIuv423eKpDS5en9MOz
 raR1yW7njH30uk8tYSjKQePKSmkdfL5S44Dr+2tHxFbnBJHwLBm8QLUzT
 m9WU2WFgqWrgdegScc9pAR8EDqJTsC+tRos3QjEqhK6nnOdN4ROkiDQWx
 nH7K3+75kJxzvUCMPcqdAN5i6156FHHVEINRQkCGeyJXjSSZptf3eiYSs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7112469"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7112469"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:47:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773664"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 00:47:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 10:47:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Disable planes more atomically during modesets
Date: Tue,  5 Mar 2024 10:47:29 +0200
Message-ID: <20240305084730.19182-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
References: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
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

Follow in the footsteps of commit c610e841f19d ("drm/i915:
Do plane/etc. updates more atomically across pipes") and
do the plane disables back to back for all pipes also when
we are disabling pipes.

This should provide for a potentially more atomic user
experience, which might be especially nice when using
joiner or tiled displays.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d1c947a310a3..d1902976084e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6788,11 +6788,16 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!old_crtc_state->hw.active)
 			continue;
 
-		intel_crtc_disable_planes(state, crtc);
-
 		disable_pipes |= BIT(crtc->pipe);
 	}
 
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
+		if ((disable_pipes & BIT(crtc->pipe)) == 0)
+			continue;
+
+		intel_crtc_disable_planes(state, crtc);
+	}
+
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-- 
2.43.0


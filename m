Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EADD797247
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 14:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E42FD10E7C3;
	Thu,  7 Sep 2023 12:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846C010E24E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 12:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694089560; x=1725625560;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5DtGvKWmJ8msZu6gF3cFnJIyq7A6FDdz88vuCdhwj+Y=;
 b=ldojARLylI1eCaen6DWpB9VB7Pa2ACAQWC7tbEPRko4Tc3tOqPDGo/MT
 Kr2OeBy4hiBNCGXX/HOO+fDkWj2dup1TSapX+QaXeXZyIhA8YQ62iX+P7
 /UWysi0Fj3UABv0Mx/LiETzCNJmD4Uh28jXnjXIzyVVMWW8Sh+EEXXJGh
 +Lx50LA5XWgiAw8ore7jN9zwOZRqQxFtn82Y8ljZ1Zqfdguv/l1ybPHvL
 s16IGORRovXp2/4nuY6Iu1ahv3JKxHDTm29DtMdxnBrsPgc5noUEMZyH3
 A3M/ve0IbjYjtbSlpcAh9pkaR4goQMLWfCM+PEDq6It5BgpjtBZ44kkSP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="377252958"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="377252958"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 05:25:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="777051269"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="777051269"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 07 Sep 2023 05:25:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Sep 2023 15:25:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 15:25:40 +0300
Message-ID: <20230907122541.32261-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
References: <20230907122541.32261-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Split intel_update_crtc() into
 two parts
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

Split intel_update_crtc() into two parts such that the first
part performs all the non-vblank evasion preparatory stuff,
and the second part just does the vblank evasion stuff.

For now we just call these back to back so that there is
no funcitonal change.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 526f38b502be..7c19a0f380ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6542,8 +6542,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	intel_crtc_enable_pipe_crc(crtc);
 }
 
-static void intel_update_crtc(struct intel_atomic_state *state,
-			      struct intel_crtc *crtc)
+static void intel_pre_update_crtc(struct intel_atomic_state *state,
+				  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
@@ -6588,6 +6588,15 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_color_commit_noarm(new_crtc_state);
 
 	intel_crtc_planes_update_noarm(state, crtc);
+}
+
+static void intel_update_crtc(struct intel_atomic_state *state,
+			      struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	/* Perform vblank evasion around commit operation */
 	intel_pipe_update_start(new_crtc_state);
@@ -6701,6 +6710,7 @@ static void intel_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		intel_enable_crtc(state, crtc);
+		intel_pre_update_crtc(state, crtc);
 		intel_update_crtc(state, crtc);
 	}
 }
@@ -6753,6 +6763,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			entries[pipe] = new_crtc_state->wm.skl.ddb;
 			update_pipes &= ~BIT(pipe);
 
+			intel_pre_update_crtc(state, crtc);
 			intel_update_crtc(state, crtc);
 
 			/*
@@ -6820,6 +6831,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 		entries[pipe] = new_crtc_state->wm.skl.ddb;
 		update_pipes &= ~BIT(pipe);
 
+		intel_pre_update_crtc(state, crtc);
 		intel_update_crtc(state, crtc);
 	}
 
-- 
2.41.0


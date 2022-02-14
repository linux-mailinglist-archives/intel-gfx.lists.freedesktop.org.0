Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983404B4577
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 10:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DAB10E2B8;
	Mon, 14 Feb 2022 09:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7E710E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 09:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644830309; x=1676366309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PdAS8JSqFergMwnO+fc5lSR8kIGBRismjKTnnJSBWs0=;
 b=Gkl2QcUI0XbG3SEBRKwKQCpABfu0fB3jQW7YFaDi4wRzOa8hsP+qgwvZ
 VF+BQE1dmSJolYSdiTuSf0gi6MWxJftHb1hpOuN9oeCRapVm3kJkAYRi/
 py6P9yLZ8YmycqAGlZ6FluVLkbaDfw7UeM3fhKRJDgsNY5Ab+QUF50nMi
 Z3RqXmtM4UXUhtR4YAka++fOVgdxB9/ZeYTykeGQl3FgAbhvOZMOF7Dia
 f5zZq7b5J6ZW7HO+ZNBZRcA7j1tljqLVCjzxcS/Jdnt7uPuHwpo1sRLXU
 x5O+jNbIqhPIDfxRNDBwGe9vzhEUg3LmwGpKedmzJJZkVRq+IqCiU+oWj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="313329572"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="313329572"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 01:18:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="587118743"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 14 Feb 2022 01:18:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 11:18:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 11:18:09 +0200
Message-Id: <20220214091811.13725-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Unconfuse pre-icl vs. icl+
 intel_sagv_{pre, post}_plane_update()
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

intel_sagv_{pre,post}_plane_update() can accidentally forget
to bail out early on pre-icl and proceed down the icl+ codepath
at the end of the function. Fortunately it'll bail out before
it gets too far due to old_qgv_mask==new_qgv_mask==0 so no real
bug here. But lets make the code less confusing anyway.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index d8eb553ffad3..068870b17c43 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3806,8 +3806,9 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (DISPLAY_VER(dev_priv) < 11 && !intel_can_enable_sagv(dev_priv, new_bw_state)) {
-		intel_disable_sagv(dev_priv);
+	if (DISPLAY_VER(dev_priv) < 11) {
+		if (!intel_can_enable_sagv(dev_priv, new_bw_state))
+			intel_disable_sagv(dev_priv);
 		return;
 	}
 
@@ -3857,8 +3858,9 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 	if (!new_bw_state)
 		return;
 
-	if (DISPLAY_VER(dev_priv) < 11 && intel_can_enable_sagv(dev_priv, new_bw_state)) {
-		intel_enable_sagv(dev_priv);
+	if (DISPLAY_VER(dev_priv) < 11) {
+		if (intel_can_enable_sagv(dev_priv, new_bw_state))
+			intel_enable_sagv(dev_priv);
 		return;
 	}
 
-- 
2.34.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C3584903B
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 20:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502B610E9BB;
	Sun,  4 Feb 2024 19:59:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ku+p9MYZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15DE910EB59
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 19:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707076741; x=1738612741;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OsycmJ9Rop7DNXJLxzVXISd7MwqwsvTPYuaXFmMJEes=;
 b=ku+p9MYZttMfhF+SrQ/PRi8WZANEzCvcguo3wE/zXgf10xPbr+PP/lQ+
 7PbiXrGs23jMESWCN9VfjCqnYPxiEgZX6e2GloWvsaVprkRHvNExWVybc
 7w8HjeOyMsqVon78iKZJLZu6KV0HVSHzTNneRpL6YT7PMm7Woi6qV7eLL
 F9hXaff6M36fodf5nhKD9RxonOXZfuuSb9IQdVtCGAmf9rVYqOXh+diei
 woQfg7oi6hu4WKrwEf4DaglVdL+5zWMKwb9DTR24go+162qvH4gWmmurA
 Tg3gd9TPzhb6JpdSM/t9zQJpxYSVfGMjmrpVWb6pwEZvys/IlQVrmKJVH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="311193"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="311193"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 11:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5160736"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 04 Feb 2024 11:58:59 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 4/5] drm/i915: Add sanity checks before accessing fb buffer
 object
Date: Mon,  5 Feb 2024 01:22:06 +0530
Message-Id: <20240204195207.3616932-5-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
References: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

Now that cursor plane fb unpinning can be deferred to vblank work
check if plane state and corresponding fb pointers are still valid
before cleanup.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index a585e4aca309..a0217fef9920 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1171,12 +1171,18 @@ static void
 intel_cleanup_plane_fb(struct drm_plane *plane,
 		       struct drm_plane_state *_old_plane_state)
 {
+	struct drm_i915_private *i915 = to_i915(_old_plane_state->plane->dev);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(_old_plane_state);
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(old_plane_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(plane->dev);
-	struct drm_i915_gem_object *obj = intel_fb_obj(old_plane_state->hw.fb);
+	struct drm_i915_gem_object *obj = NULL;
+
+	if (old_plane_state && old_plane_state->hw.fb)
+		obj = intel_fb_obj(old_plane_state->hw.fb);
+	else
+		drm_err_ratelimited(&i915->drm, "Invalid plane state or fb\n");
 
 	if (!obj)
 		return;
-- 
2.25.1


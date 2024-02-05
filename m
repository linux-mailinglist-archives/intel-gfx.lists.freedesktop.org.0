Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE6584979D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 11:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1E7112497;
	Mon,  5 Feb 2024 10:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L6/x1BFt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AA1112495
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 10:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707128269; x=1738664269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qXfT3eMqSu0r3VNRLmTMmzgFh6gUP9b3602MRvXOFz4=;
 b=L6/x1BFtTb76Us2r+wz1iEuoxgacsVC7DAkzsZlHBCEqj5kXYrc5NGH+
 LR0XgplfcghzELit067XtL0nP2upsCUrHnvRy3xWojhDQsN2c0NB7nlnD
 zb8zG7vif5DvjuwZyFBzgGd1kTTwuM3OvHatHhEV9pKyFgyNqa7kWwGX/
 LzRrvw3Drp3mh+ubgNTN4kMYN79+FxWHbnUuw8a/fZgAJm6C7846f2yCI
 jU3CoV2doPh9qMHbS69sBc4LnJCYz4FtLXzVDYD7Fr0fZ3rKD/wZnlBms
 EFlNn3XaJgtxv0luR1y0/kv4q2r7BJQOivw44mdxSONa4GULF3qlPIsh0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="388917"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="388917"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 02:17:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="5299220"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa003.fm.intel.com with ESMTP; 05 Feb 2024 02:17:48 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 5/6] drm/i915: Add sanity check before accessing fb buffer
 object
Date: Mon,  5 Feb 2024 15:40:52 +0530
Message-Id: <20240205101053.3698717-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240205101053.3698717-1-chaitanya.kumar.borah@intel.com>
References: <20240205101053.3698717-1-chaitanya.kumar.borah@intel.com>
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
access the fb object only when vblank unpin worker is not scheduled.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index a585e4aca309..1c3ecfc91f00 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1176,7 +1176,10 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(old_plane_state->uapi.state);
 	struct drm_i915_private *dev_priv = to_i915(plane->dev);
-	struct drm_i915_gem_object *obj = intel_fb_obj(old_plane_state->hw.fb);
+	struct drm_i915_gem_object *obj = NULL;
+
+	if (!old_plane_state->unpin_work.vblank)
+		obj = intel_fb_obj(old_plane_state->hw.fb);
 
 	if (!obj)
 		return;
-- 
2.25.1


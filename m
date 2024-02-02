Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1956847C7D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496AD10F125;
	Fri,  2 Feb 2024 22:44:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biHf79K3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4FD810F125
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913886; x=1738449886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YUd6BO6uHR3qzrWrIQ8DoasqDo5uaCrsHneuzDl9lx0=;
 b=biHf79K3uiTAIMrJiRNYSp+kCOTbKtwtWssF/Sv6yawrz2AfzLhA6u44
 TOMbcCaX8iWq7CT92u3lMvq5DrlDdrwrO8Rr8D6LciowsqrT7/nvkBA+C
 1FUAaXFaAh8v6LDO46Wig44b5LFm/HminmyGN/vl0qrsNOSYyS5aWqkwX
 goUHbj6zheazB/7+MfcukkXYMvRyXJaqAZ0Oem2HXWP3Rvs8S6RRaJ5C4
 32SyLuAK0OCNLAKxQqRTihm8yiAOzZMobbcjtw26+8dKlSVmi0EM0RHNJ
 pbbL7LQjCQqn4/+8Yh5Z07f97owtZRZFbRZoJbJoKUp7k8sifjvLwaEJH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153833"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153833"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332078"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332078"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Uma Shankar <uma.shankar@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 16/16] drm/i915: Annotate more of the BIOS fb takeover
 failure paths
Date: Sat,  3 Feb 2024 00:43:40 +0200
Message-ID: <20240202224340.30647-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

Annotate a few more of the failure paths on the initial
BIOS fb takeover to avoid having to guess why things
aren't working the way we expect.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index b43b8cf4680c..ada1792df5b3 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -167,14 +167,19 @@ initial_plane_vma(struct drm_i915_private *i915,
 	 */
 	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
 	    mem == i915->mm.stolen_region &&
-	    size * 2 > i915->dsm.usable_size)
+	    size * 2 > i915->dsm.usable_size) {
+		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
 		return NULL;
+	}
 
 	obj = i915_gem_object_create_region_at(mem, phys_base, size,
 					       I915_BO_ALLOC_USER |
 					       I915_BO_PREALLOC);
-	if (IS_ERR(obj))
+	if (IS_ERR(obj)) {
+		drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
+			    mem->region.name);
 		return NULL;
+	}
 
 	/*
 	 * Mark it WT ahead of time to avoid changing the
-- 
2.43.0


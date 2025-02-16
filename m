Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B234BA37764
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2025 21:09:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C3C10E0C6;
	Sun, 16 Feb 2025 20:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEt8L7m5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB33410E0C6;
 Sun, 16 Feb 2025 20:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739736563; x=1771272563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RD0iKSgIdq602orCVygcFIHCD8qp92aqVogXFTidfW4=;
 b=oEt8L7m54TuVC3FDfGLUmzfi320VGQ6h5Dnhu20Z5AsRaYZE0jARwmV3
 puki11ADb9OActjOwRQB5fMxlRLn0qzpCoqmJh5WcaTTk7QvcfTW4hc9r
 2KuIlgcEMHCMRx2E98Zt69NjZFxetgJhKkKmdrZT037PsZNjI0x73q8XO
 trtG2vGcnCuIF4EKjIkrXv8eF0RvviHBqNhQ8NsDOsFBHUcjFEvOpPE+x
 8t6r0YNS9OP4t23NnonUIs5lETCGtD/MZYc215j99ZoQ20uVFICy7mFin
 ayzXH6/jEnnbFH8g+unAa0tYmyBRKhT2/ZtoTkk0vQk41rRS2yXAc/SSh w==;
X-CSE-ConnectionGUID: 4KgeFK58QWikCjzo9z/Dew==
X-CSE-MsgGUID: /RGWEibqTj294Bvkal39Lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="40345740"
X-IronPort-AV: E=Sophos;i="6.13,291,1732608000"; d="scan'208";a="40345740"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 12:09:22 -0800
X-CSE-ConnectionGUID: 6oSVTQKxSdOalW1pfVMJqw==
X-CSE-MsgGUID: auD90lzZRQKkjkpI8EQVDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,291,1732608000"; d="scan'208";a="114137450"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.148])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 12:09:19 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v1 8/8] drm/i915/fbc: handle dirty rect coords for the first
 frame
Date: Sun, 16 Feb 2025 22:09:06 +0200
Message-ID: <20250216200906.266532-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250213132559.136815-1-vinod.govindapillai@intel.com>
References: <20250213132559.136815-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

During enablig FBC, for the very first frame, the prepare dirty
rect routine wouldnt have executed as at that time the plane
reference in the fbc_state would be NULL. So this could make
driver program some invalid entries as the damage area. Though
fbc hw ignores the dirty rect values programmed for the first
frame after enabling FBC, driver must ensure that valid dirty
rect coords are programmed. So ensure that for the first frame
prepare dirty rect is called at the time enabling FBC.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6222eea4b1ce..21fd57c7f163 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1230,6 +1230,8 @@ intel_fbc_dirty_rect_update(struct intel_dsb *dsb, struct intel_fbc *fbc)
 
 	lockdep_assert_held(&fbc->lock);
 
+	drm_WARN_ON(display->drm, fbc_dirty_rect->y2 == 0);
+
 	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
 			   FBC_DIRTY_RECT_START_LINE(fbc_dirty_rect->y1) |
 			   FBC_DIRTY_RECT_END_LINE(fbc_dirty_rect->y2 - 1));
@@ -1313,6 +1315,13 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
 	WARN_ON(plane_state->no_fbc_reason);
 	WARN_ON(fbc_state->plane && fbc_state->plane != plane);
 
+	/*
+	 * For the very first frame while enabling FBC, ensure that we have a
+	 * valid dirty rect coords.
+	 */
+	if (HAS_FBC_DIRTY_RECT(display) && !fbc_state->plane)
+		__intel_fbc_prepare_dirty_rect(plane_state);
+
 	fbc_state->plane = plane;
 
 	/* FBC1 compression interval: arbitrary choice of 1 second */
-- 
2.43.0


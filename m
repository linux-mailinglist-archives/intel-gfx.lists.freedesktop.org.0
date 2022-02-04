Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EE14A9AD4
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 15:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C9410E8DA;
	Fri,  4 Feb 2022 14:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 994FA10E8DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 14:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643984311; x=1675520311;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8Ad/3AB6OPVlBzmrW7fAn50/SVwuuksXg5xN8otT4jU=;
 b=jRT6AFXAeAaJyaiSJrwxwO1GOp+wrmSlJQtTvnzrxvJW4sw5+E2ikoGT
 PoWK9e08OOpJa7x6c9izkUzZlQR/RcONLA4h8oKZN/iFPp6IUYu0Z5lza
 f84O7AC346nKTNOdQDe237Da8F64gjItdVxofuoHkyWU9OhHXsUd87SnJ
 pg5/OIBkcni6tQ4I133KlWrnfZ4wISmX1T8u7iGG2GDA+4Ginhz01Enn2
 OmoZjFGTunPLFMCDJdO71/64/SDfmora7S0VjIgyl6s7wdQqyBDjxjLzE
 1lW6Nc+zBViGYaBGA4+7StKCcyna1x3ocbL1iBOnLncEd5+Rp03kHez4Z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228345231"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="228345231"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 06:18:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="539179394"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 04 Feb 2022 06:18:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Feb 2022 16:18:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Feb 2022 16:18:17 +0200
Message-Id: <20220204141818.1900-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
References: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Populate pipe dbuf slices more
 accurately during readout
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

During readout we cannot assume the planes are actually using the
slices they are supposed to use. The BIOS may have misprogrammed
things and put the planes onto the wrong dbuf slices. So let's
do the readout more carefully to make sure we really know which
dbuf slices are actually in use by the pipe at the time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2eb70ec38f6e..79d61a2935ea 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6663,6 +6663,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		enum pipe pipe = crtc->pipe;
 		unsigned int mbus_offset;
 		enum plane_id plane_id;
+		u8 slices;
 
 		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
 		crtc_state->wm.skl.raw = crtc_state->wm.skl.optimal;
@@ -6682,20 +6683,22 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_uv);
 		}
 
-		dbuf_state->slices[pipe] =
-			skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
-						dbuf_state->joined_mbus);
-
 		dbuf_state->weight[pipe] = intel_crtc_ddb_weight(crtc_state);
 
 		/*
 		 * Used for checking overlaps, so we need absolute
 		 * offsets instead of MBUS relative offsets.
 		 */
-		mbus_offset = mbus_ddb_offset(dev_priv, dbuf_state->slices[pipe]);
+		slices = skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
+						 dbuf_state->joined_mbus);
+		mbus_offset = mbus_ddb_offset(dev_priv, slices);
 		crtc_state->wm.skl.ddb.start = mbus_offset + dbuf_state->ddb[pipe].start;
 		crtc_state->wm.skl.ddb.end = mbus_offset + dbuf_state->ddb[pipe].end;
 
+		/* The slices actually used by the planes on the pipe */
+		dbuf_state->slices[pipe] =
+			skl_ddb_dbuf_slice_mask(dev_priv, &crtc_state->wm.skl.ddb);
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x, mbus joined: %s\n",
 			    crtc->base.base.id, crtc->base.name,
-- 
2.34.1


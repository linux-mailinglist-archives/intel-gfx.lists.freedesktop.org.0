Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EE18D60D9
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D6810E485;
	Fri, 31 May 2024 11:41:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ixxGWLlT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB1E10E466
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717155672; x=1748691672;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sGOpZNFS31O9DoC/lEyCtPkQ2ZF+zOEDWbq/m02pg7c=;
 b=ixxGWLlTCaRI+g7W9OrmisgJ0x6urY4ZTRkgtDWKdppT9tBWAqD+oEOk
 N5Ixnng1/xebSx1sBVhB6W2qtC51B73gP2B3FSKIwUwa6QSlRmphN66a5
 jSITnJb8hSbBfaKWCEffflPJqGeibEf0OhSqpBkbxvM5Xj2152Xw1bLA9
 wKC9PmNlxAShr9mMKi/ggPo5DVLtM6XMoq/zN0LseP7qILrD6XaSKSaj6
 HeycpNvKzPka8rXEux1nN+0dkPgGFPAYSl3LrFM7zWfeI6Iqr5Zp9qlYf
 rZAU18l2Z8F82MCqNgGja98yjd6wSuvxlcvFuB4N6W/xNkk+QJmXLbZId w==;
X-CSE-ConnectionGUID: whdzjjK/SXuSTTJJebuqlw==
X-CSE-MsgGUID: HCjVjxPeRdSifKl/BcHGpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13863909"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13863909"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:41:12 -0700
X-CSE-ConnectionGUID: JwbIIQLHQgGvaLOdYnYmLA==
X-CSE-MsgGUID: 0ED2Uw7RQA6ncbF9FTvWCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36132738"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:41:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:41:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/dsb: Pass DSB engine ID to intel_dsb_prepare()
Date: Fri, 31 May 2024 14:41:00 +0300
Message-ID: <20240531114101.19994-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
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

Allow the caller of intel_dsb_prepare() to determine which DSB
engine (out of the three possible per pipe) to use. This will
let us utilize multiple DSB engines during the same commit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c   | 6 ++++--
 drivers/gpu/drm/i915/display/intel_dsb.h   | 1 +
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 9173caba3f0f..98553e8a5149 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1914,7 +1914,7 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb = intel_dsb_prepare(crtc_state, 1024);
+	crtc_state->dsb = intel_dsb_prepare(crtc_state, INTEL_DSB_0, 1024);
 	if (!crtc_state->dsb)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index f3bfa5b1672c..014d695c13c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -436,6 +436,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 /**
  * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
  * @crtc_state: the CRTC state
+ * @dsb_id: the DSB engine to use
  * @max_cmds: number of commands we need to fit into command buffer
  *
  * This function prepare the command buffer which is used to store dsb
@@ -445,6 +446,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
  * DSB context, NULL on failure
  */
 struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
+				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -474,7 +476,7 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
-	dsb->id = INTEL_DSB_0;
+	dsb->id = dsb_id;
 	dsb->crtc = crtc;
 	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
@@ -489,7 +491,7 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 out:
 	drm_info_once(&i915->drm,
 		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO for display HW programming\n",
-		      crtc->base.base.id, crtc->base.name, INTEL_DSB_0);
+		      crtc->base.base.id, crtc->base.name, dsb_id);
 
 	return NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 5d7561ea65fa..36fdb130af6e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -23,6 +23,7 @@ enum intel_dsb_id {
 };
 
 struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
+				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
-- 
2.44.1


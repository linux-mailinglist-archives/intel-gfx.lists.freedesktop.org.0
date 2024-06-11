Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29378903D79
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894AB10E652;
	Tue, 11 Jun 2024 13:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y62RxvMm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9145510E64A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112843; x=1749648843;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XCRzM9XPpqi0lw9ACnGdfupNQo+PvjfNToJ58QR2UhU=;
 b=Y62RxvMmxZFJRErZpT0Fi5ch4OK5GzWPxobVKMWh0ErstGSpjlb3NFig
 0HYSo4ncAkCLbBOSo5wDA2rEi7WzdVOPe7SsIM7uEGI6IxMoHWvBU7DhC
 SzSJj0764lC5kzpHBoc1vve01HdZ4ZpuYRzkk83j6bGDEH/GeA/px1Tki
 QSlurXttK4gHpDvcnTKbb0+NoProxKZEMxv0NVfBJZZwL0d2FRPnrOVPz
 PVN6+d7H+G3Nsx3ZLepT+WUNGDlyGUznNbEq6WMjvZ9v1/L6gsVUCr361
 kMXmSv2KXU83Tg3NFMuon1Rd3Bo6cHTZ1ATaTiIEZbxQim0pZtDqgPWUA Q==;
X-CSE-ConnectionGUID: jpPM6A5xQXe7/mP0FD2CfA==
X-CSE-MsgGUID: qPbPik/4Q6G75Lf5q0K78Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018239"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018239"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:03 -0700
X-CSE-ConnectionGUID: rZ/KEXbaQcOjPIexUBg2+w==
X-CSE-MsgGUID: 3Gf+6Un9SuGoXyYZKEXdIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421413"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:34:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:34:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/11] drm/i915/dsb: Plumb the whole atomic state into
 intel_dsb_prepare()
Date: Tue, 11 Jun 2024 16:33:39 +0300
Message-ID: <20240611133344.30673-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

The DSB code will need to examine both the old and new crtc
states. Pass in the whole atomic state so we can dig up
what we need.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c   | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_dsb.h   |  4 +++-
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8cfd497c2a92..7ac50aacec73 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1919,7 +1919,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb = intel_dsb_prepare(crtc_state, INTEL_DSB_0, 1024);
+	crtc_state->dsb = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
 	if (!crtc_state->dsb)
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 5180b9722046..8ae7bcfa8403 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -434,7 +434,8 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 
 /**
  * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
- * @crtc_state: the CRTC state
+ * @state: the atomic state
+ * @crtc: the CRTC
  * @dsb_id: the DSB engine to use
  * @max_cmds: number of commands we need to fit into command buffer
  *
@@ -444,12 +445,14 @@ void intel_dsb_wait(struct intel_dsb *dsb)
  * Returns:
  * DSB context, NULL on failure
  */
-struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
+struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
 				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	intel_wakeref_t wakeref;
 	struct intel_dsb *dsb;
 	unsigned int size;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 36fdb130af6e..bb42749f2ea4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -10,6 +10,7 @@
 
 #include "i915_reg_defs.h"
 
+struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dsb;
@@ -22,7 +23,8 @@ enum intel_dsb_id {
 	I915_MAX_DSBS,
 };
 
-struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
+struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc,
 				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
-- 
2.44.2


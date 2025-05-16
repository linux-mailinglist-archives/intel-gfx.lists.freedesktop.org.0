Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7A9AB9B28
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE73F10EA6E;
	Fri, 16 May 2025 11:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UfCnuEPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3762510EA6C;
 Fri, 16 May 2025 11:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395281; x=1778931281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0hvO8m2rtzWEm4/glGR1kQhQuOUWeP7AKNoSm5ShzLE=;
 b=UfCnuEPDhucZAc9PqRClfpFCQdgo8A0q2IVXc2loM5ZRoDTumvxyoD1P
 JHfVhkFdNFDdK2RTsLHj4X0qkqX7EupBwoRu6azitCIPJQH9CqMfjnIf1
 D1FXd/hgdK8GM/Hzlu0XAOAGD5ODEi48g9bqsk1ror/uheoQmWvAJk6oA
 FPZouirOl6HPZsazMNfRBTZQlPBRE/NWjZ3npSw6aCA5eAC8ZcSeQAV3t
 8Ejec9fjpQV9V8ZqKo7vDnb6SjEnoKuB7Ox6hZ6NdT8QjuH8z0xyiLqA1
 iD5u2/qqyBwnR0I9pd/JEYFMCeHZtRI5grTnh5VW48Qr/mAZbq7HqDdBG A==;
X-CSE-ConnectionGUID: Tyuw0cwtSNiPlNBDwEY//g==
X-CSE-MsgGUID: 5QXvH++aSJGTVQbAsmqfig==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349830"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349830"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:40 -0700
X-CSE-ConnectionGUID: QPcjol8VR9Ov8fY2exJVXA==
X-CSE-MsgGUID: IsgTtGs+T4q17s2iq8yLzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779599"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915/flipq: Implement Wa_18034343758
Date: Fri, 16 May 2025 14:34:05 +0300
Message-ID: <20250516113408.11689-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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

Implement the driver side of Wa_18034343758, which is supposed to
prevent the DSB and DMC from accessing registers in parallel, and
thus potentially corrupting the registers due to a hardware issue
(which should be fixed in PTL-B0).

The w/a sequence goes as follows:
DMC starts the DSB
 |                 \
DMC halts itself    | DSB waits a while for DMC to have time to halt
 .                  | DSB executes normally
 .		    | DSB unhalts the DMC at the very end
 .             	   /
DMC resumes execution

TODO: figure out if PTL-B0+ firmware still implements the w/a

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_flipq.c   | 10 ++++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3a42536247d8..76ed34adc08d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7232,6 +7232,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	}
 
 	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit);
+
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7262,6 +7266,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (DISPLAY_VER(display) >= 9)
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
+
+		/* Wa_18034343758 */
+		if (new_crtc_state->use_flipq)
+			intel_flipq_unhalt_dmc(new_crtc_state->dsb_commit, crtc);
 	}
 
 	if (new_crtc_state->dsb_color_vblank)
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 8677929b7ece..c4b4ecd44eb2 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -304,3 +304,13 @@ void intel_flipq_add(struct intel_crtc *crtc,
 
 	intel_flipq_sw_dmc_wake(crtc);
 }
+
+void intel_flipq_wait_dmc_halt(struct intel_dsb *dsb)
+{
+	intel_dsb_wait_usec(dsb, 2);
+}
+
+void intel_flipq_unhalt_dmc(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	intel_dsb_reg_write(dsb, PIPEDMC_CTL(crtc->pipe), 0);
+}
-- 
2.49.0


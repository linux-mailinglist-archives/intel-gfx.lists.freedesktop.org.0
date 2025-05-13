Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0239AB4ADB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 476E410E504;
	Tue, 13 May 2025 05:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1rzFj2M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A2A510E51E;
 Tue, 13 May 2025 05:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113546; x=1778649546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OTXoWYiVdgT6Yqzz5GW0hy72BC42vhNrDml26uZ/OeQ=;
 b=a1rzFj2MLWAcMxGweusPI6mHbi41hhf9kdBo1Hjp6cIi6lADkJopCSa1
 jT1nN9tN00C/3XmKBggy6dhAFoTMfuE88kE/sYbKp9rVNhZRk8JrJCgba
 PGOhEIdIwGGO+wfHyie4zI7NiGEH8pcjuDlfDbTfhNhO/igYGqnU1ieYU
 kELJXnyR/ge4EQUHh2lqxBCaP5AwGPB8rLO5h12Nj5iL/vuqKZh9pbiH1
 Uyi8nR0bB8DSiI7muz6fErTbAPJmPVJ2Kb03zC7QuJ7Kv8i0baCv8TXBT
 Gs0Bf2jDK3d1+BNLkk8wb7m4wBtnSGL5Ra/DFD0Y55pA8qrxLr2xmXc0o A==;
X-CSE-ConnectionGUID: dsoD7PugR5SY/eP7GV+Y+w==
X-CSE-MsgGUID: zIHKVsSgSV6sqa976M2Saw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597805"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597805"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:06 -0700
X-CSE-ConnectionGUID: HQnyhHtDSryyJIBa/CUZZw==
X-CSE-MsgGUID: Umtjsyw4QmaKNrPz3GtrVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506166"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 09/17] drm/i915/vrr: Write DC balance params to hw registers
Date: Tue, 13 May 2025 10:46:52 +0530
Message-ID: <20250513051700.507389-10-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Write DC Balance parameters to hw registers.

--v2:
- Update commit header.
- Separate crtc_state params from this patch. (Ankit)

--v3:
- Write registers at compute config.
- Update condition for write.

--v4:
- Address issue with state checker.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index dcaae7631b0a..b2348ae10a1a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -627,6 +627,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 		}
 	}
+
+	if (crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
+			       crtc_state->vrr.dc_balance.vmin - 1);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
+			       crtc_state->vrr.dc_balance.vmax - 1);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
+			       crtc_state->vrr.dc_balance.max_increase);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
+			       crtc_state->vrr.dc_balance.max_decrease);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
+			       crtc_state->vrr.dc_balance.guardband);
+		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
+			       crtc_state->vrr.dc_balance.slope);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
+			       crtc_state->vrr.dc_balance.vblank_target);
+	}
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -637,6 +654,15 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
 		return;
 
+	if (old_crtc_state->vrr.dc_balance.enable) {
+		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
+		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
+	}
+
 	if (!intel_vrr_always_use_vrr_tg(display)) {
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
 			       trans_vrr_ctl(old_crtc_state));
-- 
2.48.1


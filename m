Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE722C2A145
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D42310E36F;
	Mon,  3 Nov 2025 05:30:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3mXAJ5n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1415910E370;
 Mon,  3 Nov 2025 05:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147837; x=1793683837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MUac6MAyVhiqcyo9UjFSKmZa0Jxckc57p+K2Z2iYqqs=;
 b=a3mXAJ5nYR75cCDCZ2PwdQRDFl4QCbXIvjmPJhyXiuJFkylCuhzDRaQu
 5RAYm0RCYEMsAJK5vfyzGgKZZp5oBHSHW0TtFJIRx9uEYdlMoR+/GQMnN
 N5P6FEqi/afG3ERVEhfy7gAqL4l1IzoDt6MH6PGwdmahHZxtRy/Cphg4B
 GAL54YRZmVFb8Rt1f++IbpqoD2rygvxqmEznyAaXmvAT2eNg/jL+PnM51
 v+M2mEmPl0aNHZe2IF7PlDoy+qmmi+j6rZZQYPzC4G17SYvkfVLn6n93B
 83OBn9gXzhHWlIKayBVctu4qgrAcCbJzEOI1kcyC/XSPw6VPYqAxMpFSn w==;
X-CSE-ConnectionGUID: Q1EW1rIzRBalMhmg94YpOg==
X-CSE-MsgGUID: UMjYyt7OTGa05GWRATanaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143875"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143875"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:37 -0800
X-CSE-ConnectionGUID: mRJh+eZqRA+NZrtnpuTHSQ==
X-CSE-MsgGUID: Xounk41KS5Wn0qdbupxpUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925380"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:36 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 17/22] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Mon,  3 Nov 2025 10:59:57 +0530
Message-ID: <20251103053002.3002695-18-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to control DC balance enable/disable bit via DSB.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  4 ++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0bddb20a7c86..3e3f4438d739 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1748,3 +1748,20 @@ u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc)
 
 	return dmc ? dmc->dmc_info[dmc_id].start_mmioaddr : 0;
 }
+
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe),
+			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
+}
+
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe), 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 40e9dcb033cc..132d6cfc8e8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -10,11 +10,13 @@
 
 enum pipe;
 enum pipedmc_event_id;
+struct intel_crtc;
 struct drm_printer;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dmc_snapshot;
+struct intel_dsb;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
@@ -39,6 +41,8 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
 void assert_main_dmc_loaded(struct intel_display *display);
 
 void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
 u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc);
 void intel_pipedmc_enable_event(struct intel_crtc *crtc,
-- 
2.48.1


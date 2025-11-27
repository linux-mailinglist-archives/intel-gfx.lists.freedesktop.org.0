Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70879C8D7CC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 10:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB6F10E7D7;
	Thu, 27 Nov 2025 09:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DG14GEl4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8E610E7D8;
 Thu, 27 Nov 2025 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764234985; x=1795770985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YSaQwlv8n7SG1E4Jlyp/WkeA1YrT1puVjsbqu6QRfsM=;
 b=DG14GEl4y7dJHvulB/fzRjNtvzBFrz/5rTIp0y0ScgKckX1xIgxBrwh0
 qoqL0AOh1KEvl7LwlLEL5eZlyq/PyQ48o5hYxDq8JrONFQuvukAcnPDom
 gqf8bRsNkJdfk3lf6V65ZzxCoqoOKTvp/+shHD9FHXhgXAtp11VVWQ1U6
 8DqfZBl1lm4WJAulDzZVey80MlNA9a2arNwi+ZrokQibnHeMm/Jo5f1qP
 RrZhsGIAtgPNTatj8stAZ/BSxNzTBIDCy7FCfBLtFtS5qBhktZ9GYS1Dk
 f6pEAi86AICApmFCexeGpaop684y4eMItU//ok83lld7z6YjDnb7cYm98 Q==;
X-CSE-ConnectionGUID: kKFn87ryQHOErnS4tETrxQ==
X-CSE-MsgGUID: 5wafJjNQQqqWVzzszMWmHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="77642372"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="77642372"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 01:16:24 -0800
X-CSE-ConnectionGUID: h5kgpEx/R/SfJ5noPcS+Ww==
X-CSE-MsgGUID: ceGgFSm/Q/CxmLQXP24Etw==
X-ExtLoop1: 1
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 27 Nov 2025 01:16:24 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v9 16/17] drm/i915/display: Add function to configure event
 for dc balance
Date: Thu, 27 Nov 2025 14:46:13 +0530
Message-ID: <20251127091614.648791-17-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
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

Configure pipe dmc event for dc balance enable/disable.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c |  2 ++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 147adcd18320..8de8e69780fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -859,6 +859,21 @@ static void dmc_configure_event(struct intel_display *display,
 		      dmc_id, num_handlers, event_id);
 }
 
+/*
+ * intel_dmc_configure_dc_balance_event() - Configure event
+ * for dc balance enable/disable
+ * @display: display instance
+ * @pipe: pipe which register use to block
+ * @enable: enable/disable
+ */
+void intel_dmc_configure_dc_balance_event(struct intel_display *display,
+					  enum pipe pipe, bool enable)
+{
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
+}
+
 /**
  * intel_dmc_block_pkgc() - block PKG C-state
  * @display: display instance
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 9c6a42fc820e..3d8a9a593319 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
 void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
 			  bool block);
+void intel_dmc_configure_dc_balance_event(struct intel_display *display,
+					  enum pipe pipe, bool enable);
 void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
 							    enum pipe pipe, bool enable);
 void intel_dmc_fini(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 286ffa35107b..ec2e5a94a99e 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -809,6 +809,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.dc_balance.slope);
 	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
 		       crtc_state->vrr.dc_balance.vblank_target);
+	intel_dmc_configure_dc_balance_event(display, pipe, true);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 		       ADAPTIVE_SYNC_COUNTER_EN);
 	intel_pipedmc_dcb_enable(NULL, crtc);
@@ -826,6 +827,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
 		return;
 
 	intel_pipedmc_dcb_disable(NULL, crtc);
+	intel_dmc_configure_dc_balance_event(display, pipe, false);
 	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
 	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
-- 
2.48.1


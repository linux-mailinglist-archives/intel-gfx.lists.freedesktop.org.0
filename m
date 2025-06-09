Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D2AD20A0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8568210E3DB;
	Mon,  9 Jun 2025 14:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVbBoFj2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E537B10E3DD;
 Mon,  9 Jun 2025 14:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478290; x=1781014290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2kgjYzU48FX9j9TN7tyopxO0HI0npfeNO+17GxLr9Wk=;
 b=AVbBoFj2/T0iZkgmFJZR/rGjWCLLwUmYgzCVasGUkxARuVfBE0nCoISG
 tT3xmCV5S19BdruHymznZ8n8g2dd2IB9pp6C4EuY1OGIDAx21Vg4J9UOX
 a8yW+v0GTdVXmeFDtnWHBYMc79h7f4gSunP9nzWrZRjkSmrdNx7lXuYsI
 oMBVdLee4f7QII4atwklYUhOoe0OWPdjOWqlch+X3CxTDRgwpxiuLGjnU
 uKWm7FrDRthTQ1PNYkiaZks+HKy5wnd+7aD6R04IjueK9hFJMuZzoa4G0
 7lNxt2+Bah0gqqZPPzVMnD/lvStfF2vSzLgow51tmbdspvzkObT0YIQaX w==;
X-CSE-ConnectionGUID: A5P9XoxdR3ynfa2HCYlbTw==
X-CSE-MsgGUID: tTC2G93EQvWbN3/lc6KA5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360805"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360805"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:30 -0700
X-CSE-ConnectionGUID: XaVjDsXyQFelrBfSdSP+lw==
X-CSE-MsgGUID: Uh7A+oYAQciE/g6Gz/YKww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765773"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 12/21] drm/i915/dmc: Reload PIPEDMC MMIO registers for pipe
 C/D on PTL+
Date: Mon,  9 Jun 2025 17:10:37 +0300
Message-ID: <20250609141046.6244-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

On PTL+ the PIPEDMC on pipes C/D loses its MMIO state occasionally.
Not quite sure what the specific sequence is that makes this happen
(eg. simply disbling PG2 doesn't seem to be enough to trigger this
on its own).

Reload the MMIO registers for the affected pipes when enabling the
PIPEDMC. So far I've not see this happen on PTL pipe A/B, nor on any
pipe on any other platform.

The DMC program RAM doesn't appear to need manual restoring, though
Windows appears to be doing exactly that on most platforms (for some
of the pipes). None of this is properly documented anywhere it seems.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5a43298cd0e7..247e88265cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -578,6 +578,17 @@ static u32 dmc_mmiodata(struct intel_display *display,
 		return dmc->dmc_info[dmc_id].mmiodata[i];
 }
 
+static void intel_dmc_load_mmio(struct intel_display *display, enum intel_dmc_id dmc_id)
+{
+	struct intel_dmc *dmc = display_to_dmc(display);
+	int i;
+
+	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
+		intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
+			       dmc_mmiodata(display, dmc, dmc_id, i));
+	}
+}
+
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -585,6 +596,10 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
 		return;
 
+	/* on PTL pipe C/D PIPEDMC MMIO state is lost sometimes */
+	if (DISPLAY_VER(display) >= 30 && pipe >= PIPE_C)
+		intel_dmc_load_mmio(display, dmc_id);
+
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
 		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
@@ -710,12 +725,8 @@ void intel_dmc_load_program(struct intel_display *display)
 
 	preempt_enable();
 
-	for_each_dmc_id(dmc_id) {
-		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
-			intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
-				       dmc_mmiodata(display, dmc, dmc_id, i));
-		}
-	}
+	for_each_dmc_id(dmc_id)
+		intel_dmc_load_mmio(display, dmc_id);
 
 	power_domains->dc_state = 0;
 
-- 
2.49.0


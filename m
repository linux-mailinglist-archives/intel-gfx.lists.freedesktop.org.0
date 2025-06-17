Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC2FADD9AC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 097DF10E792;
	Tue, 17 Jun 2025 17:08:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LGgZvVxl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0386310E778;
 Tue, 17 Jun 2025 17:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180106; x=1781716106;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TubjpyM1J1U67kZ6/TPe8DXOgILisTDTJfk/IhBPwIU=;
 b=LGgZvVxlX3tpzr0vzPe3uVRw4foFxjdNJCTGeDY0bX5anQjArpZhPPLE
 Tpb5cUt2QSHV+a3k9aeCYtAIYHYP96WLOCE3023SQWZ3SnhbEj6wl9Odf
 Caf41Pv02sS0OWzJnuXnXGGoBX8Mg0XnJgNq8aveVbgLTwXVHkLIaogxP
 xmSO4b0Iud4Xhjrj7UmGsW8EQlIPog3oMO9bpAjOoyEqSQit2u0Iks+fA
 BICC6oykPp3gyfTHC79UkFNrnEfK/XE1dasIEKZQ+8b6pBB+CruI+tMS6
 xKFSL3igs47fq2Fq/5gmNEnI9TIL0mJveIB9WLmgrW9sG/s8fQiYEk6Ce A==;
X-CSE-ConnectionGUID: 7ZZcZC4vT4+3a/Aiq5UFOw==
X-CSE-MsgGUID: OEuI7Z10Sc6n1Mk/i5VtWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644630"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644630"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:24 -0700
X-CSE-ConnectionGUID: RGaSg8oESf6r74YO2oNEXQ==
X-CSE-MsgGUID: 5F3EkvwYRRShITNZyZhhlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138708"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 6/9] drm/i915/dmc: Reload pipe DMC MMIO registers for pipe
 C/D on various platforms
Date: Tue, 17 Jun 2025 20:07:56 +0300
Message-ID: <20250617170759.19552-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
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

On ADL/MTL pipe DMC MMIO state evidently lives in PG0. The main DMC
saves/restores it for pipes A/B, but for pipes C/D we have to do it
in the driver.

On PTL the situation is mostly the same, except the main DMC firmware
doesn't seem to have the PG0 save/restore code anymore, and instead the
hardware (or maybe Punit?) seems to take care of this job now. Pipes
C/D still need a manual restore by the driver.

On LNL I've been unable to lose any pipe DMC state, despite the main
DMC firmware still implementing the PG0 save/restore for pipes A/B.
Not sure what's going on here.

On DG2 I've also not been able to lose the pipe DMC state. DG2
doesn't support DC6, so that might explain part of it. But even
DC9 doesn't make a difference here. Perhaps PG0 is just always on
for DG2?

BMG I've not tested at all. The main DMC firmware does appaer to
implement the PG0 pipe A/B save/restore logic.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 67 +++++++++++++++++++++---
 1 file changed, 61 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fd99c4645260..dd15d35fbae8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -575,8 +575,18 @@ static u32 dmc_mmiodata(struct intel_display *display,
 		return dmc->dmc_info[dmc_id].mmiodata[i];
 }
 
-static void dmc_load_program(struct intel_display *display,
-			     enum intel_dmc_id dmc_id)
+static void dmc_load_mmio(struct intel_display *display, enum intel_dmc_id dmc_id)
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
+static void dmc_load_program(struct intel_display *display, enum intel_dmc_id dmc_id)
 {
 	struct intel_dmc *dmc = display_to_dmc(display);
 	int i;
@@ -593,10 +603,7 @@ static void dmc_load_program(struct intel_display *display,
 
 	preempt_enable();
 
-	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
-		intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
-			       dmc_mmiodata(display, dmc, dmc_id, i));
-	}
+	dmc_load_mmio(display, dmc_id);
 }
 
 static bool need_pipedmc_load_program(struct intel_display *display)
@@ -605,6 +612,52 @@ static bool need_pipedmc_load_program(struct intel_display *display)
 	return DISPLAY_VER(display) == 12;
 }
 
+static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe)
+{
+	/*
+	 * PTL:
+	 * - pipe A/B DMC doesn't need save/restore
+	 * - pipe C/D DMC is in PG0, needs manual save/restore
+	 */
+	if (DISPLAY_VER(display) == 30)
+		return pipe >= PIPE_C;
+
+	/*
+	 * FIXME LNL unclear, main DMC firmware has the pipe DMC A/B PG0
+	 * save/restore, but so far unable to see the loss of pipe DMC state
+	 * in action. Are we just failing to turn off PG0 due to some other
+	 * SoC level stuff?
+	 */
+	if (DISPLAY_VER(display) == 20)
+		return false;
+
+	/*
+	 * FIXME BMG untested, main DMC firmware has the
+	 * pipe DMC A/B PG0 save/restore...
+	 */
+	if (display->platform.battlemage)
+		return false;
+
+	/*
+	 * DG2:
+	 * - Pipe DMCs presumably in PG0?
+	 * - No DC6, and even DC9 doesn't seem to result
+	 *   in loss of DMC state for whatever reason
+	 */
+	if (display->platform.dg2)
+		return false;
+
+	/*
+	 * ADL/MTL:
+	 * - pipe A/B DMC is in PG0, saved/restored by the main DMC
+	 * - pipe C/D DMC is in PG0, needs manual save/restore
+	 */
+	if (IS_DISPLAY_VER(display, 13, 14))
+		return pipe >= PIPE_C;
+
+	return false;
+}
+
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -614,6 +667,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 
 	if (need_pipedmc_load_program(display))
 		dmc_load_program(display, dmc_id);
+	else if (need_pipedmc_load_mmio(display, pipe))
+		dmc_load_mmio(display, dmc_id);
 
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
-- 
2.49.0


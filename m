Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC23AD5B22
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6432A10E6AA;
	Wed, 11 Jun 2025 15:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B9jytIuH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8795410E6AA;
 Wed, 11 Jun 2025 15:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657186; x=1781193186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2K9J+MCGmrB+m3O7GK2gYu7kHq6Db7EY/q0xMfQVWv0=;
 b=B9jytIuHRHvMY0iDPX+BLABgQEVEuoipFbsjkgXZMt1Z/qppjayC1zKf
 DJpMRbNI8y1OnTZsaBxbpKtj3PXewPfh9ZUlO4UjNqrulh10MaFH67EJK
 5o5ixgR+20dPKbQpBBI2mXZt0Ng6G14GCGTQpE7/udAKdvZkohcQIj8Eh
 7awAoPD9ce9EQPCwlYRNwKETFim7qcDKEUlPsOh7g5ToKQDeLhnQQirKM
 37+yv3vTvuJmxqLgym/22siMljAZ6XJdAKvRVNW+VXqQpzXrYCBrKo8fe
 Zgm5liePTa5jlwhr8q0a089Yh78bO9IGO6rSoRzBhNwSRb/yQKAOfxt6S Q==;
X-CSE-ConnectionGUID: fgVogVMzR2yPAyEPZmHrbw==
X-CSE-MsgGUID: IEWW9E4AQsKkc1OpReH/5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419133"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419133"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:53:05 -0700
X-CSE-ConnectionGUID: tN5u80vBQW2jCEg7rvn/1w==
X-CSE-MsgGUID: Ps3etlwiRTapbfsKguiYpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507417"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:53:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:53:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 6/9] drm/i915/dmc: Reload pipe DMC MMIO registers for pipe C/D
 on PTL+
Date: Wed, 11 Jun 2025 18:52:38 +0300
Message-ID: <20250611155241.24191-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

On PTL+ the pipe DMC on pipes C/D loses its MMIO state occasionally.
Not quite sure what the specific sequence is that makes this happen
(eg. simply disabling PG2 doesn't seem to be enough to trigger this
on its own).

Reload the MMIO registers for the affected pipes when enabling the
pipe DMC. So far I've not see this happen on PTL pipe A/B, nor on any
pipe on any other post-TGL platform.

The DMC program RAM doesn't appear to need manual restoring, though
Windows appears to be doing exactly that on most platforms (for some
of the pipes). None of this is properly documented anywhere it seems.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 32 +++++++++++++++++++-----
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fd99c4645260..76b88c9bea02 100644
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
@@ -605,6 +612,17 @@ static bool need_pipedmc_load_program(struct intel_display *display)
 	return DISPLAY_VER(display) == 12;
 }
 
+static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe)
+{
+	/*
+	 * On PTL pipe C/D PIPEDMC MMIO state is lost sometimes
+	 *
+	 * TODO figure out when exactly this happens, so far it
+	 * didn't seem 100% deterministic...
+	 */
+	return DISPLAY_VER(display) >= 30 && pipe >= PIPE_C;
+}
+
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -614,6 +632,8 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 
 	if (need_pipedmc_load_program(display))
 		dmc_load_program(display, dmc_id);
+	else if (need_pipedmc_load_mmio(display, pipe))
+		dmc_load_mmio(display, dmc_id);
 
 	if (DISPLAY_VER(display) >= 20) {
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
-- 
2.49.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137DB740E3F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 12:08:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4472E882AF;
	Wed, 28 Jun 2023 10:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F3D10E032
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 10:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687946908; x=1719482908;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NAtl6+FAzI8IVhcI3tkKliikhm0CN9HZRRdr7t/bWLM=;
 b=U0hX+bHvV72+5yPYp+feiewIKop3ADlUjxFLlcCU0h970zR92GECik2b
 nQpKUTeAya1iwnB+V+EeIb6deKYY2Ad3aCMOgNUbLAxnPrvX3wmFcZNUu
 FTq/PeNoAOnluxMc+YVom6Oh1XdQNyR42Qa8Bxt2NoQg42D0NJvv/YkXB
 vRB8cMiArIWG3ctMRu3KCiV2B0nWXx7ktB8YHDEKAvcrq/ZJaEDn3p3r9
 6U2VKSGl9J4021bbBydRHCFPLY81tIZiCwu/i8HfGjsPOe9kgaK8aGQd6
 pdqmqY4dgjesBVoAqsE0wGcsNTpgSDdMVkOIe0H/Y99c+M6YZ/gP2KIFw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="364354040"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="364354040"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 03:08:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="667053087"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="667053087"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2023 03:08:17 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jun 2023 13:08:16 +0300
Message-Id: <20230628100816.16528-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Don't rely that 2 VDSC engines are
 always enough for pixel rate
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are currently having FIFO underruns happening for kms_dsc test case,
problem is that, we check if curreny cdclk is >= pixel rate only if
there is a single VDSC engine enabled(i.e dsc_split=false) however if
we happen to have 2 VDSC engines enabled, we just kinda rely that this
would be automatically enough.
However pixel rate can be even >= than VDSC clock(cdclk) * 2, so in that
case even with 2 VDSC engines enabled, we still need to tweak it up.
So lets compare pixel rate with cdclk * slice count(VDSC engine count) and
check if it still requires bumping up.
Previously we had to bump up CDCLK many times for similar reasons.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4207863b7b2a..5880dcb11588 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2607,9 +2607,14 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * When we decide to use only one VDSC engine, since
 	 * each VDSC operates with 1 ppc throughput, pixel clock
 	 * cannot be higher than the VDSC clock (cdclk)
+	 * If there 2 VDSC engines, then pixel clock can't be higher than
+	 * VDSC clock(cdclk) * 2. However even that can still be not enough.
+	 * Slice count reflects amount of VDSC engines,
+	 * so lets use that to determine, if need still need to tweak CDCLK higher.
 	 */
-	if (crtc_state->dsc.compression_enable && !crtc_state->dsc.dsc_split)
-		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
+	if (crtc_state->dsc.compression_enable)
+		min_cdclk = max_t(int, min_cdclk * crtc_state->dsc.slice_count,
+			          crtc_state->pixel_rate);
 
 	/*
 	 * HACK. Currently for TGL/DG2 platforms we calculate
-- 
2.37.3


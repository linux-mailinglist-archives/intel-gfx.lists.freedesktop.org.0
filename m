Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEC2AB34FB
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 12:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70F710E38B;
	Mon, 12 May 2025 10:34:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9w97T7P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A6A10E091;
 Mon, 12 May 2025 10:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747046054; x=1778582054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5g4XTTKfzz0KcCBNqutaa61UyF9r81Nlkzn+Vo2/WKI=;
 b=T9w97T7PcyhuOIwcMyQiKfiRKfeZFhHddiAUg6RJtBlRSWgfSHoW/alS
 rAvLt6P6d7nk1fo9Rf5NaYSU/p/Ag0RSZQO53a1NMhOaH4sK/lKDviFpy
 rjxqB2oXyI5kA6zu18bTiE3AisOR9yA9ywkNixmfxCJ1HVitUbPD5qVGC
 M+ksLTo5toWxM88bx381AZbicBsCWetMf2zzQoG5UZQRO2lW5laUyixX0
 BpUlpFYnXW1TKNH00yOKNRP66tnrqhFM87mwnBirWTh8XaMBUknCW6iJh
 OCaRWPBU8jcyNYhBprJsBdNWveW/Zz8ZLGGkH1wAnzMqwSIz5qWdG+Pn/ Q==;
X-CSE-ConnectionGUID: gySu94L1Symp6j2KXK4Czw==
X-CSE-MsgGUID: /Rd9MYkCT5erjgWSqDEX4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59467372"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59467372"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 03:34:14 -0700
X-CSE-ConnectionGUID: BnjFyGR1QHiFEiVtzIthjQ==
X-CSE-MsgGUID: Ydeh3QnuSrujrlPvxPK3aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142439954"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 03:34:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 13:34:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915/dmc: Extract dmc_evt_ctl_disable()
Date: Mon, 12 May 2025 13:33:55 +0300
Message-ID: <20250512103358.15724-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
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

We have two copies of the code to generate the "disable this event"
value for the DMC_EVT_CTL registers. Extract to a helper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 49cbb83b2bbe..ec940f837427 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -536,6 +536,14 @@ void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
 	}
 }
 
+static u32 dmc_evt_ctl_disable(void)
+{
+	return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+			      DMC_EVT_CTL_TYPE_EDGE_0_1) |
+		REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+			       DMC_EVENT_FALSE);
+}
+
 /**
  * intel_dmc_block_pkgc() - block PKG C-state
  * @display: display instance
@@ -575,10 +583,7 @@ void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display
 			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
 				       PIPEDMC_EVENT_VBLANK);
 	else
-		val = REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-				     DMC_EVENT_FALSE) |
-			REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-				       DMC_EVT_CTL_TYPE_EDGE_0_1);
+		val = dmc_evt_ctl_disable();
 
 	intel_de_write(display, MTL_PIPEDMC_EVT_CTL_4(pipe),
 		       val);
@@ -635,10 +640,7 @@ static u32 dmc_mmiodata(struct intel_display *display,
 	if (disable_dmc_evt(display, dmc_id,
 			    dmc->dmc_info[dmc_id].mmioaddr[i],
 			    dmc->dmc_info[dmc_id].mmiodata[i]))
-		return REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
-			REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-				       DMC_EVENT_FALSE);
+		return dmc_evt_ctl_disable();
 	else
 		return dmc->dmc_info[dmc_id].mmiodata[i];
 }
-- 
2.49.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78EBF304E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F24310E4C1;
	Mon, 20 Oct 2025 18:51:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RtHdu+3Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9C810E4BE;
 Mon, 20 Oct 2025 18:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986284; x=1792522284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zgBsYhxSzr0MId2Kj6F0VRFosrD0rSurmoa9p07gp/M=;
 b=RtHdu+3QvPz9PdEUL4Uqkzb87VZQPUsAl175rsJb7dA1Lrfpo5lwx/LE
 jtXDKlHdSQxY+UKXB3r+QrL0OTGmAP92dhmQs3RXKuTf2/hnDajt4hBxb
 MeDv6hvTJ0CHnHLx40r+Ld/Nc1525CJbLokKQsch6D1HFfLVvcJeX33Am
 BbM9+J+rahWe1rraUMAM051cgL4CjkNlHndhQOcUsCSbcwIwsSUqYcoDp
 RO3tLCBkDKfK6LWLzq8BDLiXNjMZIg4pfd2o5McdSqwfPXm8WVOloNvjQ
 8DZgFEG66TL+mfOnJo3QRdo0TOBh4fP7DwTA3mnTFiY8oiT/RLwrHR0v5 Q==;
X-CSE-ConnectionGUID: hUucvY3DQKqceAxhXAxiZQ==
X-CSE-MsgGUID: HIwBeG3hRcqTYhndPL02lQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63026248"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63026248"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:23 -0700
X-CSE-ConnectionGUID: IqvwEYZhRsqrt04j+2nwWA==
X-CSE-MsgGUID: jcj/lBy+QJWnbESpPBeUyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="184172045"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:21 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/22] drm/i915/vrr: Use trans_vrr_ctl() in
 intel_vrr_transcoder_disable()
Date: Mon, 20 Oct 2025 21:50:27 +0300
Message-ID: <20251020185038.4272-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently intel_vrr_disable() writes TRANS_VRR_CTL() with
trans_vrr_ctl(), whereas intel_vrr_transcoder_disable() always
writes just a plain 0. Write trans_vrr_ctl() in both places to
unify the code, allowing for more shared code in the future.

Since the VRR timing generator will be disabled by the
TRANS_VRR_CTL write it doesn't really matter what we write to
the register (other than VRR_CTL_VRR_ENABLE that is).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 562a5feadaab..19b38ad77189 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -779,7 +779,8 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+		       trans_vrr_ctl(crtc_state));
 
 	intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
 
-- 
2.49.1


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A2F8320D2
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 22:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83FD10E8A6;
	Thu, 18 Jan 2024 21:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49EF10E8A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 21:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705612897; x=1737148897;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nxAoPH/9xOf9RPzzSMosGSznbNrSwa9TR1GaunXRfrI=;
 b=DmbkmTEqrIGDKV9Iq8IGNK9+UWhry6PjlFm5tp2v6fDZ2leTVrNfFBwa
 QkngsKKX6wKID82/qJLpOL7lQtokW1+V6hLquFeFXP1CauLQW7YBUmRAJ
 dSKQzx0pASx/nUI71HpW0Dvyvx0kdSN3abmNM5TBsA8Woq23PWB8ZNbSN
 jOLiqwk6OaQNjY7NOOls5YTpW184cXOn7B+V66zWPAgu3DyuRjkt74c0O
 6U/zj4F8W9vXpqsvvwjEjNqVMDwTe8WSUERavQvW9+oBoCXU27BZ6dHyg
 Pssv5+yrfzlFSQW2LCHtGKzw9wpoSyGzAhlSzcDLzAbBvzhpBI6z5krY3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7290081"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; 
   d="scan'208";a="7290081"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 13:21:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777826256"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="777826256"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 18 Jan 2024 13:21:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jan 2024 23:21:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT
Date: Thu, 18 Jan 2024 23:21:31 +0200
Message-ID: <20240118212131.31868-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On HSW non-ULT (or at least on Dell Latitude E6540) external displays
start to flicker when we enable PSR on the eDP. We observe a much higher
SR and PC6 residency than should be possible with an external display,
and indeen much higher than what we observe with eDP disabled and
only the external display enabled. Looks like the hardware is somehow
ignoring the fact that the external display is active during PSR.

I wasn't able to redproduce this on my HSW ULT machine, or BDW.
So either there's something specific about this particular laptop
(eg. some unknown firmware thing) or the issue is limited to just
non-ULT HSW systems. All known registers that could affect this
look perfectly reasonable on the affected machine.

As a workaround let's unmask the LPSP event to prevent PSR entry
except while in LPSP mode (only pipe A + eDP active). This
will prevent PSR entry entirely when multiple pipes are active.
The one slight downside is that we now also prevent PSR entry
when driving eDP with pipe B or C, but I think that's a reasonable
tradeoff to avoid having to implement a more complex workaround.

Cc: stable@vger.kernel.org
Fixes: 783d8b80871f ("drm/i915/psr: Re-enable PSR1 on hsw/bdw")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10092
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 696d5d32ca9d..1010b8c405df 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1544,8 +1544,18 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * can rely on frontbuffer tracking.
 	 */
 	mask = EDP_PSR_DEBUG_MASK_MEMUP |
-	       EDP_PSR_DEBUG_MASK_HPD |
-	       EDP_PSR_DEBUG_MASK_LPSP;
+	       EDP_PSR_DEBUG_MASK_HPD;
+
+	/*
+	 * For some unknown reason on HSW non-ULT (or at least on
+	 * Dell Latitude E6540) external displays start to flicker
+	 * when PSR is enabled on the eDP. SR/PC6 residency is much
+	 * higher than should be possible with an external display.
+	 * As a workaround leave LPSP unmasked to prevent PSR entry
+	 * when external displays are active.
+	 */
+	if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL_ULT(dev_priv))
+		mask |= EDP_PSR_DEBUG_MASK_LPSP;
 
 	if (DISPLAY_VER(dev_priv) < 20)
 		mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
-- 
2.41.0


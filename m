Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D98115CC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 16:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D296B10E2BD;
	Wed, 13 Dec 2023 15:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E52010E2A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 15:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702480092; x=1734016092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jfMuX4Iq2ZteFJUlRgzxJ1yEkFlS1KkFrtaRN4ezLb8=;
 b=GgDTzFOaZoQt90rYS9nFFNPFzKZzv/YIvfyW+sMRk+iZwKX3RCTD2Whj
 6As1j2ep9YLZMHcW+doCiwNF4CHEANl/8O/6oPHCIkX+8vTFY7rBmU+AE
 ByxJMhAIW01HU0QhfZLvrs34clPA9hx/2f4FlVnwh0rk0ndDcqbyIeiiK
 B6TiVC9Teef9bpENf0AHGg9w9UxyMAs3ggKf/84mkbgi5N+WSgFoetq23
 0Ybc+8PCEHN9ixEyMizoMBDTHHjjtsBRJSe0Ad2hFEht8S2eo+kQE/nNb
 W9uWjuuQiQoxxcVmy1653NLdDMfXDC/jMXE8+ZmAc+9mhIU/+AH7tHcvW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="13672884"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="13672884"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:08:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767242022"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767242022"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 07:08:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 17:08:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/4] drm/i915/dmc: Also disable HRR event on TGL/ADLS main
 DMC
Date: Wed, 13 Dec 2023 17:08:07 +0200
Message-ID: <20231213150807.21331-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231211213750.27109-4-ville.syrjala@linux.intel.com>
References: <20231211213750.27109-4-ville.syrjala@linux.intel.com>
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

Unlike later platforms TGL/ADLS has the half refresh rate (HRR) event
on the main DMC (as opposed to the pipe DMC). Since we're disabling
that event on all later platforms already let's do the same on
TGL/ADLS as well.

There is supposedly a bit somewhere (DMC_CHICKEN on TGL) to make
the handler not do anything, but we don't currently have code
to frob it. Though that bit should be off by default, the ADL+
experience has shown us that trusting any of this isn't a good
idea. So seems safer to just disable all event handlers we know
that we don't need.

Also the TGL/ADLS DMC firmware is apparently using the wrong event
(undelayed vblank) here anyway. It should be using the delayed
vblank event instead (like ADL+ firmware does), but they didn't
release a firmware fix for this and instead just hacked around
this in the Windows driver code :/

v2: Also disable the event on ADLS (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 5 +++++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 9385898e3aa5..fcc7283b7dcd 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -448,6 +448,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
 	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
 		return true;
 
+	/* also disable the HRR event on the main DMC on TGL/ADLS */
+	if ((IS_TIGERLAKE(i915) || IS_ALDERLAKE_S(i915)) &&
+	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_VBLANK_A)
+		return true;
+
 	return false;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index cf10094acae3..90d0dbb41cfe 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -60,6 +60,7 @@
 
 #define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
 #define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
+#define DMC_EVT_CTL_EVENT_ID_VBLANK_A	0x32 /* main DMC */
 /* An event handler scheduled to run at a 1 kHz frequency. */
 #define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
 
-- 
2.41.0


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D5A80DD52
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 22:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A7F110E507;
	Mon, 11 Dec 2023 21:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B31010E506
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 21:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702330712; x=1733866712;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dwNzBbmGeCJxpcV5sWkwoXNH/Qd81Tc47MCl6BaHmRk=;
 b=fPc3FrpMs9CHFWSG3zuMu40PGYBe7m5TUu3fVYvg24W0yOzC/Uz1Rmdb
 V7hPTYL91wVUa2gFpRID5Up7sL2QVSiyD9ZLpwZIJE9Ys0KRFHhbVNJE4
 b7dlYoFQce4allmO1i42k7KIXaE7wZ+S2rtatAWeTMTyojdT37Mw/rGXN
 oPw7JEK8vWt9AT1p3bqa3h+U5BZzHmihrmSl0fGVX7NFMOLanUxdI7GLE
 spcc6PB9STpFp90qOKzGBZiDD4kXFBHE2ngHjASmELslgea6go8rexy5u
 1ldz3EJJa/giM25Nl6JtXdWqqVuE01IQ34MUBeYwdehc6vbe6OhTrGx83 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="379712264"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="379712264"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:38:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766547061"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="766547061"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 13:38:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Dec 2023 23:37:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/dmc: Also disable HRR event on TGL main DMC
Date: Mon, 11 Dec 2023 23:37:49 +0200
Message-ID: <20231211213750.27109-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
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

Unlike later platforms TGL has the half refresh rate (HRR) event
on the main DMC (as opposed to the pipe DMC). Since we're disabling
that event on all later platforms already let's do the same on
TGL as well.

There is supposedly a bit somewhere (DMC_CHICKEN on TGL) to make
the handler not do anything, but we don't currently have code
to frob it. Though that bit should be off by default, the ADL+
experience has shown us that trusting any of this isn't a good
idea. So seems safer to just disable all event handlers we know
that we don't need.

Also the TGL DMC firmware is apparently using the wrong event
(undelayed vblank) here anyway. It should be using the delayed
vblank event instead (like ADL+ firmware does), but they didn't
release a firmware fix for this and instead just hacked around
this in the Windows driver code :/

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 5 +++++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 9385898e3aa5..0722d322ec63 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -448,6 +448,11 @@ static bool disable_dmc_evt(struct drm_i915_private *i915,
 	    REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == DMC_EVT_CTL_EVENT_ID_CLK_MSEC)
 		return true;
 
+	/* also disable the HRR event on the main DMC on TGL */
+	if (IS_TIGERLAKE(i915) &&
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


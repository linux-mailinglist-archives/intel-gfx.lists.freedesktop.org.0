Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89238724CDB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E317210E3A8;
	Tue,  6 Jun 2023 19:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5284E10E3A8
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078951; x=1717614951;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W7bIwCiLcfFharcrywpaPG7tuB/37bIW4uoyyxlCtmc=;
 b=mciUi4NBwQ+y2eLBzpKBpoFeacdc1Mi4iFoOSN7soAefycbdlx2yNCea
 yUybBqAITN7dkbQyVWZ34ZRlgHUNafHe3IYFbLyGQKjJk+SGA+HR600G/
 4KOijIwb42Mhu0l9Mqhm0+Kte+okVEtMHBJ2Z4PCDExx2HiOsxoDpNSVP
 AbPOCkWid1pXm8tbNcd2+k2uiMNsUHVyMXooG96+wM/9TX1kOtgDIINQh
 s9g95hGx9jLJfZ3Afi9F8m3ErMOOL6wqDj7cwC7NUA3jL1Res7DjLy6Ru
 3lKrEY4Jw88ctGu6GsoxrOE2xfc2XrCEL7f0Dadd4OwQBoJKyXigLR6Sf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146362"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146362"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187141"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187141"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:59 +0300
Message-Id: <20230606191504.18099-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/19] drm/i915/dsb: Evade transcoder
 undelayed vblank when using DSB
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

We want to start the DSB execution from the transcoder's undelayed
vblank, so in order to guarantee atomicity with the all the other
mmio register writes we need to evade both vblanks.

Note that currently we don't add any vblank delay, so this is
effectively a nop. But in the future when we start to program
double buffered registers from the DSB we'll need to delay the
pipe's vblank to provide the register programming "window2"
for the DSB.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 36c9b590a058..ff0ebdf7cde3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -519,8 +519,12 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 	/*
 	 * M/N is double buffered on the transcoder's undelayed vblank,
 	 * so with seamless M/N we must evade both vblanks.
+	 *
+	 * DSB execution waits for the transcoder's undelayed vblank,
+	 * hence we must kick off the commit before that.
 	 */
-	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
+	if (new_crtc_state->dsb ||
+	    (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state)))
 		min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
 
 	if (min <= 0 || max <= 0)
-- 
2.39.3


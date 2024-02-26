Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1045386810D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 20:33:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC2210E628;
	Mon, 26 Feb 2024 19:33:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HRM+U7vp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E955B10E4B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 19:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708975978; x=1740511978;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sd4k09D8irP0qfMKnU4JK7uTs3FHG49yE/UQINVk5Z0=;
 b=HRM+U7vpucaIQ+zesivvtcZHWIjrBptrwQAw6W2xsR4wnRLUNATsF8Gr
 2bCdPr9vdUS6tBX+A/cNDJwhOz8LhsOh8TzQ1IDA+Y/LK3jo5f83rxzbZ
 YWh9HQMngFAPOns7lU3+Ah52r5ioxh4wEjfhlalpehLZvm9ekBjyQEx0l
 GSfsihhcKOhRnfd2g1OdkIIgQC+qNxor2bif+ixLOLTvFXoK8nvyM/3fI
 xPWWCTIgTejLU1Lw0VDY0mrWevQtDBH3r4wlFL5FTw8xdULEjC79XDsSq
 gIU7MGsDbHX0DYqpom8kCpIWEQ/0AKTXWJ0Zo/1zmypVzbMmRjGbZ60t+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3148109"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3148109"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:32:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="827770480"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="827770480"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Feb 2024 11:32:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Feb 2024 21:32:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/dsi: Don't use SET_CONTEXT_LATENCY with DSI
 transcoders
Date: Mon, 26 Feb 2024 21:32:51 +0200
Message-ID: <20240226193251.29619-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240226193251.29619-1-ville.syrjala@linux.intel.com>
References: <20240226193251.29619-1-ville.syrjala@linux.intel.com>
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

ADL DSI transcoders do not have the new SET_CONTEXT_LATENCY
register. Instead they supposedly use the older TGL VBLANK_START
based method of defining the vblank delay.

Completely untested due to lack of suitable hardware.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 00ac65a14029..e9c7e9b8957a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2617,7 +2617,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * VBLANK_START no longer works on ADL+, instead we must use
 	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
+	if (DISPLAY_VER(dev_priv) >= 13 && !transcoder_is_dsi(cpu_transcoder)) {
 		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
 			       crtc_vblank_start - crtc_vdisplay);
 
-- 
2.43.0


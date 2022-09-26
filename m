Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6632B5EB154
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 21:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3215810E501;
	Mon, 26 Sep 2022 19:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730E210E501
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 19:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664220624; x=1695756624;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e504irzmc4zrB1IljG3vg3KMy+Ws0Rs6RrMJkX+P9d8=;
 b=fStn4Gxd5fqIU4wGThVo8hkD7WlCSY/fjdPwjsBfNO8KAj1nC0Y0zemI
 ZBOLOs2aC3jnn5PHfo87wEeucNLRKvfxP1XcjDfFARg6ZoXss6HXTM18H
 Fbc+d3rBO05uTGv48WgwAVWMk+7yr0yrJ20vuRjinKmHSXkOxKPhjbBGA
 F2iw39ik2Ad4F1foT4JXTn/u/bQLmoxW5ii3YJm4xY9jlPk6j7k+g/GAB
 ImQNpJi3Bv5LRGsE+UnAHi7m1pSywOJlXLJmqRwJsTlPxSuS+g5yZL/ja
 ZyMYbCzLWOnYMnbw6tkEd/EcoOb0ZY+bTHLdHq/WrkCGi/0zsm/R8Fs5N A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="280845876"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="280845876"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 12:30:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="621191282"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="621191282"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Sep 2022 12:30:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Sep 2022 22:30:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:30:21 +0300
Message-Id: <20220926193021.23287-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Round to closest in g4x+ HDMI clock
 readout
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

On pre-ddi platforms we have slightly different code being
used for HDMI TMDS clock to dotclock conversion between the
state computation and state readout. Both of these need to
round the same way in order to not get a mismatch between
the computed and read out states. Fix up the rounding
direction in the readout path to match what is used during
state computation.

Another option would to just use intel_crtc_dotclock()
in the readout path as well, but I don't really want to
do that as the current code more accurately represents
how the hardware really works; The HDMI port register
defines whether we're actually outputting 8bpc or 12bpc
over HDMI, and the PIPECONF bpc setting just defines what
goes over FDI between the CPU and PCH. The fact that we
try to cram all that into a single pipe_bpp during state
computation is perhaps not entirely great...

Fixes: f2c9df101095 ("drm/i915: Round TMDS clock to nearest")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5606c667e422..8aadf96fa5e9 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -120,7 +120,7 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
 	pipe_config->hw.adjusted_mode.flags |= flags;
 
 	if ((tmp & SDVO_COLOR_FORMAT_MASK) == HDMI_COLOR_FORMAT_12bpc)
-		dotclock = pipe_config->port_clock * 2 / 3;
+		dotclock = DIV_ROUND_CLOSEST(pipe_config->port_clock * 2, 3);
 	else
 		dotclock = pipe_config->port_clock;
 
-- 
2.35.1


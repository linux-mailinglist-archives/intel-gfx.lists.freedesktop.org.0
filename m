Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B020498CA6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 676B710EA42;
	Mon, 24 Jan 2022 19:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607AB10EA42
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052402; x=1674588402;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xZfhNzX/pSBSfFrINM1QVahINMM5YL9igS7uD/u/CBI=;
 b=MLgzIN+nhn4anZ1sclbcu2TKM/JmyJXHIuHPajsVRPpPk2l2jtRbfzYc
 h5NWkxdiDXYHSLnnNR35vL7QWNlMAjaha8x7sJdZwfdvUM3LsCyN7juxM
 ExSD0uOGhhqgieDpPtJdR9sfA/ZbfUxI3xpCGu7RudgKP0s3YshN/WUh3
 zMES1NqRqFgu1FkwHuhlOLP7JyyoIa6SmNxF3+Ab8W/TStcVKovMalDUJ
 7uvIXWwk+HkxJ6qk9kc6pDeHEDJxqu11mxrFD1o8CI3ugZnQPaZqrWd79
 lKJW7uB7Dn8yDeY8s8roGgaC6VaNgkYREu8apHY3vtsXQsyXz2ydTsIO/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="245910335"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245910335"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="532181052"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 24 Jan 2022 11:26:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:26:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:26:34 +0200
Message-Id: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Skip dsc readout if the
 transcoder is disabled
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

Tryingf to do readout when we don't even have a cpu transcoder
is not a great idea. Don't do it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 80bc52425e47..e32a7a1e7ba0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4380,13 +4380,13 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		active = true;
 	}
 
+	if (!active)
+		goto out;
+
 	intel_dsc_get_config(pipe_config);
 	if (DISPLAY_VER(dev_priv) >= 13 && !pipe_config->dsc.compression_enable)
 		intel_uncompressed_joiner_get_config(pipe_config);
 
-	if (!active)
-		goto out;
-
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(dev_priv) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
-- 
2.34.1


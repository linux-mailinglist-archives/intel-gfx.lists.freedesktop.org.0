Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528F26D6AEF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 19:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7782D10E737;
	Tue,  4 Apr 2023 17:54:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A12610E737
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 17:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680630878; x=1712166878;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LCCoEi2kRaGTq7QG0K5hXmewHBldAgEkEVbKPlJ/lr0=;
 b=DJ1I6XvnTVZJySk/LZoGC31lu4oU85J740uekvxz1vrrbR1YEWxR2wMB
 jUflhKMRzbT9H/yEMIjvlA9QjxTCPGSSZvEDwpXlj2PAjUh+7Z1w2NBsh
 YfWzXX9FKnB/qI/pCEpGCf9MmEMfgmvEvBhK/O134g461zurMgapQTxKI
 dTil+BN+3+Pq0nxECuMu3JcEB0J1zYIPPcyckGrYfpJ8C34NM/xSWEi9u
 41o5o2ayQLwz7ThQ6yLqfGQ8AInLfeROvaVpxLmqXtbdNiDTGrUAqubYJ
 l6tZJa120oVjEL/90D5n3PqWN05V5JPExltPOVl1pxlHPX5qXXjPr4GMc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428546260"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="428546260"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:54:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="755721303"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="755721303"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga004.fm.intel.com with SMTP; 04 Apr 2023 10:54:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Apr 2023 20:54:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 20:54:30 +0300
Message-Id: <20230404175431.23064-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
References: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Evade transcoder's vblank when
 doing seamless M/N changes
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

The transcoder M/N values are double buffered on the transcoder's
undelayed vblank. So when doing seamless M/N fastsets we need to
evade also that.

Not that currently the pipe's delayed vblank == transcoder's
undelayed vblank, so this is still a nop change. But in the
future when we may have to delay the pipe's vblank to create
a register programming window ("window2") for the DSB.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index ed45a6934854..f3b836829296 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -510,6 +510,13 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 						      VBLANK_EVASION_TIME_US);
 	max = vblank_start - 1;
 
+	/*
+	 * M/N is double buffered on the transcoder's undelayed vblank,
+	 * so with seamless M/N we must evade both vblanks.
+	 */
+	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
+		min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+
 	if (min <= 0 || max <= 0)
 		goto irq_disable;
 
-- 
2.39.2


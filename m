Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 324517F5003
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 19:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A5B10E0AB;
	Wed, 22 Nov 2023 18:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D8010E0AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 18:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700679444; x=1732215444;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+R696zyzKHeObsTvQWQzsSBiKz6uQztB9244b0DzoHs=;
 b=SGeqDELrv/Ufn5dQ1ajegn/lTF3M/iqwn2jRDlsZKylDJJT3GhGAGpeY
 IxdsxiBHyPAzgufV3vHZR2al5yQ161UExiypl1e82B+Ewvi3BaDkBzCS0
 K7riO3c8nPoyT/Hq698swTtzb0/0LSriRZhNe/z0WDMPpAkkqY/n6C6+u
 kY7MmLPAh29N5Ye9GpJmi0qYgIYtPb2scmLk/3O2md3vvYaa1IYF/vrd7
 tX8NPEX8aQF+p6n+l5iG7+QdK4NfU+HOtmmIFlfRs9M+DMan8VzNaNxSU
 77t3QFGMgrpKG5IYHRwpWFbehjtZvipZ0BNr7Z3JN9PbDlTMteWW/lkmt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423252373"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="423252373"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 10:41:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="760380367"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="760380367"
Received: from unknown (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 22 Nov 2023 01:34:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Nov 2023 11:31:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Nov 2023 11:31:34 +0200
Message-ID: <20231122093137.1509-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/psr: Don't send a NULL VSC SDP
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

The PSR code is unconditionally enabling the VSC SDP whether or not PSR
itself is enabled. This means if the DP code decided not to use a VSC
SDP we're always transmitting a zeroed SDP. Not sure what the hardware
will even do in that case. We also see a "Failed to unpack DP VSC SDP"
message on every readout since the DIP buffer is just full of zeroes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8d180132a74b..931295934659 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1373,6 +1373,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	else
 		crtc_state->has_psr = _psr_compute_config(intel_dp, crtc_state);
 
+	if (!crtc_state->has_psr)
+		return;
+
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
-- 
2.41.0


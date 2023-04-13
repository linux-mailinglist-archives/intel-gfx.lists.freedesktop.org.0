Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187986E159E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 22:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73CB910EC25;
	Thu, 13 Apr 2023 20:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C81010EC25
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 20:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681416366; x=1712952366;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bLNyhSJEdnaxLrq1d4eridaB4T6wXiVBGfv6KrCgkgU=;
 b=Q8hJYYVgWYqT+crMd7FqR07fRHd5hVeb5KQNYZrZndTaBeYOb2Kf9eMu
 7rmLGmPpdhlk4cd3545jX4CtTQZDQYQjkqyX/h/hQCZJy0IzvqSgVmtPd
 sNWIUaANULEebiNNjATCwLfCRdwDXpZvpqwU7eXh4SblfgulLFX5TYwrG
 BYr2DWLrEfl00NnF1xyZ6/pIUEXunrOnjW2GbP78ZhQRj8qFvVBVe9fdM
 b8Q0MN9oOL2jtyDYuGv1Vxiy5YZ2ZdtMf/sb0hUhmiisb125ZlP0zhym6
 wYGN5NpJBoKGtcQPP0jAV6l50tTd0jtMKqwy9U35XuMyuFYV196oX57Zu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344289166"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="344289166"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 13:06:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="689496129"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="689496129"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 13 Apr 2023 13:06:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Apr 2023 23:06:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 23:06:01 +0300
Message-Id: <20230413200602.6037-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Make intel_mpllb_state_verify()
 safer
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

intel_mpllb_state_verify() blows up if you call it for a
non-modeset/fastset commit on account of the relevant
connector not being part of the overall atomic state.
Currently the state checker only runs for modeset/fastset
commits, but for testing purposes it is sometimes desirable
to run it for other commits too. Check for modeset/fastset
in intel_mpllb_state_verify() itself to make this safe.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 1cfb94b5cedb..4efc79d47e43 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -2007,6 +2007,10 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
 	if (!new_crtc_state->hw.active)
 		return;
 
+	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
+		return;
+
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
 
-- 
2.39.2


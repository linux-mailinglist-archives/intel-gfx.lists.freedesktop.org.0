Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9CA785E3A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1243010E4B0;
	Wed, 23 Aug 2023 17:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3704310E497;
 Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810563; x=1724346563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ga/hIjgcn69c7sg4PcPk7X+GDCX2vsaNEcdDpwbmLJ8=;
 b=AZhs/3yWVOMtjvYA+aQNDltUhsXigS0ryah7YcPKgvC/F5l0DVzdq1oR
 xiS2M5Bvc6s4yBWYYiMsUuPsVHB8TuoROvgEjXeqB2EuAafKCw1mmfdt7
 MumaUL96rif9ko3XoLjcE0dziVqNRhIt9xvpdCaQCVb4aH0ZPyxbW8Ceu
 SqSE75buF8iIvcYLh4By8ZlxLSFBVPcjH+0nNvlPY0O0Jzv70sqbp2vuT
 Vz3Z25iqrNMi/wfj37CnvubDV2A20TeIyf5js6jm9ESVxwhTN0tKK0Ei9
 FJYEtYXcikD37GRxyYN1Pbe5BexHMU0uQmu+NuTVQ1Qp7a3qQrFAOT3xZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147513"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147513"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204879"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204879"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:35 -0700
Message-Id: <20230823170740.1180212-38-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 37/42] drm/i915/xe2lpd: Write DBuf after CDCLK
 change in post plane
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Previously we always updated DBuf MBUS CTL and DBUF CTL regs after
CDCLK has been changed(CDCLK_CTL), however for Xe2-LPD we can't do like
that anymore. According to BSpec, we have to first update DBuf regs and
then write CDCLK regs, when CDCLK is decreased, which we do in post
plane.

So now we do CDCLK post plane update only after DBuf regs are
written (CDCLK/MDCLK separation requires MDCLK/CDCLK ratio to be written
to DBuf regs).

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f9eda7ad892e..de813831a5cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7113,7 +7113,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
-	if (state->modeset)
+	if (state->modeset && DISPLAY_VER(dev_priv) < 20)
 		intel_set_cdclk_post_plane_update(state);
 
 	intel_wait_for_vblank_workers(state);
@@ -7160,6 +7160,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_dbuf_post_plane_update(state);
 	intel_psr_post_plane_update(state);
 
+	if (state->modeset && DISPLAY_VER(dev_priv) >= 20)
+		intel_set_cdclk_post_plane_update(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
 
-- 
2.40.1


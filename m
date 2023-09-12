Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D0F79C4DD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB5D10E37F;
	Tue, 12 Sep 2023 04:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E60710E38B;
 Tue, 12 Sep 2023 04:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494118; x=1726030118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2hAswdojYQeUw1rZps9euU4MYmnJT2szXWg44XGT3pg=;
 b=UkqGwFkTbuHcplt9BMSFpJ4l51CIFGltYpFU5jmM/4WViMEMp4eMdLqf
 92hLHp0ghDCJyUQdC7umklfA118ndxcCpQXEm1sGcgU4yNiAWDp5xvJ22
 LmPEMUlflqHkF4w72em3DoJk1CWwNzvmmzxwHxY31LJb5J/XfU6B50BRq
 D8TB6J0MurONCwDCR4FxmMNkExOxB41uiUkJFzbt+xEru3OCH7XDpSPst
 bLRIKEcB8QmumpKdPbMrbpyuxhUNX7AESYOHcG2V5Q/y8jKpZP1JZJ+Nk
 K0aVG0NuQQlwdePBr66Rzm97lvmneAqt+FZo5Auwy/Qgx+0nQpPxu1wTA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182349"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182349"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419992"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419992"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:36 -0700
Message-Id: <20230912044837.1672060-29-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 28/29] drm/i915/xe2lpd: Write DBuf after
 CDCLK change in post plane
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
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 83e1bc858b9f..b0455d5d9bfd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7039,7 +7039,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
-	if (state->modeset)
+	if (state->modeset && DISPLAY_VER(dev_priv) < 20)
 		intel_set_cdclk_post_plane_update(state);
 
 	intel_wait_for_vblank_workers(state);
@@ -7086,6 +7086,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_dbuf_post_plane_update(state);
 	intel_psr_post_plane_update(state);
 
+	if (state->modeset && DISPLAY_VER(dev_priv) >= 20)
+		intel_set_cdclk_post_plane_update(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
 
-- 
2.40.1


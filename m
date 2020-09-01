Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 612EB259268
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 17:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FE46E1B9;
	Tue,  1 Sep 2020 15:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C1AD6E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 15:11:53 +0000 (UTC)
IronPort-SDR: 8w30HcLGsvg4Eatlvu47uixzYZZF7Acg0JwN1GfSWCIEeuGISvx1e5uXJoWZy8soGWSDDT8u+D
 nGZx74wM8bxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="144871781"
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; d="scan'208";a="144871781"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 08:11:52 -0700
IronPort-SDR: p2gOdIZq551u1H2AOMCOCtX/GgK5GHpq6motuzMMm8+HhP6+nRzcPEp5LhyOwihJRcbtyPS1jt
 mgX2k89gqLnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; d="scan'208";a="404806529"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga001.fm.intel.com with ESMTP; 01 Sep 2020 08:11:50 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Sep 2020 18:10:36 +0300
Message-Id: <20200901151036.1312357-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: fix regression leading to display
 audio probe failure on GLK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In commit 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking
to separate function") the order of force_min_cdclk_changed check and
intel_modeset_checks(), was reversed. This broke the mechanism to
immediately force a new CDCLK minimum, and lead to driver probe
errors for display audio on GLK platform with 5.9-rc1 kernel. Fix
the issue by moving intel_modeset_checks() call later.

Fixes: 4f0b4352bd26 ("drm/i915: Extract cdclk requirements checking to separate function)"
BugLink: https://github.com/thesofproject/linux/issues/2410
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d50b7177d40..8caeed23037c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15009,12 +15009,6 @@ static int intel_atomic_check(struct drm_device *dev,
 	if (dev_priv->wm.distrust_bios_wm)
 		any_ms = true;
 
-	if (any_ms) {
-		ret = intel_modeset_checks(state);
-		if (ret)
-			goto fail;
-	}
-
 	intel_fbc_choose_crtc(dev_priv, state);
 	ret = calc_watermark_data(state);
 	if (ret)
@@ -15029,6 +15023,10 @@ static int intel_atomic_check(struct drm_device *dev,
 		goto fail;
 
 	if (any_ms) {
+		ret = intel_modeset_checks(state);
+		if (ret)
+			goto fail;
+
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

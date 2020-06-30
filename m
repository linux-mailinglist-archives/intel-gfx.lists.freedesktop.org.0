Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 332C220F384
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 13:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113776E0BC;
	Tue, 30 Jun 2020 11:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7955F6E0BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 11:26:13 +0000 (UTC)
IronPort-SDR: IjBtEW4wdTxZKsBhwmo0jJ3WWmvvVAMA9rAT9JO79+Y1wep7HfQfXDMhOgYRJBf/GYgz/61bVY
 OolHSeAPbqFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="143693564"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="143693564"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 04:26:13 -0700
IronPort-SDR: BZM3WcQx5fkF1NjGDlXE47lrAcWELaMTGIJcujNE5WFbJdPbXvlqBaVYj79GcTnLiV6D7Ma8em
 qxcoQ/Uo2yHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="265093322"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.72.190])
 by fmsmga007.fm.intel.com with ESMTP; 30 Jun 2020 04:26:11 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 14:26:09 +0300
Message-Id: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] drm/i915: Clamp min_cdclk to max_cdclk_freq
 to unblock 8K
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

We still need "Bump up CDCLK" workaround otherwise getting
underruns - however currently it blocks 8K as CDCLK = Pixel rate,
in 8K case would require CDCLK to be around 1 Ghz which is not
possible.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 45f7f33d1144..01a5bc6b08c4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2080,9 +2080,21 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * Explicitly stating here that this seems to be currently
 	 * rather a Hack, than final solution.
 	 */
-	if (IS_TIGERLAKE(dev_priv))
+	if (IS_TIGERLAKE(dev_priv)) {
 		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
 
+		/*
+		 * Clamp to max_cdclk_freq in order not to break an 8K,
+		 * but still leave W/A at place.
+		 */
+		min_cdclk = min(min_cdclk, (int)dev_priv->max_cdclk_freq);
+
+		/*
+		 * max_cdclk_freq check obviously not needed - just return.
+		 */
+		return min_cdclk;
+	}
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

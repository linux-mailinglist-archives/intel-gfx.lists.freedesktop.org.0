Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 746CE12D958
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 15:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8741893A8;
	Tue, 31 Dec 2019 14:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89259893A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 14:00:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 06:00:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,379,1571727600"; d="scan'208";a="231302324"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by orsmga002.jf.intel.com with ESMTP; 31 Dec 2019 06:00:13 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 16:00:07 +0200
Message-Id: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Revert changes done in commit f6ec9483091f ("drm/i915: extend audio
CDCLK>=2*BCLK constraint to more platforms"). Audio drivers
communicate with i915 over HDA bus multiple times during system
boot-up and each of these transactions result in matching
get_power/put_power calls to i915, and depending on the platform,
a modeset change causing visible flicker.

GLK is the only platform with minimum CDCLK significantly lower
than BCLK, and thus for GLK setting a higher CDCLK is mandatory.

For other platforms, minimum CDCLK is close but below 2*BCLK
(e.g. on ICL, CDCLK=176.4kHz with BCLK=96kHz). Spec-wise the constraint
should be set, but in practise no communication errors have been
reported and the downside if set is the flicker observed at boot-time.

Revert to old behaviour until better mechanism to manage
probe-time clocks is available.

The full CDCLK>=2*BCLK constraint is still enforced at pipe
enable time in intel_crtc_compute_min_cdclk().

Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/913
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---

Notes:
    v2: d'oh, change put_power() as well

 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 27710098d056..e406719a6716 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -856,7 +856,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 		}
 
 		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
-		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, true);
 
 		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
@@ -875,7 +875,7 @@ static void i915_audio_component_put_power(struct device *kdev,
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
 	if (--dev_priv->audio_power_refcount == 0)
-		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, false);
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

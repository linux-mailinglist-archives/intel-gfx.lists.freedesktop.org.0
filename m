Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A721AD674
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 08:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13EE6E33D;
	Fri, 17 Apr 2020 06:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781586E33D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 06:51:39 +0000 (UTC)
IronPort-SDR: LqdjDLn8kn7tu8u05XZCwcz7Os8HnUN2wr6Fpr09tqfMGH5QWpW3ZGfTcyLu8+lzFNd/AVY6Da
 f67aZMgk812w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 23:51:38 -0700
IronPort-SDR: 8/jy2Tka0WUKqObb//HXtur3vAX1Dem123VRUietZoe35f5umQZNXy4g+Sk92kETsOpOyvFbUN
 rHViMIzVZd7w==
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="428133304"
Received: from mcintra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.44.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 23:51:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 09:51:32 +0300
Message-Id: <20200417065132.23048-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/audio: error log non-zero audio power
 refcount after unbind
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have some module unload/reload tests hitting an issue with i915
unbinding the component interface before the audio driver has properly
put the power. Log an error about it for ease of debugging. (Normally
this leads to a wakeref debug splat on the power well.)

Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 57b80971ae78..793db13fcf25 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1138,6 +1138,10 @@ static void i915_audio_component_unbind(struct device *i915_kdev,
 	drm_modeset_unlock_all(&dev_priv->drm);
 
 	device_link_remove(hda_kdev, i915_kdev);
+
+	if (dev_priv->audio_power_refcount)
+		drm_err(&dev_priv->drm, "audio power refcount %d after unbind\n",
+			dev_priv->audio_power_refcount);
 }
 
 static const struct component_ops i915_audio_component_bind_ops = {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

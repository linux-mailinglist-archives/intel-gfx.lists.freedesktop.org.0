Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5063B9205
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 15:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625D36EB09;
	Thu,  1 Jul 2021 13:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D3A89FF6
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 13:08:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="188213915"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188213915"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 06:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="420396813"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 06:08:28 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 18:23:46 +0530
Message-Id: <20210701125346.10005-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210701125346.10005-1-anshuman.gupta@intel.com>
References: <20210701125346.10005-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/audio: Use AUDIO_PLAYBACK power
 domain
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

Use POWER_DOMAIN_AUDIO_PLAYBACK to enable/disable
display audio codec power in intel_display_power_{get, put}

v1: Changes since RFC
- changed power domain names. [Imre]

Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 5f4f316b3ab5..532237588511 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1001,7 +1001,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 	/* Catch potential impedance mismatches before they occur! */
 	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
 
-	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);
+	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK);
 
 	if (dev_priv->audio_power_refcount++ == 0) {
 		if (DISPLAY_VER(dev_priv) >= 9) {
@@ -1034,7 +1034,7 @@ static void i915_audio_component_put_power(struct device *kdev,
 		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, false);
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
+	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO_PLAYBACK, cookie);
 }
 
 static void i915_audio_component_codec_wake_override(struct device *kdev,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

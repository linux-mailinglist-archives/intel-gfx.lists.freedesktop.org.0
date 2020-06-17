Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DC61FCA77
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 12:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40576EAB3;
	Wed, 17 Jun 2020 10:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 191D56E973
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 10:06:10 +0000 (UTC)
IronPort-SDR: sWdIYI8niz7CBhDUKinzcyA3Tdt289Y8wZlsVQBExsjz7A5T3f4TSt+pKde4RqJLELEFnOGkid
 +Q4dk3s03FWw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 03:06:09 -0700
IronPort-SDR: tsRf8b0JreRT2Ad2fsvbRW7/BeFNiKYMpqHTD5NWFU1KajNOBnFrxeh592DKFZftHOjhUeYlpP
 INYk2PZjfE/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,522,1583222400"; d="scan'208";a="476773454"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 03:06:08 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 15:20:01 +0530
Message-Id: <20200617095001.19220-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: POWER_DOMAIN_AUDIO ref-count debug
 logs
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

Debug print for power domain audio get/put.
This will help to deubg the CI s2idle incomplete
failures.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index ad4aa66fd676..145afd2f1d4a 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1012,6 +1012,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
 	/* Catch potential impedance mismatches before they occur! */
 	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
 
+	drm_dbg_kms(&dev_priv->drm, "get audio power domian power\n");
 	ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);
 
 	if (dev_priv->audio_power_refcount++ == 0) {
@@ -1045,6 +1046,7 @@ static void i915_audio_component_put_power(struct device *kdev,
 		if (IS_GEMINILAKE(dev_priv))
 			glk_force_audio_cdclk(dev_priv, false);
 
+	drm_dbg_kms(&dev_priv->drm, "put audio power domian power\n");
 	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
 }
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

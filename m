Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C475AECB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 14:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0E910E5C5;
	Thu, 20 Jul 2023 12:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F84F10E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 12:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689857657; x=1721393657;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2mtVIFOycZHubg+2A6nf8j8jpFgu1vwHmmITRhyqXug=;
 b=EXopLlnJM+Sznt7k5jobWwFOqF8e7hrJG26lhRQU+o/ZFuNIXDWWwfUD
 3GJiJNYjNeS4VrrBb3VIw3fW9l0Hqeg3Pd4hN1lmyHD52wNIILrZhj3NC
 z/U3bMD0YsRbE43UGuCfAo94JsOlAceFjENZBcnmQk3uwNZyGDRGvBIzu
 nuyGmeArL3dEIwkSxXlSnouor2rQkeIQxnepGdWs1n2/43iHeB4xBTbum
 tIg3i2bo9myOF36o6x/wIwKP9IJYf9uge4HoR5IRqTwmMX9BUZ728wLAn
 ZwHSCA1Y98XSgHVKNE2XhjleJxNBKfMJCvEI0pUkAFQ19wEJSqxCaycxv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351582783"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="351582783"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="794477605"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="794477605"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:54:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 15:54:17 +0300
Message-Id: <20230720125418.236140-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230720125418.236140-1-imre.deak@intel.com>
References: <20230720125418.236140-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915: Don't change the status of
 forced connectors during hotplug detect
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

DRM display connectors forced to a connected/disconnected state via the
drm_connector::force member shouldn't change their status. Atm, this can
still happen in the connector's detect function when called to handle a
hotplug event. This in turn may lead to the GETCONNECTOR ioctl to report
the incorrect state if it's called to return the connector properties
without doing an actual detection (by calling the ioctl with a non-zero
drm_mode_get_connector::count_modes).

Fix the above by updating the connector state during hotplug detect only
if the connector state is not forced.

Testcase: igt@kms_force_connector_basic@force-connector-state
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index d9f0ab1d953b9..1f6fa3f994feb 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -267,14 +267,16 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
 	struct drm_device *dev = connector->base.dev;
 	enum drm_connector_status old_status;
 	u64 old_epoch_counter;
+	int status;
 	bool ret = false;
 
 	drm_WARN_ON(dev, !mutex_is_locked(&dev->mode_config.mutex));
 	old_status = connector->base.status;
 	old_epoch_counter = connector->base.epoch_counter;
 
-	connector->base.status =
-		drm_helper_probe_detect(&connector->base, NULL, false);
+	status = drm_helper_probe_detect(&connector->base, NULL, false);
+	if (!connector->base.force)
+		connector->base.status = status;
 
 	if (old_epoch_counter != connector->base.epoch_counter)
 		ret = true;
-- 
2.37.2


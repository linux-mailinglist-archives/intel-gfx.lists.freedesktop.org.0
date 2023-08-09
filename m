Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A6B775738
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 12:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA3A10E046;
	Wed,  9 Aug 2023 10:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4B510E046
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 10:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691577777; x=1723113777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xTAd0NbOT4AOeTJSt4BW+LpE4lbG7F/OXh8yEP1EpRU=;
 b=Rfyaz6Chdos9xYc0flUQdG++nX7z/G3IfY5UhME3t0KTeK5tBGGNI6EE
 s0f702XtA1r+TVMG5Qr9Kks/hdOB1OCWNkJmPx5Fl0DD0e2yJBlk3vbnH
 /7rLgMZHLju7BMvfLv/0CuIFNjAeVZUmyGOQiMkgIBQDMy+9kpG72dEvR
 do8Z8MzVBQ122wb1RRZfVVD7W/y4MbBaMdwifzkcwrDbmehmNNI0jubuA
 5SZBpTvqqxZqe8x+Yy0+GImLeqK3/lgNlehTb/pXaTldjob4aboFLkxAT
 9eUbxo0UG8Qno/LQXgPQGrewI+6Wy1N8uPBnIkefIWnZ+TEd9mYLikSUk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="371078481"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="371078481"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 03:42:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="761335924"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="761335924"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 03:42:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Aug 2023 13:43:06 +0300
Message-Id: <20230809104307.1218058-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230809104307.1218058-1-imre.deak@intel.com>
References: <20230809104307.1218058-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/3] drm/i915: Don't change the status of forced
 connectors during hotplug detect
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index dd7eb9fc78610..ca74f94531dda 100644
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


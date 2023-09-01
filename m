Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F100078FEB7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 16:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0608910E7D9;
	Fri,  1 Sep 2023 14:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59D210E7D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 14:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693577030; x=1725113030;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bNiEa0jL19K8lIItY6lSay6eWCAU+ZIE8PmKYRxuxwU=;
 b=hT493RhnZ7ykmVU+7pfNFzKe6oA/Bpp/jdNr+fAhB9ZMv9CnPdLeevzL
 pWIEM+ZJCp2YUE9wPoFkYatiY+0Yei/8hcNfMoXLXdWUq5PrZnN1XpC0U
 ZqmAXurv49b0LNbfoRH3cIrPVMoF1tWzwlSO1go3Tblc4VOtt5nZEbcYJ
 kHTbsUaCZm0LnOmf8vZpd1/BGnl+WO+YT/zyGOLCJ4HzxlDyAs5MMqKjS
 E/Tw3tmqoEsBtKjxVFK+c1yBVmMIeaqEOoXwOs1vMswaLCVk/XGuK4cg1
 h46dc9GOvuKDTeSBM6ylVChAXH1pgo6O22dwQ34hoyj44aFMMaWMGO8Aa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="375126740"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="375126740"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="854714922"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="854714922"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:03:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 17:04:02 +0300
Message-Id: <20230901140403.2821777-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Schedule the HPD poll init work
 on an unbound workqueue
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
Cc: Tejun Heo <tj@kernel.org>, stable@vger.kernel.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disabling HPD polling from i915_hpd_poll_init_work() involves probing
all display connectors explicitly to account for lost hotplug
interrupts. On some platforms (mostly pre-ICL) with HDMI connectors the
I2C EDID bit-banging using udelay() triggers in turn the

 workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND

warning.

Fix the above by scheduling i915_hpd_poll_init_work() on a WQ_UNBOUND
workqueue. It's ok to use a system WQ, since i915_hpd_poll_init_work()
is properly flushed in intel_hpd_cancel_work().

The connector probing from drm_mode_config::output_poll_work resulting
in the same warning is fixed by the next patch.

Cc: Tejun Heo <tj@kernel.org>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
CC: stable@vger.kernel.org # 6.5
Suggested-by: Tejun Heo <tj@kernel.org>
Suggested-by: Heiner Kallweit <hkallweit1@gmail.com>
Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9245
Link: https://lore.kernel.org/all/f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index e8562f6f8bb44..accc2fec562a0 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -774,7 +774,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	 * As well, there's no issue if we race here since we always reschedule
 	 * this worker anyway
 	 */
-	queue_work(dev_priv->unordered_wq,
+	queue_work(system_unbound_wq,
 		   &dev_priv->display.hotplug.poll_init_work);
 }
 
@@ -803,7 +803,7 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 		return;
 
 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
-	queue_work(dev_priv->unordered_wq,
+	queue_work(system_unbound_wq,
 		   &dev_priv->display.hotplug.poll_init_work);
 }
 
-- 
2.37.2


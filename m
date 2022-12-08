Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55787646E29
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 12:12:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FF410E495;
	Thu,  8 Dec 2022 11:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B630F10E1C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 11:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670497960; x=1702033960;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VOuyOOFWmqIaImkqyG7tStWRhT/Xn60ny9jd8hFCbA4=;
 b=VArtfPAfNsCUBc14FtFNS7CPKR4vm4mKY3UOZ8BwQfb1ATSPCtVo6Hgg
 D6oxKIcscN9C4qeLp+mZg70S1BUU4LCCFk7CPY/Xcn6jmHXT/kKy70Cdx
 gXfjQSEaYBpf8TBjONBtCnr5nGLoVWAOJBXPFoyje6bUfDNe7t98JqMDc
 3G5H2VcwqDrTmxwEgMCgHKtPu08Di4FWjpzTRq4xlA2LAF9m2POXksr+Y
 OVrshPlzlAvzAoufh9PSiPqVcJ85o7H+YgpeGvjdYR15fh5sXihclgtAH
 7Sps58d8kL69VRpdhZDnVttehCV7+LKlMoB5HYmFsZg/2MwIeiI6FaKI7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318995977"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="318995977"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 03:12:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="710426055"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710426055"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 03:12:37 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 12:12:16 +0100
Message-Id: <20221208111217.3734461-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simplify the code.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 907ab7526cb478..2972d7533da44e 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -304,10 +304,8 @@ static void i915_digport_work_func(struct work_struct *work)
 	u32 old_bits = 0;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-	long_port_mask = dev_priv->display.hotplug.long_port_mask;
-	dev_priv->display.hotplug.long_port_mask = 0;
-	short_port_mask = dev_priv->display.hotplug.short_port_mask;
-	dev_priv->display.hotplug.short_port_mask = 0;
+	long_port_mask = fetch_and_zero(&dev_priv->display.hotplug.long_port_mask);
+	short_port_mask = fetch_and_zero(&dev_priv->display.hotplug.short_port_mask);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
@@ -379,10 +377,8 @@ static void i915_hotplug_work_func(struct work_struct *work)
 
 	spin_lock_irq(&dev_priv->irq_lock);
 
-	hpd_event_bits = dev_priv->display.hotplug.event_bits;
-	dev_priv->display.hotplug.event_bits = 0;
-	hpd_retry_bits = dev_priv->display.hotplug.retry_bits;
-	dev_priv->display.hotplug.retry_bits = 0;
+	hpd_event_bits = fetch_and_zero(&dev_priv->display.hotplug.event_bits);
+	hpd_retry_bits = fetch_and_zero(&dev_priv->display.hotplug.retry_bits);
 
 	/* Enable polling for connectors which had HPD IRQ storms */
 	intel_hpd_irq_storm_switch_to_polling(dev_priv);
-- 
2.34.1


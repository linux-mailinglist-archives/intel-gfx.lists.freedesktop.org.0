Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D5591058
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 13:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F99A7FD9;
	Fri, 12 Aug 2022 11:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F1D8A5E66
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660304962; x=1691840962;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VrDAEdG4EdCE3sU/T76WaHmhpxgEG7UrxBmAvlHaNAQ=;
 b=B3/W8ITCB8s41Epk3pez3sWpJfXhM/zUquFCXANrIIVzjOpH8an/i8bV
 7O3nTamYdfu6l46FisZoixa6rFDTW/IEipUEj4mkGZ5BeU/LUzQsNzZgD
 CsrzLONNbCnbJ1279Dzkptah1+bN9xrG+ml/IZmJ613KRJFbK0DNJoZ8v
 Uj/UHxxsZfD6mFbh7vBO+6hv/EQ7ONxmEnxvzhtOnRv/YueLRZtSMoRvg
 qTWHBwoyIx9R8CqzYSecI9+b5axBUWq1pklCjAp38MZKjngck41UKX5GA
 1AtOf3I3h6njIkv4hJt3jDNYgRZX9J1jJyGKEjlpLl9Jruilnjvn2GnRy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278530141"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="278530141"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 04:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="933693555"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga005.fm.intel.com with ESMTP; 12 Aug 2022 04:49:20 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Aug 2022 10:17:24 +0530
Message-Id: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While executing i915_selftest, wakeref imbalance warning is seen
with i915_selftest failure.

When device is already suspended, wakeref is acquired by
disable_rpm_wakeref_asserts and rpm ownership is transferred back
to core. During this case wakeref_count will not be zero.
Once driver is unregistered, this wakeref is released with
enable_rpm_wakeref_asserts and balancing wakeref_count acquired
by driver.

This patch will fix the warning callstack by adding check if device
is already suspended and rpm ownership transfer is going on.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..6530a8680cfd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1670,7 +1670,13 @@ static int intel_runtime_resume(struct device *kdev)
 
 	drm_dbg(&dev_priv->drm, "Resuming device\n");
 
-	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
+	/*
+	 * When device is already suspended, Wakeref is acquired by disable_rpm_wakeref_asserts
+	 * and rpm ownership is transferred back to core. During this case wakeref_count will
+	 * not be zero. Once driver is unregistered, this wakeref is released with
+	 * enable_rpm_wakeref_asserts and balancing wakeref_count acquired by driver.
+	 */
+	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count) && !rpm->suspended);
 	disable_rpm_wakeref_asserts(rpm);
 
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
-- 
2.25.1


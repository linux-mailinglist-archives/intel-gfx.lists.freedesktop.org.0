Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA83571F0E8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 19:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5035510E59C;
	Thu,  1 Jun 2023 17:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7607010E59C
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 17:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685641089; x=1717177089;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wXf4F1CyRcsESqM6noDQi3vW5DhNgAJLWr0SoU9TyGE=;
 b=di99huKZ8mpXexzI7OxzZTdK42gtDH2qeBPUYUegvP9ILhbcU3/md8AE
 oKu7EVs0riZNw+hu2N0ffu0Y+ssj0qEfhOFjITHNJR1VgufFfIsyfaZka
 88eUizca1doHtFHseIBYRc8hOl/ZJWoFNrDsGX+K5qtu8b6c9q05nPFmB
 K+fg9b0/QrSsTTRxneezJwTr8XZyltGki9jpsqjnevzXtrzpzFEMkphI4
 rGmmRwD9A1G44M50xZogl+WyNqApxpI7+ikIKOSEJ/zmpvbf7CYJKCIhZ
 9mTvcguKjp+XK6oFPNT9m3AQjjZF2L0kCKvRqGdRU+cAgiUHTm4DZtEGu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="354488602"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="354488602"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 10:38:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="881711589"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="881711589"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 10:38:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 10:38:04 -0700
Message-Id: <20230601173804.557756-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix error handling if driver creation
 fails during probe
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
Cc: matthew.d.roper@intel.com, Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If i915_driver_create() fails to create a valid 'i915' object, we
should just disable the PCI device and return immediately without trying
to call i915_probe_error() that relies on a valid i915 pointer.

Fixes: 12e6f6dc78e4 ("drm/i915/display: Handle GMD_ID identification in display code")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c3ab5c32d492..5c3fc57cc4fe 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -762,8 +762,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	i915 = i915_driver_create(pdev, ent);
 	if (IS_ERR(i915)) {
-		ret = PTR_ERR(i915);
-		goto out_pci_disable;
+		pci_disable_device(pdev);
+		return PTR_ERR(i915);
 	}
 
 	ret = i915_driver_early_probe(i915);
-- 
2.40.1


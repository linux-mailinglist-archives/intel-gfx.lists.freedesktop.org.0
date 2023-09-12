Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB73D79D0AD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968BB10E05A;
	Tue, 12 Sep 2023 12:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FED10E412
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520361; x=1726056361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=blO/8nwxndmJtprFU2qF4HxCUPWXa0Lelg2saXwKm9M=;
 b=Ta2U5+xnx8vwPeJPU0e1TzLAmskK0E5qOyrVVO8rfosOfIAJ2s4Z4KxJ
 ZFe0xmcpUZywHVtXMgw84pQo6whP8zPDVjq6kBGXBTUbbGrW4slfjY9iX
 30X22W8jwaNIkYg67nkCYbK4E4p51S5I879ti2csnLSmT3hmdYHDfctzU
 EvrT6MdD8mQfoxvRXWS53WPwtLDcznbkYT7+Cek0LTehSFSdQfhNo5os+
 j5uvMsQQDJ1SbCvSnecXW7UJS/Ly/pL1loYGJ0vQgEAS66+vT09U7qTDK
 FoahXsTQ5Wl1auK/cQnVDSgaCywG11bFXPT2cwT3NI/NoCGjWW2StLBy0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="377268093"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="377268093"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:06:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="746857570"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="746857570"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:05:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 15:05:37 +0300
Message-Id: <20230912120537.2158209-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230912120537.2158209-1-jani.nikula@intel.com>
References: <20230912120537.2158209-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: move intel_display_device_probe()
 one level higher
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
Cc: jani.nikula@intel.com, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't hide display probe in device info code.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c               | 2 ++
 drivers/gpu/drm/i915/intel_device_info.c         | 2 --
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f8dbee7a5af7..b5e1f72cc3ce 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -735,6 +735,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, match_info);
 
+	intel_display_device_probe(i915);
+
 	return i915;
 }
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b9b8b22540cb..d2ed0f057cb2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -418,8 +418,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	runtime = RUNTIME_INFO(i915);
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
-	intel_display_device_probe(i915);
-
 	runtime->device_id = device_id;
 }
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index da0b269606c5..7de6477803f8 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -181,6 +181,8 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Set up device info and initial runtime info. */
 	intel_device_info_driver_create(i915, pdev->device, &mock_info);
 
+	intel_display_device_probe(i915);
+
 	dev_pm_domain_set(&pdev->dev, &pm_domain);
 	pm_runtime_enable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
-- 
2.39.2


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB9F19C071
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 13:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25866EA63;
	Thu,  2 Apr 2020 11:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80E36EA63
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 11:49:43 +0000 (UTC)
IronPort-SDR: hRZNggBkYIBeiyi8gq9zrMJhkqaZZzincQtZ+WMdpCIs7yY/XLa01tSSQXywJz/tPngYe9fyfu
 qpcU/rOd3JvQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:43 -0700
IronPort-SDR: zj2SIgpZXKqyIrcqMWFDGjy93UX85HSttSz/xmdNdoAFsHKHQVJ3S8HO2rmJUNB2ugmahRxzPI
 DC/rcxkEeqFA==
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="273532699"
Received: from assenmac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.35.117])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 04:49:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Apr 2020 14:48:11 +0300
Message-Id: <20200402114819.17232-9-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402114819.17232-1-jani.nikula@intel.com>
References: <20200402114819.17232-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 09/17] drm/i915/switcheroo: use struct
 drm_device based logging
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
Cc: jani.nikula@intel.com, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert all the pr_* logging macros to the struct drm_device based
macros to provide device specific logging.

No functional changes.

Cc: Wambui Karuga <wambui.karugax@gmail.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_switcheroo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index ed69b5d4a375..b3a24eac21f1 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -20,14 +20,14 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
 	}
 
 	if (state == VGA_SWITCHEROO_ON) {
-		pr_info("switched on\n");
+		drm_info(&i915->drm, "switched on\n");
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
 		/* i915 resume handler doesn't set to D0 */
 		pci_set_power_state(pdev, PCI_D0);
 		i915_resume_switcheroo(i915);
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_ON;
 	} else {
-		pr_info("switched off\n");
+		drm_info(&i915->drm, "switched off\n");
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_CHANGING;
 		i915_suspend_switcheroo(i915, pmm);
 		i915->drm.switch_power_state = DRM_SWITCH_POWER_OFF;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

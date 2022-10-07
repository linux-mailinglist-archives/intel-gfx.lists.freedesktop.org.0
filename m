Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AEC5F7F7D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 23:11:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B1F10E286;
	Fri,  7 Oct 2022 21:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C37210E231
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 21:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665177072; x=1696713072;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O4yJVfZOYsIj2zoF1+4G4JIdLEBMuez/MfqNalwxpeM=;
 b=F9LXPauaLr5Doi5V8T4OvuKDHjxBT8nqZBE+8FCoWrYZ5Zv5X/5tEicN
 iv6WeyVLPEDNkzWgzvOALtWaTrwgc+sJgI+7zNQcSfMFm+M1GHRYwN2Wf
 IqH/uzii3hlkwwm94ADbR8/fCHeZ1VlSTIO1tqrtQ/0lRFHo+Hxh2HNPU
 8DMjAOPJ+w/x4p2IHVtDJ5MXjpEGhBQYrpsDhvGSwDqcyyTsZ6XT1ttvg
 Eq56vBQy9Nk12NXEeRRf77lqGhx+yikha1fuel4KIHLi/9znpgftkJZvd
 GMTEr79cLikgHoxMi7hvQkZK2Owt09Wq/FysQly3j7pwKB+2nbslp3/c6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="302560505"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="302560505"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 14:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="688050589"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="688050589"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 07 Oct 2022 14:11:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Oct 2022 00:11:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Oct 2022 00:11:07 +0300
Message-Id: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Do the DRIVER_ATOMIC feature
 disable later
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we do the DRIVER_ATOMIC disable as almost the
first thing during pci probe. That involves the use of
DISPLAY_VER() which is perhaps a bit sketchy now that we
may need to read that out from the hardware itself.
Looks like we do populate a default value for it anyway
so the current does at least still work.

But let's make this safer anyway and move the code
into intel_device_info_runtime_init() where we also
handle the same thing for the !HAS_DISPLAY case.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c       | 4 ----
 drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fb3826dabe8b..cebe347f424c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -894,10 +894,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (IS_ERR(i915))
 		return PTR_ERR(i915);
 
-	/* Disable nuclear pageflip by default on pre-ILK */
-	if (!i915->params.nuclear_pageflip && DISPLAY_VER(i915) < 5)
-		i915->drm.driver_features &= ~DRIVER_ATOMIC;
-
 	ret = pci_enable_device(pdev);
 	if (ret)
 		goto out_fini;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 908ec241fe71..b691b7c8c254 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -507,6 +507,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		runtime->has_dmc = false;
 		runtime->has_dsc = false;
 	}
+
+	/* Disable nuclear pageflip by default on pre-ILK */
+	if (!dev_priv->params.nuclear_pageflip && DISPLAY_VER(dev_priv) < 5)
+		dev_priv->drm.driver_features &= ~DRIVER_ATOMIC;
 }
 
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
-- 
2.35.1


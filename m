Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5F54FD33
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 21:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E82310F44C;
	Fri, 17 Jun 2022 19:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F037910F1A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 19:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655492797; x=1687028797;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3Z7iDkgzcdiQxIynLLoXsD0WexZrlaxEhmgBs2gUPAw=;
 b=U0f09BXjO1Cr6hQxh1Gi31gxeTdBOJDcuPw/shbOWcrGVCKLiZqFO6hk
 iZgRqVrjATFm8/L6JrfiyqVnMywDoXTydfO53f4SPebjQNfDdlVHRjvff
 Eg35Va1oVFoip8kAxJVh0gf2zmrRLeOmCB3ZltUWFxgJDBHDlK16uzuz1
 oto/b5SPjhgVw1ujmgCxTyDd1rCfnZNQ3I15qapVXQSudwYQT/uN3+73m
 9lkf53EpCbxAlZOWzzUsJdyAsV5CPGNgFrthL+1A8NuN56GR+Z1v8H9St
 eO4poIeGtHMRULeFTPkI0FOQBgcmukxgp3u+P3Gi61wkniSBuibgdGhjl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="365892267"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="365892267"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 12:06:37 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="590236359"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 12:06:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 12:06:29 -0700
Message-Id: <20220617190629.355356-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Call i915_gem_suspend() only after
 display is turned off
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

Gem buffers could still be in use by display after i915_gem_suspend()
is executed so there is chances that i915_gem_flush_free_objects()
will be being executed at the same time that
intel_runtime_pm_driver_release() is executed printing warnings about
wakerefs will being held.

So here only calling i915_gem_suspend() and by consequence
i915_gem_drain_freed_objects() only after display is down making
sure all buffers are freed.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654a..4227675dd1cfe 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1067,8 +1067,6 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_runtime_pm_disable(&i915->runtime_pm);
 	intel_power_domains_disable(i915);
 
-	i915_gem_suspend(i915);
-
 	if (HAS_DISPLAY(i915)) {
 		drm_kms_helper_poll_disable(&i915->drm);
 
@@ -1085,6 +1083,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	intel_dmc_ucode_suspend(i915);
 
+	i915_gem_suspend(i915);
+
 	/*
 	 * The only requirement is to reboot with display DC states disabled,
 	 * for now leaving all display power wells in the INIT power domain
-- 
2.36.1


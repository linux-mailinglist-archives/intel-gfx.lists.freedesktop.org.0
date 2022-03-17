Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AFA4DCDAB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC9610E743;
	Thu, 17 Mar 2022 18:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E939110E743
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542207; x=1679078207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qxG4k7bVSEdqJiArfeXsy7+NRfpBwwuTTShBTU3B6YY=;
 b=hEScZZmYCcQ+P1yrbDqfbZENMD9XHcWtKkTml3kEi+TsXIIDioGfd7RR
 YiRilks/NxPHKlE1/ymFvf9SYiPzUSaapvx7qulfN+7VQ2wrKeWNjmmrn
 FmsDbHsoHCq8tDiAFG8g1LJN2NthT7hvU6PQDFhF7hZ4TiHxPCYko35Z2
 wY2G8S8Ok/cIC3TfcxZ89cU0GTV+RESoRLLfrg+j7weYFtWpv/kimItVA
 3vlVoQ5Dfpq3iY4mndlwAzHNaQlZPeamktxa0++RGkrrsiKV9lGVjKxT4
 EKhZjIYoZZ20pFQ3/IB1uWIvRshFo/D4kpScJgYfbRVBT7wXYyClQyYUi w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244405467"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="244405467"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="715149410"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:17 +0200
Message-Id: <99df4792990e8291db420a1a4279afa1c9011074.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/dmc: don't register DMC debugfs
 file if there's no DMC
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Register the DMC debugfs file only on platforms that support
DMC. There's no point in having a no-op debugfs file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 5de13f978e57..8dfa2aa9f8bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -818,9 +818,6 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	struct intel_dmc *dmc;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
 
-	if (!HAS_DMC(i915))
-		return -ENODEV;
-
 	dmc = &i915->dmc;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
@@ -890,6 +887,9 @@ void intel_dmc_debugfs_register(struct drm_i915_private *i915)
 {
 	struct drm_minor *minor = i915->drm.primary;
 
+	if (!HAS_DMC(i915))
+		return;
+
 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
 			    i915, &intel_dmc_debugfs_status_fops);
 }
-- 
2.30.2


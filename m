Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24702672480
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 18:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4496310E7AF;
	Wed, 18 Jan 2023 17:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E15F210E7AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 17:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674061764; x=1705597764;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mal5Dn6a4kEcQVNtcSbE1fHQNFFEXr/8Yes5kikHWEo=;
 b=fr2Ye2NfaR8a6T97MM/Oarwk8Gv6hRd/+Icjs+4FSD3uKt7PmS3TDB8X
 hBWZ4ta+Gk0VuJRhXrVYT51CnBjn6sNIPbiIB46cFBcv+suXyLKdjNVnp
 oiiskBbNxJvTG/u/Yj7Pf1TU1/kt4TfcZPjcC7A5CRASJC7Tb9OGkWK5t
 fQwMKb+ixUk9VimnmSt0YyFdrUIZdDQ9iXs0fmDbDDzt7f6jrxqwJI92N
 DD0qHLeLWf41Fe3WqTv6caOfI8qoGOqK0DM1vsQlW5CS5CgLHinyp3coC
 MxI0OKbaw0R90yBxTZ6sQYbhxB/hyPQeP2RdGw04/HdPTjtUY9m6y6IsJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="322730660"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="322730660"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 09:06:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="767831024"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="767831024"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 09:06:32 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 18:06:24 +0100
Message-Id: <20230118170624.9326-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unused variable
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Removed unused i915 var.

Fixes: a273e95721e9 ("drm/i915: Allow switching away via vga-switcheroo if uninitialized")
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 33e231b120c1..6469c7c1e154 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1071,8 +1071,6 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
  */
 static void i915_driver_lastclose(struct drm_device *dev)
 {
-	struct drm_i915_private *i915 = to_i915(dev);
-
 	intel_fbdev_restore_mode(dev);
 
 	vga_switcheroo_process_delayed_switch();
-- 
2.39.0


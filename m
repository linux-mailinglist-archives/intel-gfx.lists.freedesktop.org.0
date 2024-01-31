Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AD3844773
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 19:49:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB94310FC26;
	Wed, 31 Jan 2024 18:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C231810FC34
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 18:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706726938; x=1738262938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ItJGAFEvnZ171d/R49mTz+oSnyJs/lOFM3q8XGSPEs=;
 b=Ort7BIj2rURGo+3V9WQO+5+01mLvjW2Fmyq+eQLQJaC/a9GzFkvvnMwl
 VyXM4daLjDcIGcMdGmmEWpp6Z11pinlBvIChCBsIJkV2qyS/zKU/EbbCs
 lb5gMvx0sCPC/WnYEfFkW3/AdpRLHCSWl8Ee4ZGbxsaZJBobsdq9R8yNb
 LgwOJS18RToJWzqJB00VFt+08eBgHHLHYhu6cpGwbvUwMX9OHzK72Kbu4
 4HWAg69oQ6YmADnGcYkpFFqyVdAtTx+8fC+HLo5v3n8trSElIurzhf4QJ
 g/mgqAC5dCFitmA6b6E+BpTcnKZrvN/ryhILRzEAdLUQqQd3FFMruZZZa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="11072307"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="11072307"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:48:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="4257985"
Received: from abarrete-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:48:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/bios: abstract child device expected size
Date: Wed, 31 Jan 2024 20:48:41 +0200
Message-Id: <20240131184841.872487-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131184841.872487-1-jani.nikula@intel.com>
References: <20240131184841.872487-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add a function to return the expected child device size. Flip the if
ladder around and use the same versions as in documentation to make it
easier to verify. Return an error for unknown versions. No functional
changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 37 ++++++++++++++---------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9a51ab0d244e..25dde432212d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2695,25 +2695,32 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
 		print_ddi_port(devdata);
 }
 
+static int child_device_expected_size(u16 version)
+{
+	if (version > 256)
+		return -ENOENT;
+	else if (version >= 256)
+		return 40;
+	else if (version >= 216)
+		return 39;
+	else if (version >= 196)
+		return 38;
+	else if (version >= 195)
+		return 37;
+	else if (version >= 111)
+		return LEGACY_CHILD_DEVICE_CONFIG_SIZE;
+	else if (version >= 106)
+		return 27;
+	else
+		return 22;
+}
+
 static bool child_device_size_valid(struct drm_i915_private *i915, int size)
 {
 	int expected_size;
 
-	if (i915->display.vbt.version < 106) {
-		expected_size = 22;
-	} else if (i915->display.vbt.version < 111) {
-		expected_size = 27;
-	} else if (i915->display.vbt.version < 195) {
-		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
-	} else if (i915->display.vbt.version == 195) {
-		expected_size = 37;
-	} else if (i915->display.vbt.version <= 215) {
-		expected_size = 38;
-	} else if (i915->display.vbt.version <= 255) {
-		expected_size = 39;
-	} else if (i915->display.vbt.version <= 256) {
-		expected_size = 40;
-	} else {
+	expected_size = child_device_expected_size(i915->display.vbt.version);
+	if (expected_size < 0) {
 		expected_size = sizeof(struct child_device_config);
 		BUILD_BUG_ON(sizeof(struct child_device_config) < 39);
 		drm_dbg(&i915->drm,
-- 
2.39.2


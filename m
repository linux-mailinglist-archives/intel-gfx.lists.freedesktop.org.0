Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E475583EEBE
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jan 2024 17:39:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD1D10F2A4;
	Sat, 27 Jan 2024 16:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F5810F2A4;
 Sat, 27 Jan 2024 16:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706373522; x=1737909522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gdVnUP8TbP9vCLbNwsRkFxclRFjOiThtPx4VdTUh4cQ=;
 b=eoxpuonV9WwVYthqHgl6ctlnAoUO8P2OUYL2XCtTNdOec0mCvL5+qr9Y
 nNmlQ77EPbxy7EvLs0ZiRMtXyL9TvmZIPlt9VS4kLhl+EWAJ1zBspxJ4j
 l6gTJo7OSo4lmthktougNqowVh6jhvzhvi7KF+b51a2HclruTLVzDqynF
 SXgwXj31DRky0HloM/+XTI/DGvXTXaGpNOANRjx0vwxf4Fbt7LdcKTcGx
 25y9tQFnEkAUQWjt3fAshpAXAooQYtgJWQ2PuUKoRkyykII36Ftcz4kQM
 d59SOy8HY1Y0Hp4j8/PdSep674QM7EFUdpP+8fulgekc9tPC5zoozpNxS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="16219891"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="16219891"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2024 08:38:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="930659012"
X-IronPort-AV: E=Sophos;i="6.05,220,1701158400"; d="scan'208";a="930659012"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2024 08:38:36 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-xe@lists.freedesktop.org
Subject: [PATCH v2] drm/hwmon: Fix abi doc warnings
Date: Sat, 27 Jan 2024 22:20:40 +0530
Message-Id: <20240127165040.2348009-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 thomas.hellstrom@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This fixes warnings in xe, i915 hwmon docs

Warning: /sys/devices/.../hwmon/hwmon<i>/curr1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:35  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:52
Warning: /sys/devices/.../hwmon/hwmon<i>/energy1_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:54  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:65
Warning: /sys/devices/.../hwmon/hwmon<i>/in0_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:46  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:0
Warning: /sys/devices/.../hwmon/hwmon<i>/power1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:22  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:39
Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:0  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:8
Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max_interval is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:62  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:30
Warning: /sys/devices/.../hwmon/hwmon<i>/power1_rated_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:14  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:22

Fixes: fb1b70607f73 ("drm/xe/hwmon: Expose power attributes")
Fixes: 92d44a422d0d ("drm/xe/hwmon: Expose card reactive critical power")
Fixes: fbcdc9d3bf58 ("drm/xe/hwmon: Expose input voltage attribute")
Fixes: 71d0a32524f9 ("drm/xe/hwmon: Expose hwmon energy attribute")
Fixes: 4446fcf220ce ("drm/xe/hwmon: Expose power1_max_interval")
Fixes: f8572bb67525 ("drm/i915/hwmon: Add HWMON current voltage support")
Fixes: 99f55efb7911 ("drm/i915/hwmon: Power PL1 limit and TDP setting")
Fixes: 4c2572fe0ae7 ("drm/i915/hwmon: Expose power1_max_interval")
Fixes: c8939848f7e4 ("drm/i915/hwmon: Expose card reactive critical power")
Fixes: c41b8bdcc297 ("drm/i915/hwmon: Show device level energy usage")

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Lucas Demarchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/all/20240125113345.291118ff@canb.auug.org.au/
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon      | 14 +++++++-------
 .../ABI/testing/sysfs-driver-intel-xe-hwmon        | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 8d7d8f05f6cd..92fe7c5c5ac1 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -1,4 +1,4 @@
-What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/in0_input
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
@@ -6,7 +6,7 @@ Description:	RO. Current Voltage in millivolt.
 
 		Only supported for particular Intel i915 graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/power1_max
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
@@ -20,7 +20,7 @@ Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
 
 		Only supported for particular Intel i915 graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_rated_max
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/power1_rated_max
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
@@ -28,7 +28,7 @@ Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel i915 graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_interval
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/power1_max_interval
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
@@ -37,7 +37,7 @@ Description:	RW. Sustained power limit interval (Tau in PL1/Tau) in
 
 		Only supported for particular Intel i915 graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_crit
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/power1_crit
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
@@ -50,7 +50,7 @@ Description:	RW. Card reactive critical (I1) power limit in microwatts.
 
 		Only supported for particular Intel i915 graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/curr1_crit
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/curr1_crit
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
@@ -63,7 +63,7 @@ Description:	RW. Card reactive critical (I1) power limit in milliamperes.
 
 		Only supported for particular Intel i915 graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
+What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/energy1_input
 Date:		February 2023
 KernelVersion:	6.2
 Contact:	intel-gfx@lists.freedesktop.org
diff --git a/Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon
index 8c321bc9dc04..023fd82de3f7 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon
@@ -1,4 +1,4 @@
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/power1_max
 Date:		September 2023
 KernelVersion:	6.5
 Contact:	intel-xe@lists.freedesktop.org
@@ -12,7 +12,7 @@ Description:	RW. Card reactive sustained  (PL1) power limit in microwatts.
 
 		Only supported for particular Intel xe graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_rated_max
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/power1_rated_max
 Date:		September 2023
 KernelVersion:	6.5
 Contact:	intel-xe@lists.freedesktop.org
@@ -20,7 +20,7 @@ Description:	RO. Card default power limit (default TDP setting).
 
 		Only supported for particular Intel xe graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_crit
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/power1_crit
 Date:		September 2023
 KernelVersion:	6.5
 Contact:	intel-xe@lists.freedesktop.org
@@ -33,7 +33,7 @@ Description:	RW. Card reactive critical (I1) power limit in microwatts.
 
 		Only supported for particular Intel xe graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/curr1_crit
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/curr1_crit
 Date:		September 2023
 KernelVersion:	6.5
 Contact:	intel-xe@lists.freedesktop.org
@@ -44,7 +44,7 @@ Description:	RW. Card reactive critical (I1) power limit in milliamperes.
 		the operating frequency if the power averaged over a window
 		exceeds this limit.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/in0_input
 Date:		September 2023
 KernelVersion:	6.5
 Contact:	intel-xe@lists.freedesktop.org
@@ -52,7 +52,7 @@ Description:	RO. Current Voltage in millivolt.
 
 		Only supported for particular Intel xe graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/energy1_input
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/energy1_input
 Date:		September 2023
 KernelVersion:	6.5
 Contact:	intel-xe@lists.freedesktop.org
@@ -60,7 +60,7 @@ Description:	RO. Energy input of device in microjoules.
 
 		Only supported for particular Intel xe graphics platforms.
 
-What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_interval
+What:		/sys/bus/pci/drivers/xe/.../hwmon/hwmon<i>/power1_max_interval
 Date:		October 2023
 KernelVersion:	6.6
 Contact:	intel-xe@lists.freedesktop.org
-- 
2.25.1


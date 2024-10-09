Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA5099796F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 02:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACECE10E16D;
	Thu, 10 Oct 2024 00:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlSiFy7d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2C510E125;
 Thu, 10 Oct 2024 00:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728518512; x=1760054512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=whS9d45QxXzenYURIpM2Wevv0ZRQyiJgi5Ql0fn7STU=;
 b=MlSiFy7d5mF0x9y2R3xM7G7TTMKOXoUYSpeWcF3lUgijogOG6fEVT+U1
 chEwFvFQWVvZ/VXgGFP9YBkQx596SnKqsji5UlMPsDfwmXy764M9vrILP
 uRGWbU32orWSWCtzdblpDepYVEmZnUAb8ojS++XDu9dpBiPltQT25AAV5
 Rjzqa0Z/Zws2WVyoAoMP6YQCI3LRSdVaQXW6wo9RVu1FkLTQoOwy15cqt
 CzVnJ5iw3vkVTT7AOG2li39QOY6m17C+QLIhZmFFiQWnFqdbyLZXI3Lye
 GRSwFWdMGQEvcaSU/WKzkF6K8CrrS8+3sjdfzfFxHUouHgqLHI88cHNZz g==;
X-CSE-ConnectionGUID: zgUVBBuUSZeGWFTIk7496w==
X-CSE-MsgGUID: +XSlNYyNT2Sa38Pv6VAPuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15470688"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="15470688"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 17:01:47 -0700
X-CSE-ConnectionGUID: qfvJK3vuQuOj+oadbt9z2Q==
X-CSE-MsgGUID: xs2WYBuNQBmo3tHamI4KDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="80977584"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by fmviesa004.fm.intel.com with ESMTP; 09 Oct 2024 17:01:46 -0700
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: [PATCH] drm/xe/display: Fix memory leak in parse_lfp_panel_dtd()
Date: Wed,  9 Oct 2024 23:27:09 +0000
Message-Id: <20241009232709.961628-1-shuicheng.lin@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The function parse_lfp_panel_dtd() is called when the driver
attempts to initialize the eDP connector, and it allocates memory,
which is recorded in panel->vbt.lfp_vbt_mode. However, since no
eDP panel is connected, the driver fails at intel_edp_init_dpcd()
and follows the failure path. Unfortunately, the allocated memory
is not freed in this case.

To fix this issue, free the memory in the failure path.

leak info from kmemleak:
"
unreferenced object 0xffff8881252f8800 (size 128):
  comm "systemd-udevd", pid 192, jiffies 4294896880
  hex dump (first 32 bytes):
    e8 fd 00 00 00 04 18 04 a0 04 40 05 00 00 00 03  ..........@.....
    03 03 09 03 26 03 00 00 0a 00 00 00 00 00 00 00  ....&...........
  backtrace (crc 7448f6b4):
    [<ffffffff82475c9b>] kmemleak_alloc+0x4b/0x80
    [<ffffffff814bb50e>] __kmalloc_cache_noprof+0x2be/0x390
    [<ffffffffa069862c>] intel_bios_init_panel+0x1c4c/0x2720 [xe]
    [<ffffffffa0699123>] intel_bios_init_panel_early+0x13/0x20 [xe]
    [<ffffffffa06fceb9>] intel_dp_init_connector+0x2f9/0x1080 [xe]
    [<ffffffffa06c370a>] intel_ddi_init+0xbba/0xf50 [xe]
    [<ffffffffa069b906>] intel_bios_for_each_encoder+0x36/0x60 [xe]
    [<ffffffffa06d7bd6>] intel_setup_outputs+0x206/0x450 [xe]
    [<ffffffffa06dad33>] intel_display_driver_probe_nogem+0x163/0x1f0 [xe]
    [<ffffffffa0680fc7>] xe_display_init_noaccel+0x27/0x70 [xe]
    [<ffffffffa05b30d6>] xe_device_probe+0x806/0x9a0 [xe]
    [<ffffffffa0612f0f>] xe_pci_probe+0x31f/0x590 [xe]
    [<ffffffff81b41718>] local_pci_probe+0x48/0xb0
    [<ffffffff81b432c8>] pci_device_probe+0xc8/0x280
    [<ffffffff81d5dde8>] really_probe+0xf8/0x390
    [<ffffffff81d5e11a>] __driver_probe_device+0x8a/0x170
"

Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 90fa73575feb..39ad71454d2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6801,6 +6801,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 out_vdd_off:
 	intel_pps_vdd_off_sync(intel_dp);
+	intel_panel_fini(intel_connector);
 
 	return false;
 }
-- 
2.25.1


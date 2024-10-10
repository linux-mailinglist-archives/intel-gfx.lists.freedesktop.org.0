Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FBB999EF4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 10:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D819110EA77;
	Fri, 11 Oct 2024 08:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JlPCsfkj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B06C10EA75
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 08:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728635060; x=1760171060;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=+l9gFbnLeJerz6+eMJ6jxdZf3F/+dIjux5jIjmh9tk0=;
 b=JlPCsfkjfkWhh5wYhQhkyHFOxDoXR4GL313SDQ7E+5K68B4L3+LHUkoV
 YuqvLczFRq6Q+YtD7tRB0EPgtOh5XkFgC/FCZnf6IfHynlt+hq+lzFYEN
 QmuqF/7h6aU2/lJw/B8rLrIcy5d5pypj+dYruwtDybvCiDP9zE6Wy2zJr
 XOUBfU4hFRroj2QeLLCL8UVPpXzoRf++ICzFA4OG94D6IryUy8HbptL5n
 r1Qx4LfAM5uMbuxxeZVXovUKBGgQjvSN7W1PQIkASeDEinP6TLo5uq1AS
 96tXpbvaPM/ktuvxDB3wk6oN9axKFdXyyLJd8AXpVayrJgfZ/3qyri/qY A==;
X-CSE-ConnectionGUID: JTs1GxoeTFOatVuK6Fj1/A==
X-CSE-MsgGUID: wwajSBqqQPaAhFr/b3KuMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="50569580"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="50569580"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:24:20 -0700
X-CSE-ConnectionGUID: AsMunhfQRPS7HTne4wLx8A==
X-CSE-MsgGUID: C8R2gksiTbuSeXL/7RS6Xw==
X-ExtLoopCount2: 2 from 10.245.246.178
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76757264"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:24:18 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Fri, 11 Oct 2024 11:24:12 +0300
Resent-Message-ID: <87bjzr6o9f.fsf@intel.com>
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Mailbox Transport; Thu, 10 Oct 2024 09:30:41 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 10 Oct 2024 09:30:40 -0700
Received: from fmviesa002.fm.intel.com (10.60.135.142) by
 orsmsx602.amr.corp.intel.com (10.22.229.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 10 Oct 2024 09:30:40 -0700
X-CSE-ConnectionGUID: ad+ctsg3RbipNoCduMw4uw==
X-CSE-MsgGUID: 2fFLl9HIQ1Su5ijBE82umw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="99976025"
Received: from osgc-linux-buildserver.sh.intel.com ([10.112.232.61])
 by fmviesa002.fm.intel.com with ESMTP; 10 Oct 2024 09:30:38 -0700
From: Shuicheng Lin <shuicheng.lin@intel.com>
To: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: Shuicheng Lin <shuicheng.lin@intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
Date: Thu, 10 Oct 2024 15:55:52 +0000
Message-ID: <20241010155552.994880-1-shuicheng.lin@intel.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: c9205538-0ac7-4d8a-be3e-08dce948e16e
X-MS-Exchange-Organization-AuthSource: ORSMSX602.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
Content-Type: text/plain
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-SCL: -1
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.6357793
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.039
MIME-Version: 1.0
X-TUID: hi22XFSinYLC
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
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 90fa73575feb..7141e3ca0d83 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6801,6 +6801,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 out_vdd_off:
 	intel_pps_vdd_off_sync(intel_dp);
+	intel_bios_fini_panel(&intel_connector->panel);
 
 	return false;
 }
-- 
2.25.1


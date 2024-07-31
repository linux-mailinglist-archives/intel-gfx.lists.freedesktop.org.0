Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B473D94372B
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 22:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4391610E22D;
	Wed, 31 Jul 2024 20:36:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elLBMgeu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E62410E22D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 20:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722458215; x=1753994215;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jVg+Bg6lvdEL3i9K/h8mJZtMpw1lr/VblDvP2GWaNUs=;
 b=elLBMgeucP+wpyHrBQdSpP6oh8iGXcPYTJ6yUOPtrSMk89VgExHmti08
 /GbpADX5iZrAdlG/r/rzPeSSlXGHZ7KCN6ptfESBUUF/8RANT5784akhq
 l5RMauFA5YzNLv9wXCs/0Sf4zt1YOXC7vBSK5zj6Q7cvy6Wq3fIc2j5e4
 kPcUcB3xcaLp20Zr/Z4dq14SpaT2CWdZiD0a8fyuZaNfNY2d5iJCuZKaU
 r1pzky24HVxB3VJTGVR9sSrkO8UBu6ORgd8Q+bbW7Ju5vfzkDqJAM5XpU
 sSRVBoWI0dm7yBG5y2CZChIG9fJnxVF4plxQZ7PfPa0Qvr4db02eYsO6d g==;
X-CSE-ConnectionGUID: BQLpoOEiSOS6NOeHJM9Pmg==
X-CSE-MsgGUID: uCtLEvy2Q+mMyWymCyFRDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="19951684"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="19951684"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 13:36:55 -0700
X-CSE-ConnectionGUID: Fq+NkHNpSmKOrCV5LLCudg==
X-CSE-MsgGUID: Dx8ONykcQiasNUl2NQJjdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="59127357"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 13:36:54 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Subject: [PATCH] drm/i915/display: Fix lfp_vbt_mode memory leak
Date: Wed, 31 Jul 2024 13:36:48 -0700
Message-ID: <20240731203648.165048-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In case anything in intel_edp_init_connector() after
intel_bios_init_panel_early() causes connector initialization to fail,
it leaks lfp_vbt_mode allocated in:
intel_bios_init_panel_early()
	intel_bios_init_panel()
		parse_lfp_data()
			parse_lfp_panel_dtd()
				panel_fixed_mode = kzalloc();
				panel->vbt.lfp_vbt_mode = panel_fixed_mode;

So here adding intel_bios_fini_panel() to the error path to free
this memory.

root@DUT147LNL:/home/gta# more /sys/kernel/debug/kmemleak
unreferenced object 0xffff88811832da00 (size 128):
  comm "modprobe", pid 1134, jiffies 4294792711
  hex dump (first 32 bytes):
    e8 fd 00 00 00 04 18 04 a0 04 40 05 00 00 00 03  ..........@.....
    03 03 09 03 26 03 00 00 0a 00 00 00 00 00 00 00  ....&...........
  backtrace (crc 7448f6b4):
    [<ffffffff812d9db0>] __kmalloc_cache_noprof+0x270/0x330
    [<ffffffffa038e56b>] intel_bios_init_panel+0x188b/0x1c70 [xe]
    [<ffffffffa03e1594>] intel_dp_init_connector+0x544/0xf00 [xe]
    [<ffffffffa03b1afb>] intel_ddi_init+0xb5b/0xf10 [xe]
    [<ffffffffa039086c>] intel_bios_for_each_encoder+0x2c/0x40 [xe]
    [<ffffffffa03c25cf>] intel_setup_outputs+0x1ff/0x470 [xe]
    [<ffffffffa03c4b63>] intel_display_driver_probe_nogem+0x133/0x1d0 [xe]
    [<ffffffffa037b659>] xe_display_init_noaccel+0x19/0x60 [xe]
    [<ffffffffa02e19f8>] xe_device_probe+0x5c8/0x720 [xe]
    [<ffffffffa032a627>] xe_pci_probe+0x7b7/0xd30 [xe]
    [<ffffffff8172d903>] pci_device_probe+0xa3/0x170
    [<ffffffff818868a0>] really_probe+0xd0/0x320
    [<ffffffff81886b63>] __driver_probe_device+0x73/0x110
    [<ffffffff81886c1a>] driver_probe_device+0x1a/0x90
    [<ffffffff81886e2a>] __driver_attach+0xaa/0x1b0
    [<ffffffff81884685>] bus_for_each_dev+0x75/0xc0

(gdb) list *(intel_bios_init_panel+0x188b)
0xb75ab is in intel_bios_init_panel (drivers/gpu/drm/i915/display/intel_bios.c:849).
844	        panel_dvo_timing = get_lfp_dvo_timing(lfp_data,
845			                                              lfp_data_ptrs,
846			                                              panel_type);
847
848	        panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
849	        if (!panel_fixed_mode)
850		                return;
851
852	        fill_detail_timing_data(i915, panel_fixed_mode, panel_dvo_timing);
853

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 09789d62001f7..bd644cc0336bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6764,6 +6764,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	return true;
 
 out_vdd_off:
+	intel_bios_fini_panel(&intel_connector->panel);
 	intel_pps_vdd_off_sync(intel_dp);
 
 	return false;
-- 
2.46.0


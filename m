Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9EB999F02
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 10:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B67810EA7D;
	Fri, 11 Oct 2024 08:27:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQDL//cJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1622F10EA7D;
 Fri, 11 Oct 2024 08:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728635277; x=1760171277;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GuOStsVN7v3Z1w/jlst54taOyydcHInkXiYYOIfP+xA=;
 b=WQDL//cJ51A82DZB5vZPW46qYsF1ADMPRfPg1gLtyD8dgDZmuvY0FW+8
 CcqbBILrSIIdZ5AdnmSCqgkU3FyfDOoklN/eoF81M83NsFRBWrBuiWBpN
 fusB+Lx5YgUoQ8DnK1bE9i2e2tdB4JmMqNvJsQwk6NLV1QYnFzXfeQz8D
 nOHgthN3a5jeqtum/TbcZRDvMGippzMMMWfekLpe+ZOFcXhTiuZiEXC6N
 BQ6dw2N8fFdJE0XOnZ+tTpqJMsouGGr1osDOxTvP8lJTws7XlYb3Jyd8P
 ZwcNUTh14vVTyIOfb2Ip9CYexZAuo/F1QTX6OZ+6/6vrsWhRuyurcoXnp Q==;
X-CSE-ConnectionGUID: LohqH56yS1CQBquGSdQSvQ==
X-CSE-MsgGUID: dqBKCzIIQ3mqEG00k3gsdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="30904481"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="30904481"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:27:56 -0700
X-CSE-ConnectionGUID: xvPaOFs1StqNsLvTSZAK1g==
X-CSE-MsgGUID: JXD3HC+lTYeIM327pTThQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77047856"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 01:27:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
In-Reply-To: <20241010155552.994880-1-shuicheng.lin@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241010155552.994880-1-shuicheng.lin@intel.com>
Date: Fri, 11 Oct 2024 11:27:48 +0300
Message-ID: <877caf6o3f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 10 Oct 2024, Shuicheng Lin <shuicheng.lin@intel.com> wrote:
> The function parse_lfp_panel_dtd() is called when the driver
> attempts to initialize the eDP connector, and it allocates memory,
> which is recorded in panel->vbt.lfp_vbt_mode. However, since no
> eDP panel is connected, the driver fails at intel_edp_init_dpcd()
> and follows the failure path. Unfortunately, the allocated memory
> is not freed in this case.
>
> To fix this issue, free the memory in the failure path.
>
> leak info from kmemleak:
> "
> unreferenced object 0xffff8881252f8800 (size 128):
>   comm "systemd-udevd", pid 192, jiffies 4294896880
>   hex dump (first 32 bytes):
>     e8 fd 00 00 00 04 18 04 a0 04 40 05 00 00 00 03  ..........@.....
>     03 03 09 03 26 03 00 00 0a 00 00 00 00 00 00 00  ....&...........
>   backtrace (crc 7448f6b4):
>     [<ffffffff82475c9b>] kmemleak_alloc+0x4b/0x80
>     [<ffffffff814bb50e>] __kmalloc_cache_noprof+0x2be/0x390
>     [<ffffffffa069862c>] intel_bios_init_panel+0x1c4c/0x2720 [xe]
>     [<ffffffffa0699123>] intel_bios_init_panel_early+0x13/0x20 [xe]
>     [<ffffffffa06fceb9>] intel_dp_init_connector+0x2f9/0x1080 [xe]
>     [<ffffffffa06c370a>] intel_ddi_init+0xbba/0xf50 [xe]
>     [<ffffffffa069b906>] intel_bios_for_each_encoder+0x36/0x60 [xe]
>     [<ffffffffa06d7bd6>] intel_setup_outputs+0x206/0x450 [xe]
>     [<ffffffffa06dad33>] intel_display_driver_probe_nogem+0x163/0x1f0 [xe]
>     [<ffffffffa0680fc7>] xe_display_init_noaccel+0x27/0x70 [xe]
>     [<ffffffffa05b30d6>] xe_device_probe+0x806/0x9a0 [xe]
>     [<ffffffffa0612f0f>] xe_pci_probe+0x31f/0x590 [xe]
>     [<ffffffff81b41718>] local_pci_probe+0x48/0xb0
>     [<ffffffff81b432c8>] pci_device_probe+0xc8/0x280
>     [<ffffffff81d5dde8>] really_probe+0xf8/0x390
>     [<ffffffff81d5e11a>] __driver_probe_device+0x8a/0x170
> "
>
> Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>

For future reference, the commit message and subject should indicate
this is v2, and what the changes were. See submitting-patches.rst.

No need to resend for this.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 90fa73575feb..7141e3ca0d83 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6801,6 +6801,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  
>  out_vdd_off:
>  	intel_pps_vdd_off_sync(intel_dp);
> +	intel_bios_fini_panel(&intel_connector->panel);
>  
>  	return false;
>  }

-- 
Jani Nikula, Intel

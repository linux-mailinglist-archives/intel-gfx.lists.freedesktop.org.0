Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F61998313
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 12:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5536D10E8B5;
	Thu, 10 Oct 2024 10:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CA8jtIU8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A542910E8B5;
 Thu, 10 Oct 2024 10:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728554515; x=1760090515;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wbxjL22Aso8geJKvR2Ebhpdwyddh/dCQ8X0yLj+rTBE=;
 b=CA8jtIU8NAKaQg8LDkxyQGYv3gRarniofJIyupmwKLnuuu+ylj9owRw1
 kNC+pz6JtuAppYWC42PsxPQZm/T0HgGUKK+nYPvz5eRRuFeMHXCJON/68
 hajrXpTSlOQ9rim1Jk/e+MwqZJkAkGxnI5TsYXyVEPh6NHvuUida14rOQ
 Hof7lUmVUYD2vBpPaQ//iIun8IVzeDRJoGV2R2xU1eUj8n+7JwSzXF1p8
 CqvxHLsa6EBT9IRRCzGiNVDIOtORptsoyg8L/9iGqfiC/w/e6a4uwc5p/
 eY5Y79VffCVfFec1pH85BZfLvJaDA2ofZd3LCg5xEJW8/1ycioKbmrIYg Q==;
X-CSE-ConnectionGUID: htFY9DQNSCGoV+G+elmWhg==
X-CSE-MsgGUID: EltbssCZRQmTY67BmuhIcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38545853"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="38545853"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 03:01:55 -0700
X-CSE-ConnectionGUID: 0lzQWPQvTG64OIFxBqalyw==
X-CSE-MsgGUID: oLCsgGlhQ5Ggf1vHPIS5JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="77367883"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.131])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 03:01:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Subject: Re: [PATCH] drm/xe/display: Fix memory leak in parse_lfp_panel_dtd()
In-Reply-To: <20241009232709.961628-1-shuicheng.lin@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009232709.961628-1-shuicheng.lin@intel.com>
Date: Thu, 10 Oct 2024 13:01:49 +0300
Message-ID: <87plo86zua.fsf@intel.com>
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

On Wed, 09 Oct 2024, Shuicheng Lin <shuicheng.lin@intel.com> wrote:
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
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 90fa73575feb..39ad71454d2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6801,6 +6801,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  
>  out_vdd_off:
>  	intel_pps_vdd_off_sync(intel_dp);
> +	intel_panel_fini(intel_connector);

It's a bit hard to follow, but this breaks the symmetry. If we end up
here, intel_panel_init() hasn't been called yet, so we shouldn't call
intel_panel_fini() either.

What we want to undo here is what was done by
intel_bios_init_panel_early() and intel_bios_init_panel_late(). The
appropriate function for that is intel_bios_fini_panel().

BR,
Jani.

>  
>  	return false;
>  }

-- 
Jani Nikula, Intel

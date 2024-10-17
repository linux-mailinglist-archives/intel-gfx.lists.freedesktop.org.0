Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBE59A2166
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 13:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB6710E802;
	Thu, 17 Oct 2024 11:46:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emaRf3nK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8932D10E7FB;
 Thu, 17 Oct 2024 11:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729165582; x=1760701582;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L+wxwGyQqmssu+Lab5dSp5b1acjSkHc3I5NYYhx/MAw=;
 b=emaRf3nK+IyJXyCvweD6wYSqe14Rradg7Cx2CKp+2/e+PjFkEVRPiQF1
 qf8hZCmm86q5/1A7SifPcs0GzAbT4q3W5hl1WYPQ7LvVP//hpMrOp+b1l
 2X5Nj4qivL/8zyU337JUzy4xK4l+kdzaf0aafrgAJnEwh796pTkvH+rt/
 Cb9RKFOwWYQDKBdkR2/ujnSrOh19exn3bLKpUy9NK4E8GH5aJsEKTg17v
 KFrDV5wb19veJS7Cx0lp8bbg3DUL7pdQH/+r2dC1CIRh9rKI0eUAiQ6fj
 WbQOi94iFpaaDq+Gl0vaUMYRRN65pJcHNYac5FC1BUU1PHiHt6DCWqKA2 Q==;
X-CSE-ConnectionGUID: nVZLo3nXQlKlKkTGFGkdyQ==
X-CSE-MsgGUID: hICIZ54gTpyuFzK65xjDvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39766480"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39766480"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 04:46:21 -0700
X-CSE-ConnectionGUID: 08NG35+5ScKq4u1z8WZjUg==
X-CSE-MsgGUID: WtYWI7L8QrGDagC1fNifCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="78563451"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Oct 2024 04:46:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Oct 2024 14:46:16 +0300
Date: Thu, 17 Oct 2024 14:46:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
Message-ID: <ZxD5COw3IjfOvxia@intel.com>
References: <20241016150154.1466131-1-shuicheng.lin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016150154.1466131-1-shuicheng.lin@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Oct 16, 2024 at 03:01:54PM +0000, Shuicheng Lin wrote:
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
> v2 (Jani):
>   -use intel_bios_fini_panel() to pair with intel_bios_init_panel_early()
> 
> Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Applied to drm-intel-next. Thanks.

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
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel

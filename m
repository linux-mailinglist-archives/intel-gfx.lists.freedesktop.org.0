Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B3F3515CD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 17:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1841C6ECD3;
	Thu,  1 Apr 2021 15:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5395C6ECD3
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 15:02:14 +0000 (UTC)
IronPort-SDR: 20k/93Zx/wxGxKiTwaDB9oGREs3/MUn0vKi5gnTgKs2Awzsk/eHN5Xe816M3oNmo30f7AJMn/m
 pqTsNFAeVHxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="179394465"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="179394465"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 08:02:13 -0700
IronPort-SDR: 0ByJku4RogepxPBDShan5Z7Lwuiej4+DdtiaBGcsiK4EbsB6yPdSYKDldblvWPCzh/T1eDP3Sw
 xsLzinVH3xnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="446299292"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Apr 2021 08:02:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Apr 2021 18:02:10 +0300
Date: Thu, 1 Apr 2021 18:02:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YGXgcmWDU1gzxIMU@intel.com>
References: <20210311144529.3059024-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311144529.3059024-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Uninit the DMC FW loader state
 during shutdown
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
Cc: intel-gfx@lists.freedesktop.org, kernel test robot <oliver.sang@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 04:45:29PM +0200, Imre Deak wrote:
> We need to wait for the DMC FW loader work to complete during shutdown,
> even if it's unlikely to be still pending by that time, fix this.
> =

> This also fixes the wakeref tracking WARN during shutdown about the
> leaked reference we hold due to a missing DMC firmware.
> =

> While at it add a TODO comment about unifying the shutdown and PM
> power-off sequences and later these sequences with the driver remove and
> system/runtime suspend sequences.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> References: https://lore.kernel.org/lkml/20210303055517.GB2708@xsang-Opti=
Plex-9020
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 3edd5e47ad68..4a0e491e9692 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1038,10 +1038,18 @@ void i915_driver_shutdown(struct drm_i915_private=
 *i915)
>  	intel_suspend_encoders(i915);
>  	intel_shutdown_encoders(i915);
>  =

> +	intel_csr_ucode_suspend(i915);
> +
>  	/*
>  	 * The only requirement is to reboot with display DC states disabled,
>  	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled matching the driver reload sequence.
> +	 * enabled.
> +	 *
> +	 * TODO:
> +	 * - unify the pci_driver::shutdown sequence here with the
> +	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
> +	 * - unify the driver remove and system/runtime suspend sequences with
> +	 *   the above unified shutdown/poweroff sequence.
>  	 */
>  	intel_power_domains_driver_remove(i915);
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

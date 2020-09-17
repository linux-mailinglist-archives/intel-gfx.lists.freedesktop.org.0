Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E2C26E1B5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 19:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD156EC5F;
	Thu, 17 Sep 2020 17:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180F66EC5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 17:05:33 +0000 (UTC)
IronPort-SDR: 1oMXEP0otgR64FSzpOdOtT0wOj/Fet2xNarnp0ZgxMtuQe2ASZ8mgBCNJv9JDDQHez5jOOjjPN
 uR/sVQhN4ueQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147433331"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="147433331"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 10:05:28 -0700
IronPort-SDR: 8N/vRbjwsJefpd49K/uBRLTJc+xwOVJsHkXBWaKejxadeTTSJ10rVWDJEHbFTgMma3lUUFA1GJ
 WTnLugPCxJ+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="307549921"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 17 Sep 2020 10:05:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Sep 2020 20:05:25 +0300
Date: Thu, 17 Sep 2020 20:05:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200917170525.GA6112@intel.com>
References: <20200917165056.29766-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917165056.29766-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: tune down GuC communication
 enabled/disabled messages
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
Cc: intel-gfx@lists.freedesktop.org, Karol Herbst <kherbst@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 17, 2020 at 07:50:56PM +0300, Jani Nikula wrote:
> The GuC communication enabled/disabled messages are too noisy in info
> level. Convert them from info to debug level, and switch to device based
> logging while at it.
> =

> Reported-by: Karol Herbst <kherbst@redhat.com>
> Cc: Karol Herbst <kherbst@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915=
/gt/uc/intel_uc.c
> index d6f55f70889d..4e6070e95fe9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -231,13 +231,15 @@ static int guc_enable_communication(struct intel_gu=
c *guc)
>  	intel_guc_ct_event_handler(&guc->ct);
>  	spin_unlock_irq(&i915->irq_lock);
>  =

> -	DRM_INFO("GuC communication enabled\n");
> +	drm_dbg(&i915->drm, "GuC communication enabled\n");
>  =

>  	return 0;
>  }
>  =

>  static void guc_disable_communication(struct intel_guc *guc)
>  {
> +	struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
> +
>  	/*
>  	 * Events generated during or after CT disable are logged by guc in
>  	 * via mmio. Make sure the register is clear before disabling CT since
> @@ -257,7 +259,7 @@ static void guc_disable_communication(struct intel_gu=
c *guc)
>  	 */
>  	guc_get_mmio_msg(guc);
>  =

> -	DRM_INFO("GuC communication disabled\n");
> +	drm_dbg(&i915->drm, "GuC communication disabled\n");
>  }
>  =

>  static void __uc_fetch_firmwares(struct intel_uc *uc)
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

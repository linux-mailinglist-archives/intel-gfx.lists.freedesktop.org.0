Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA5D1F78A6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 15:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E130B6E111;
	Fri, 12 Jun 2020 13:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEDB6E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 13:18:51 +0000 (UTC)
IronPort-SDR: V2lfdu20hvKD0OyDBNitBFb0va1nc2TCVpKt9+ZqL9eRv9wjMJ9oEazZmZc35twaoiN/iiqRgG
 uJp9GzWIC6MA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 06:18:51 -0700
IronPort-SDR: qETB9wsTG2QDem+fXPVyRz5ckcGm36fR/YJhjv0zbtrjKUe5jpGoqdTBqvdZOiBZzN6OkrOvul
 5GpZ1cUWwUUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="315129349"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Jun 2020 06:18:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jun 2020 16:18:48 +0300
Date: Fri, 12 Jun 2020 16:18:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200612131848.GH6112@intel.com>
References: <20200612121731.19596-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612121731.19596-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl+: Fix hotplug interrupt
 disabling after storm detection
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
Cc: intel-gfx@lists.freedesktop.org, Kunal Joshi <kunal1.joshi@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 03:17:31PM +0300, Imre Deak wrote:
> Atm, hotplug interrupts on TypeC ports are left enabled after detecting
> an interrupt storm, fix this.
> =

> Reported-by: Kunal Joshi <kunal1.joshi@intel.com>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/351
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/1964
> Cc: Kunal Joshi <kunal1.joshi@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 8e823ba25f5f..710224d930c5 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3132,6 +3132,7 @@ static void gen11_hpd_irq_setup(struct drm_i915_pri=
vate *dev_priv)
>  =

>  	val =3D I915_READ(GEN11_DE_HPD_IMR);
>  	val &=3D ~hotplug_irqs;
> +	val |=3D ~enabled_irqs & hotplug_irqs;
>  	I915_WRITE(GEN11_DE_HPD_IMR, val);
>  	POSTING_READ(GEN11_DE_HPD_IMR);

Wondering if we should add a function for this just
for consistency with all the other platforms. Alhthough
we don't strictly need one since we have no other users
of this register. So maybe not.

Anyways, patch is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

> -- =

> 2.23.1
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

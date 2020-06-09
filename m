Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6891F3EFC
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 17:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5436E061;
	Tue,  9 Jun 2020 15:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D846E061
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 15:14:37 +0000 (UTC)
IronPort-SDR: 7evETyETA3/dfTd0X9ztWwkFZU7lE6Q7yEicvK0oAxTrngWAQ3qboMsP78ccySpxCtJKG8joxT
 fY53qtly44tA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 08:14:36 -0700
IronPort-SDR: 52VqxY5DN+TIjGjqfb6m0+fe04oAq8Agigp1KqZzUkU258lt+VUZ+3nxEn68oG4VkTsx/bvp40
 m+7K1A4twuyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="349549433"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 09 Jun 2020 08:14:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Jun 2020 18:14:34 +0300
Date: Tue, 9 Jun 2020 18:14:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200609151433.GR6112@intel.com>
References: <20200606025740.3308880-1-matthew.d.roper@intel.com>
 <20200606025740.3308880-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200606025740.3308880-4-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 3/7] drm/i915/rkl: Update TGP's pin
 mapping when paired with RKL
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 05, 2020 at 07:57:36PM -0700, Matt Roper wrote:
> HPD pin handling for RKL+TGP is a special case; we effectively select
> the HPD pin based on the DDI (A,B,D,E) rather than the PHY (A,B,C,D).
> This differs from the regular behavior of RKL+CMP (and also TGL+TGP).
> =

> v2:
>  - Rather than providing a custom hpd_pin mapping table, just assign
>    encoder->hpd_pin in a custom manner for this setup.  (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 4f6f560e093e..d794dd5f170c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -89,6 +89,15 @@ enum hpd_pin intel_hpd_pin_default(struct drm_i915_pri=
vate *dev_priv,
>  {
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>  =

> +	/*
> +	 * RKL + TGP PCH is a special case; we effectively choose the hpd_pin
> +	 * based on the DDI rather than the PHY (i.e., the last two outputs
> +	 * shold be HPD_PORT_{D,E} rather than {C,D}.  Note that this differs
> +	 * from the behavior of both TGL+TGP and RKL+CMP.
> +	 */
> +	if (IS_ROCKETLAKE(dev_priv) && HAS_PCH_TGP(dev_priv))
> +		return HPD_PORT_A + port - PORT_A;
> +
>  	switch (phy) {
>  	case PHY_F:
>  		return IS_CNL_WITH_PORT_F(dev_priv) ? HPD_PORT_E : HPD_PORT_F;
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

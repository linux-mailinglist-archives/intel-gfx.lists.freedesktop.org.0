Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4487F13D0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 13:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F14A10E04A;
	Mon, 20 Nov 2023 12:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713D410E04A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700484802; x=1732020802;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=KJb8S+ND/xCwsHauLGmPShFjzVHyXNFQ0jySsBZCjlk=;
 b=ZrBcb1xMIY8dRpVE9waXItyLDB+R55PPfZP8tWn+Ya6lTToFUfgDC8Oj
 kHp5GG1KJxQM3suOeqkjioJqhKGbjMdan0kPog2NziWshUKxz/VKb0j4f
 irvceLOMp7wODY3KRaHq9cOTag7ynUqGqUwKa2EIBSwDykF6d6hgsb066
 S69X+E+wJHdRewZknNBE7fScsWM9iA7/Q7E0VOpQ1VE6cgjjuLoMLTZ42
 GN/6s/fVigkMnyCfMuxYHv1TbchQ9hd5i9ObSbRzGURAkoZQkBDOrk6fI
 izJJ2ORcKBrQpYno1AjCOYt0hSwyS0UaXcDVB+0L12/bD6J3o54GOZa9P Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="371787461"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="371787461"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 04:53:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="716196394"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="716196394"
Received: from avmoskal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 04:53:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231114142333.15799-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231114142333.15799-1-ville.syrjala@linux.intel.com>
Date: Mon, 20 Nov 2023 14:53:17 +0200
Message-ID: <87v89woabm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Also check for VGA converter in
 eDP probe
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Unfortunately even the HPD based detection added in
> commit cfe5bdfb27fa ("drm/i915: Check HPD live state during eDP probe")
> fails to detect that the VBT's eDP/DDI-A is a ghost on
> Asus B360M-A (CFL+CNP). On that board eDP/DDI-A has its HPD
> asserted despite nothing being actually connected there :(
> The straps/fuses also indicate that the eDP port is present.
>
> So if one boots with a VGA monitor connected the eDP probe will
> mistake the DP->VGA converter hooked to DDI-E for an eDP panel
> on DDI-A.
>
> As a last resort check what kind of DP device we've detected,
> and if it looks like a DP->VGA converter then conclude that
> the eDP port should be ignored.
>
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9636
> Fixes: cfe5bdfb27fa ("drm/i915: Check HPD live state during eDP probe")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Fingers crossed.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++++++------
>  1 file changed, 22 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 54bd0bffa9f0..14ee05fabd05 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6277,8 +6277,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	 * (eg. Acer Chromebook C710), so we'll check it only if multiple
>  	 * ports are attempting to use the same AUX CH, according to VBT.
>  	 */
> -	if (intel_bios_dp_has_shared_aux_ch(encoder->devdata) &&
> -	    !intel_digital_port_connected(encoder)) {
> +	if (intel_bios_dp_has_shared_aux_ch(encoder->devdata)) {
>  		/*
>  		 * If this fails, presume the DPCD answer came
>  		 * from some other port using the same AUX CH.
> @@ -6286,10 +6285,27 @@ static bool intel_edp_init_connector(struct intel=
_dp *intel_dp,
>  		 * FIXME maybe cleaner to check this before the
>  		 * DPCD read? Would need sort out the VDD handling...
>  		 */
> -		drm_info(&dev_priv->drm,
> -			 "[ENCODER:%d:%s] HPD is down, disabling eDP\n",
> -			 encoder->base.base.id, encoder->base.name);
> -		goto out_vdd_off;
> +		if (!intel_digital_port_connected(encoder)) {
> +			drm_info(&dev_priv->drm,
> +				 "[ENCODER:%d:%s] HPD is down, disabling eDP\n",
> +				 encoder->base.base.id, encoder->base.name);
> +			goto out_vdd_off;
> +		}
> +
> +		/*
> +		 * Unfortunately even the HPD based detection fails on
> +		 * eg. Asus B360M-A (CFL+CNP), so as a last resort fall
> +		 * back to checking for a VGA branch device. Only do this
> +		 * on known affected platforms to minimize false positives.
> +		 */
> +		if (DISPLAY_VER(dev_priv) =3D=3D 9 && drm_dp_is_branch(intel_dp->dpcd)=
 &&
> +		    (intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE=
_MASK) =3D=3D
> +		    DP_DWN_STRM_PORT_TYPE_ANALOG) {
> +			drm_info(&dev_priv->drm,
> +				 "[ENCODER:%d:%s] VGA converter detected, disabling eDP\n",
> +				 encoder->base.base.id, encoder->base.name);
> +			goto out_vdd_off;
> +		}
>  	}
>=20=20
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);

--=20
Jani Nikula, Intel

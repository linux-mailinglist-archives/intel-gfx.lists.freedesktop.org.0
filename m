Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDAB537A65
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E600A10E633;
	Mon, 30 May 2022 12:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC0A10E633
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653912603; x=1685448603;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9LsP1LR55KSe8rBBsoWJRo/8ILwfqjbMD2DeJ5NLfRg=;
 b=iPRwJVDAtHy9oAQnswU9Zj5fqo7ZSswpz26Psjlq+a7kPsm3HdJmFnmH
 /i4mQBuNpxWsYvw89Zn+CO61uv2jTojT2Wf/ofWvgmafgs0q1JU/z2Xc0
 qddg37YrB/BL43jegUvmLfcmXepg/BlFfHg75WEUoL7HEZ1NlQT3GABgc
 ATnTQLFI6Rgm9tixFNEzxex1tbKF2+Rhj34STGBP2r5/LViJCZ80Hh36O
 0dVbBdaKn1GtrsJBOgHYy/PalFYm0z+Joqno1oYL2MUBeNTEm13Fqs+Ya
 hpz8syUZ7yIPafre4c2suuVu8TMnBD81lNdCrcAgcEnXSaqGEXa0zKuxK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="254858735"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="254858735"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:10:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="750951562"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:10:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-27-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-27-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:09:58 +0300
Message-ID: <87tu97rzl5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 26/26] drm/i915: Round TMDS clock to nearest
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use round-to-nearest behavour when calculating the TMDS clock.
> Matches what we co for most other clock related things.

*do

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c  | 3 ++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 0cf2d4fba6a8..8b3e6ae85a08 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -330,7 +330,8 @@ int intel_crtc_dotclock(const struct intel_crtc_state=
 *pipe_config)
>  		dotclock =3D intel_dotclock_calculate(pipe_config->port_clock,
>  						    &pipe_config->dp_m_n);
>  	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
> -		dotclock =3D pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
> +		dotclock =3D DIV_ROUND_CLOSEST(pipe_config->port_clock * 24,
> +					     pipe_config->pipe_bpp);
>  	else
>  		dotclock =3D pipe_config->port_clock;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 1ae09431f53a..0b04b3800cd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1891,7 +1891,7 @@ int intel_hdmi_tmds_clock(int clock, int bpc, bool =
ycbcr420_output)
>  	 *  1.5x for 12bpc
>  	 *  1.25x for 10bpc
>  	 */
> -	return clock * bpc / 8;
> +	return DIV_ROUND_CLOSEST(clock * bpc, 8);
>  }
>=20=20
>  static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915=
, int bpc)

--=20
Jani Nikula, Intel Open Source Graphics Center

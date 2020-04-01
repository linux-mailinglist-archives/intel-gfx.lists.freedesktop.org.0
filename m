Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5A519AB4F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 14:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D986E930;
	Wed,  1 Apr 2020 12:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0810B6E92C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 12:09:20 +0000 (UTC)
IronPort-SDR: 0gA1X4YCThPN7/hZHKT3lnwWTm4Ml5qtAsvouHqgY7eWHcGnybE/C2BOydpBWW07Pefz0cNNLY
 YjOFL+Oizvew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:09:20 -0700
IronPort-SDR: byMnMT9GU6S1HCseMark01/i+70WpfCrK1iKGBkl577rHp6QPLEqqeXhBmug6BdAujfBBVPvtc
 Ns6+dFQk+SCQ==
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="422695616"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 05:09:18 -0700
Date: Wed, 1 Apr 2020 15:09:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200401120913.GC24964@ideak-desk.fi.intel.com>
References: <20200401004120.408586-1-jose.souza@intel.com>
 <20200401004120.408586-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401004120.408586-3-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display: Add
 intel_aux_ch_to_power_domain()
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
Reply-To: imre.deak@intel.com
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 31, 2020 at 05:41:17PM -0700, Jos=E9 Roberto de Souza wrote:
> This is a similar function to intel_aux_power_domain() but it do not
> care about TBT ports, this will be needed by GEN11 TC sequences.
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  2 files changed, 14 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e09a11b1e509..7e06d2306dcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7278,7 +7278,17 @@ intel_aux_power_domain(struct intel_digital_port *=
dig_port)
>  		}
>  	}
>  =

> -	switch (dig_port->aux_ch) {
> +	return intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +}
> +
> +/*
> + * Converts aux_ch to power_domain without caring about TBT ports for th=
at use
> + * intel_aux_power_domain()
> + */
> +enum intel_display_power_domain
> +intel_aux_ch_to_power_domain(enum aux_ch aux_ch)

Maybe intel_legacy_aux_to_power_domain()?

> +{
> +	switch (aux_ch) {
>  	case AUX_CH_A:
>  		return POWER_DOMAIN_AUX_A;
>  	case AUX_CH_B:
> @@ -7294,7 +7304,7 @@ intel_aux_power_domain(struct intel_digital_port *d=
ig_port)
>  	case AUX_CH_G:
>  		return POWER_DOMAIN_AUX_G;
>  	default:
> -		MISSING_CASE(dig_port->aux_ch);
> +		MISSING_CASE(aux_ch);
>  		return POWER_DOMAIN_AUX_A;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index adb1225a3480..ad50119c0453 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -579,6 +579,8 @@ void hsw_disable_ips(const struct intel_crtc_state *c=
rtc_state);
>  enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> +enum intel_display_power_domain
> +intel_aux_ch_to_power_domain(enum aux_ch aux_ch);
>  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
>  				 struct intel_crtc_state *pipe_config);
>  void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

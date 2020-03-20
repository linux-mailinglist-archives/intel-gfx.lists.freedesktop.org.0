Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8153F18D70D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 19:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35906E20E;
	Fri, 20 Mar 2020 18:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2BA6E1F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 18:31:52 +0000 (UTC)
IronPort-SDR: Z+MV0GqhK0TWLeEvBiwO7Wpn5ocOitL4MESi7T5OOeKGhRNQKuJsdcO3vPGCPWGlToCuhkvHeY
 FQt4Zb4OPl7A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 11:31:52 -0700
IronPort-SDR: CEGSqdu52h0v7YYpNkK5Nt7UPirrzqFEu4bW5daAjIi6xaR+/VS2EXtHljxComonmP1Ge/uk9Q
 vet8En79r9mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="234590447"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga007.jf.intel.com with ESMTP; 20 Mar 2020 11:31:51 -0700
Date: Fri, 20 Mar 2020 11:33:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200320183329.GA15035@intel.com>
References: <20200319163844.22783-1-ville.syrjala@linux.intel.com>
 <20200319163844.22783-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319163844.22783-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm: Constify adjusted_mode a bit
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

On Thu, Mar 19, 2020 at 06:38:44PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The DP link computation functions shouldn't modify the
> adjusted_mode so make it const.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 8491ce8b8c15..110d82ee4859 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2181,7 +2181,8 @@ static int intel_dp_dsc_compute_config(struct intel=
_dp *intel_dp,
>  {
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
> -	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&pipe_config->hw.adjusted_mode;
>  	u8 dsc_max_bpc;
>  	int pipe_bpp;
>  	int ret;
> @@ -2296,7 +2297,8 @@ intel_dp_compute_link_config(struct intel_encoder *=
encoder,
>  			     struct intel_crtc_state *pipe_config,
>  			     struct drm_connector_state *conn_state)
>  {
> -	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&pipe_config->hw.adjusted_mode;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	int common_len;
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

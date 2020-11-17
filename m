Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 712AA2B55BE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 01:33:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8596E0BC;
	Tue, 17 Nov 2020 00:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761916E0BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 00:33:50 +0000 (UTC)
IronPort-SDR: NTaAxG7MLO5Xk3vfRRlAdxAkqx2ZA88EhmsSAu2h9BiQzO5VPhhbd72FQCgXxuP8meuQsBMSht
 oAT9NE/QrO7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="232454445"
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="232454445"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:33:45 -0800
IronPort-SDR: 3m/2PaZbQEjUbgnUu7Qjcw28NAUyIPhlSWYMLu+zS9AvxmYR/HsfCGVsLJ2g7EfT6LEWIuQp/B
 16Cy8ijf1g9g==
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="475723355"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:33:44 -0800
Date: Mon, 16 Nov 2020 16:36:13 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201117003613.GA29361@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-23-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-23-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 22/23] drm/i915: Add bigjoiner state dump
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

On Sat, Nov 14, 2020 at 12:03:57AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Add a big of bigjoiner information to the state dump.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7607bcd9b7fe..8b51bb096b48 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13345,6 +13345,10 @@ static void intel_dump_pipe_config(const struct =
intel_crtc_state *pipe_config,
>  		    transcoder_name(pipe_config->master_transcoder),
>  		    pipe_config->sync_mode_slaves_mask);
>  =

> +	drm_dbg_kms(&dev_priv->drm, "bigjoiner: %s\n",
> +		    pipe_config->bigjoiner_slave ? "slave" :
> +		    pipe_config->bigjoiner ? "master" : "no");
> +
>  	if (pipe_config->has_pch_encoder)
>  		intel_dump_m_n_config(pipe_config, "fdi",
>  				      pipe_config->fdi_lanes,
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

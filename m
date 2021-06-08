Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D261239EF7F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529F16EAD2;
	Tue,  8 Jun 2021 07:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9326EAD2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 07:26:48 +0000 (UTC)
IronPort-SDR: lnKVpdtnu5W021tsfAQnqk1SDg1scqzMYx1jUXg6soHRVMxLYNyWV2ObfcDWGwPliST6LMEWq8
 Lw4YAr5JcwxA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="201769836"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="201769836"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:26:48 -0700
IronPort-SDR: Yvzik6zXjTBuGmqqMLCCIz/22V4ojqs65YD6vkyhuFP6w81P91ViOT0DI7poBh40kgNiM6RN59
 AebRJA1khaAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="440361394"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 08 Jun 2021 00:26:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jun 2021 10:26:45 +0300
Date: Tue, 8 Jun 2021 10:26:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YL8btV/81CFi+ytm@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
 <20210514232247.144542-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514232247.144542-4-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/display: Drop FIXME about
 turn off infoframes
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

On Fri, May 14, 2021 at 04:22:47PM -0700, Jos=E9 Roberto de Souza wrote:
> intel_dp_set_infoframes() call in intel_ddi_post_disable_dp() will
> take care to disable all enabled infoframes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 1 -
>  1 file changed, 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 5bc5528f3091..d3bc5a1a936a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2762,7 +2762,6 @@ static void intel_ddi_pre_enable(struct intel_atomi=
c_state *state,
>  					conn_state);
>  =

>  		/* FIXME precompute everything properly */
> -		/* FIXME how do we turn infoframes off again? */

The FIXME was there for LSPCON and shouldn't have been removed.
No one has yet figured out how to do this.

>  		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
>  			dig_port->set_infoframes(encoder, true, crtc_state,
>  						 conn_state);
> -- =

> 2.31.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

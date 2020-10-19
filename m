Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF5929313E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 00:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7193B6EB52;
	Mon, 19 Oct 2020 22:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ACEA6EB52
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 22:30:05 +0000 (UTC)
IronPort-SDR: vbjEla5FjhbHOtCjXsBpudSaxX87Lh8hj8GXkeJHx0nUHRZRdObGVKFha8RtrXGpwG4oar6Mqe
 nHHByJZuEw4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="166342260"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="166342260"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 15:30:01 -0700
IronPort-SDR: hrQ1pyFNbwqw0BuMABwV7tzWD1VLoUthi3lru4WXKUkiA/0F7KsxAzb0xCVbD4LZaTUdh6EshL
 jGMkBzmMUe9A==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="320433006"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 15:30:01 -0700
Date: Mon, 19 Oct 2020 15:31:41 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201019223140.GA22411@labuser-Z97X-UD5H>
References: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Drop one more usless
 master_transcoder assignment
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

On Tue, Oct 20, 2020 at 12:43:31AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

 =

> We dropped the other redundant master_transcoder assignments
> earlier, but this one slipped through. Get rid of it as well.
> The crtc state gets fully reset before readout so there is
> no point in doing this.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 --
>  1 file changed, 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 24d85b2689d5..30303088a344 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11250,8 +11250,6 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>  	bool active;
>  	u32 tmp;
>  =

> -	pipe_config->master_transcoder =3D INVALID_TRANSCODER;
> -
>  	power_domain =3D POWER_DOMAIN_PIPE(crtc->pipe);
>  	wf =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
>  	if (!wf)
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

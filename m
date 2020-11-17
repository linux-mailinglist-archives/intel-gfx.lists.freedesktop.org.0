Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 544382B55AB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 01:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57BC96E0B7;
	Tue, 17 Nov 2020 00:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA0F6E0B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 00:25:22 +0000 (UTC)
IronPort-SDR: oltyndwIPJ32CZuRr+aoVeSC2z5HpGfCgdBZMLJFoQjlH+puLIjvFHwR9T8K5U3ASjcnfIlW4c
 wn0t6Y7U0vnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="234988716"
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="234988716"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:25:17 -0800
IronPort-SDR: mlEtEklfMErdxVI3HqgOW0Wwc4Cf43AaP0vwPVayWckbiOAf35vDydN8X/17sXLmqqeNfCiSGr
 WmX5WkzC11aA==
X-IronPort-AV: E=Sophos;i="5.77,484,1596524400"; d="scan'208";a="310559310"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 16:25:17 -0800
Date: Mon, 16 Nov 2020 16:27:43 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201117002743.GA29332@labuser-Z97X-UD5H>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-21-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113220358.24794-21-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 20/23] drm/i915: Disable legacy cursor
 fastpath for bigjoiner
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

On Sat, Nov 14, 2020 at 12:03:55AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The legacy cursor fastpath code doesn't deal with bigjoiner.
> Disable the fastpath for now.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index eeb50413fc8e..19e9c3795265 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16892,9 +16892,11 @@ intel_legacy_cursor_update(struct drm_plane *_pl=
ane,
>  	/*
>  	 * When crtc is inactive or there is a modeset pending,
>  	 * wait for it to complete in the slowpath
> +	 *
> +	 * FIXME bigjoiner fastpath would be good
>  	 */
>  	if (!crtc_state->hw.active || needs_modeset(crtc_state) ||
> -	    crtc_state->update_pipe)
> +	    crtc_state->update_pipe || crtc_state->bigjoiner)
>  		goto slow;
>  =

>  	/*
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

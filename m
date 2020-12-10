Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7A92D5F13
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 16:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830B56EA9D;
	Thu, 10 Dec 2020 15:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DA86EA9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 15:09:25 +0000 (UTC)
IronPort-SDR: H/87sMhmgr6fDaiTOIv16xIP1AoX1ta2y8MN2TlddfoApuaGHry8tDGPa0w9hoCSP9vmtIZDmj
 BY0AVMeITB1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="161319766"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="161319766"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 07:09:25 -0800
IronPort-SDR: pxVsgRpAcAZRisTLJvD88+m8U6twZsxyhsthcFBEkk8xMEln16UsXzADwhALKU6ui6AcaFJzTG
 WgKuMItVOHQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364723323"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 10 Dec 2020 07:09:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Dec 2020 17:09:22 +0200
Date: Thu, 10 Dec 2020 17:09:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9I6Ij+8h3VaoDLt@intel.com>
References: <20201210041755.29088-1-airlied@gmail.com>
 <20201210041755.29088-4-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210041755.29088-4-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/display: fix misused comma
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

On Thu, Dec 10, 2020 at 02:17:49PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> There is no need for a comma use here.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 62e22d832cab..79d7479beed2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -989,7 +989,8 @@ chv_find_best_dpll(const struct intel_limit *limit,
>  	 * set to 2.  If requires to support 200Mhz refclk, we need to
>  	 * revisit this because n may not 1 anymore.
>  	 */
> -	clock.n =3D 1, clock.m1 =3D 2;
> +	clock.n =3D 1;
> +	clock.m1 =3D 2;
>  	target *=3D 5;	/* fast clock */
>  =

>  	for (clock.p1 =3D limit->p1.max; clock.p1 >=3D limit->p1.min; clock.p1-=
-) {
> -- =

> 2.27.0
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

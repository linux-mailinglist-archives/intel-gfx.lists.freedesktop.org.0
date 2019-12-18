Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79522124F56
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 18:31:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DDC6E090;
	Wed, 18 Dec 2019 17:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD666E090
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 17:31:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 09:31:01 -0800
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="210154534"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 09:31:00 -0800
Date: Wed, 18 Dec 2019 19:30:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191218173037.GA30964@ideak-desk.fi.intel.com>
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/fbc: Reject
 PLANE_OFFSET.y%4!=0 on icl+ too
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 03:34:48PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> icl and tgl are still affected by the modulo 4 PLANE_OFFSET.y
> underrun issue. Reject such configurations on all gen9+ platforms.
> =

> Can be reproduced easily with the following sequence of
> hardware poking:
> while {
>   write FBC_CTL.enable=3D1
>   wait for vblank
> =

>   write PLANE_OFFSET .x=3D0 .y=3D32
>   write PLANE_SURF
>   wait for vblank
> =

>   # if PLANE_OFFSET.y is multiple of 4 the underrun won't happen
>   write PLANE_OFFSET .x=3D0 .y=3D31
>   write PLANE_SURF
>   wait for vblank
> =

>   # extra vblank wait is required here presumably
>   # to get FBC into the proper state
>   wait for vblank
> =

>   write FBC_CTL.enable=3D0
>   # underrun happens some time after FBC disable
>   wait for vblank
> }
> =

> Both 8888 and 565 pixel formats and all tilinga formats
> seem affected. Reproduced on KBL/GLK/ICL/TGL. BDW confirmed
> not affected.
> =

> Closes: https://gitlab.freedesktop.org/drm/intel/issues/792
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 6f1d5c032681..a1048ece541e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -776,7 +776,7 @@ static bool intel_fbc_can_activate(struct intel_crtc =
*crtc)
>  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
>  	 * and screen flicker.
>  	 */
> -	if (IS_GEN_RANGE(dev_priv, 9, 10) &&
> +	if (INTEL_GEN(dev_priv) >=3D 9 &&
>  	    (fbc->state_cache.plane.adjusted_y & 3)) {
>  		fbc->no_fbc_reason =3D "plane Y offset is misaligned";
>  		return false;
> -- =

> 2.23.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

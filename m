Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD5D121C4B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:06:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA2C6E8B3;
	Mon, 16 Dec 2019 22:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CD26E8B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 22:06:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 13:23:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="212349828"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 16 Dec 2019 13:23:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Dec 2019 23:23:52 +0200
Date: Mon, 16 Dec 2019 23:23:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Message-ID: <20191216212352.GB1208@intel.com>
References: <20191216080619.10945-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216080619.10945-1-vandita.kulkarni@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix WARN_ON condition for cursor
 plane ddb allocation
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 16, 2019 at 01:36:19PM +0530, Vandita Kulkarni wrote:
> In some cases like latency[level]=3D=3D0, wm[level].res_lines>31,
> min_ddb_alloc can be U16_MAX, exclude it from the WARN_ON.
> =

> v2: Specify the cases in which we hit U16_MAX, indentation (Ville)
> =

> Fixes: 10a7e07b68b9 ("drm/i915: Make sure cursor has enough ddb for the s=
elected wm level")
> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index ccbbdf4a6aab..7cdca06be3bd 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4312,8 +4312,8 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state,
>  				&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

>  			if (plane_id =3D=3D PLANE_CURSOR) {
> -				if (WARN_ON(wm->wm[level].min_ddb_alloc >
> -					    total[PLANE_CURSOR])) {
> +				if (wm->wm[level].min_ddb_alloc > total[PLANE_CURSOR]) {
> +					WARN_ON(wm->wm[level].min_ddb_alloc !=3D U16_MAX);

Pushed to dinq. Thanks for the patch.

>  					blocks =3D U32_MAX;
>  					break;
>  				}
> -- =

> 2.21.0.5.gaeb582a

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

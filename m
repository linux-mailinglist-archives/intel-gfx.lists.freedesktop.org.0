Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB20287553
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 15:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6F06E323;
	Thu,  8 Oct 2020 13:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D4E6E323
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 13:41:32 +0000 (UTC)
IronPort-SDR: nNNycDTBhzW3r0Obli8zpCX/DEWwh948IBJ6AfPoN7u8ZztB0WmSFNz7c4old5DQcVltE34O+5
 MWPLD0Fm9J+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="182762530"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="182762530"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:41:13 -0700
IronPort-SDR: H4pfMznqxZF4lUhfg3mzWcBx44ZMDI6l3aWdeoci5LkxHUCgyRVvoAe1ys8iJhh+4iXgz8CIIa
 Rv681KvdGFfA==
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="461813734"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:41:11 -0700
Date: Thu, 8 Oct 2020 16:41:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201008134107.GC1784305@ideak-desk.fi.intel.com>
References: <20201008101608.8652-1-ville.syrjala@linux.intel.com>
 <20201008101608.8652-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008101608.8652-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: s/int/u32/ for
 aux_offset/alignment
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

On Thu, Oct 08, 2020 at 01:16:08PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> ggtt offsets/alignments are u32 everywhere else. Don't use
> a signed int for them here.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 34ba34f84b2a..fe482ca721f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4026,8 +4026,8 @@ static int skl_check_nv12_aux_surface(struct intel_=
plane_state *plane_state)
>  =

>  	if (is_ccs_modifier(fb->modifier)) {
>  		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> -		int aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> -		int alignment =3D intel_surf_alignment(fb, uv_plane);
> +		u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> +		u32 alignment =3D intel_surf_alignment(fb, uv_plane);
>  =

>  		if (offset > aux_offset)
>  			offset =3D intel_plane_adjust_aligned_offset(&x, &y,
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

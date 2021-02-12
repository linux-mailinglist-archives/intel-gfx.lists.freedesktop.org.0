Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F5931A49F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 19:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3947A6EEB0;
	Fri, 12 Feb 2021 18:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01BD86EEB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 18:36:00 +0000 (UTC)
IronPort-SDR: vVEwRj6PfUaEETY7jV+ybJIErYZil1Q73CfEZikguhSJMBfMJxxp2qi8LpcHNrYl4PRt/RGect
 5w1sHLBx3fiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="182527699"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="182527699"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 10:35:59 -0800
IronPort-SDR: wZ/8CvZPOSlQSA/PIOSI3SWfyfZM+xLGaKVhDTO67ONxZDCmpR9y0+dBEtTUSja5LOwLuyLR5E
 BDMSSF1oYwzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="398094631"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 12 Feb 2021 10:35:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Feb 2021 20:35:55 +0200
Date: Fri, 12 Feb 2021 20:35:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YCbKi3rpV3pWwkHw@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <20210212182201.155043-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212182201.155043-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
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

On Fri, Feb 12, 2021 at 10:22:01AM -0800, Jos=E9 Roberto de Souza wrote:
> Found a system were firmware/BIOS left the plane_res_b and plane_res_l
> set with non-zero values for disable planes.

It pretty much happens always since the reset value is not zero.
IIRC we made the state chcker pedantic enough to complain about
that, so we need to clean it up.

> As the planes are disabled i915 will not even try to sanitize it so
> here returning earlier if both skl_wm_levels being compared are
> disabled, if that is true no need to check the other fields as HW
> will ignore it.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8cc67f9c4e58..c630dc10c34b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5633,6 +5633,8 @@ void skl_write_cursor_wm(struct intel_plane *plane,
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  			 const struct skl_wm_level *l2)
>  {
> +	if (l1->plane_en =3D=3D false && l2->plane_en =3D=3D false)
> +		return true;
>  	return l1->plane_en =3D=3D l2->plane_en &&
>  		l1->ignore_lines =3D=3D l2->ignore_lines &&
>  		l1->plane_res_l =3D=3D l2->plane_res_l &&
> -- =

> 2.30.1
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

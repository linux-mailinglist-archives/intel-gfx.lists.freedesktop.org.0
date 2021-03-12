Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DD83393DF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 17:50:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE126E182;
	Fri, 12 Mar 2021 16:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C80886E182
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 16:50:03 +0000 (UTC)
IronPort-SDR: ZrLG8KP9/hvse4MphnD3efzCHaXQdt3cgJ3kGkJo+WI0KfQAXkt6otOBtC0yDVddq22zNALlVH
 mD70+3NIt+dQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="208700041"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="208700041"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 08:50:03 -0800
IronPort-SDR: smBOC437pDukL6lLy8pTXbKU5Hn2eNkEZLMfdz+6Zm2LWNBo4Nbr6Ie3JKUPV4+YsI1k1+bM1i
 rYkRJJOI6ImQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="387396872"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 12 Mar 2021 08:50:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Mar 2021 18:50:00 +0200
Date: Fri, 12 Mar 2021 18:50:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YEubuI/9GrPsAEnJ@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311223632.3191939-2-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/56] drm/i915/display: Convert gen5/gen6
 tests to IS_IRONLAKE/IS_SANDYBRIDGE
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

On Thu, Mar 11, 2021 at 02:35:37PM -0800, Matt Roper wrote:
> ILK is the only platform that we consider "gen5" and SNB is the only
> platform we consider "gen6."  Add an IS_SANDYBRIDGE() macro and then
> replace numeric platform tests for these two generations with direct
> platform tests with the following Coccinelle semantic patch:
> =

>         @@ expression dev_priv; @@
>         - IS_GEN(dev_priv, 5)
>         + IS_IRONLAKE(dev_priv)
> =

>         @@ expression dev_priv; @@
>         - IS_GEN(dev_priv, 6)
>         + IS_SANDYBRIDGE(dev_priv)
> =

>         @@ expression dev_priv; @@
>         - IS_GEN_RANGE(dev_priv, 5, 6)
>         + IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv)

I'd probably make this IS_ILK||IS_SNB. Looks like we tend to use
the old->new order in most of the cases this touches.

> @@ -7439,7 +7439,7 @@ int intel_plane_atomic_calc_changes(const struct in=
tel_crtc_state *old_crtc_stat
>  	 * plane, not only sprite plane.
>  	 */
>  	if (plane->id !=3D PLANE_CURSOR &&
> -	    (IS_GEN_RANGE(dev_priv, 5, 6) ||
> +	    (IS_SANDYBRIDGE(dev_priv) || IS_IRONLAKE(dev_priv) ||
>  	     IS_IVYBRIDGE(dev_priv)) &&
>  	    (turn_on || (!needs_scaling(old_plane_state) &&
>  			 needs_scaling(plane_state))))

This is at least one case where the IS_SNB||IS_ILK order
makes things look confusing.

Apart from that I like it.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

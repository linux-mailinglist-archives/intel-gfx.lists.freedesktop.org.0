Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5A33378DA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB076EE43;
	Thu, 11 Mar 2021 16:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B806EE43
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:11:42 +0000 (UTC)
IronPort-SDR: L65DA+fIt81UmEhfOn9CXlmgAwwV17r2+eK1J74lfvL4/P1LMPoNc7LWQb4VCI4OhF+wT8zm21
 6OgTbRBbMLBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188729022"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188729022"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:11:42 -0800
IronPort-SDR: 9WSqS5KqWcQNdhut9KJIP6z6sCsJAuJbZYy5CEYSkL8fzS2xns/hzLvIg3qYNFo/qD2PPHQFO0
 s2jvrZIgNYdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="387054907"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2021 08:11:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:11:39 +0200
Date: Thu, 11 Mar 2021 18:11:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpBO5m90wW7veb1@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-6-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/23] drm/i915/selftest: Make sure to init
 i915_ggtt_view in igt_vma_rotate_remap()
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

On Thu, Mar 11, 2021 at 12:17:18AM +0200, Imre Deak wrote:
> This probably doesn't cause an issue, since the code checks the view
> type dependent size of the views before comparing them, but let's follow
> the practice to bzero the whole struct when initializing it.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>


> ---
>  drivers/gpu/drm/i915/selftests/i915_vma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index ffea2602a781..3d557b8a2098 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -515,7 +515,7 @@ static int igt_vma_rotate_remap(void *arg)
>  	for (t =3D types; *t; t++) {
>  	for (a =3D planes; a->width; a++) {
>  		for (b =3D planes + ARRAY_SIZE(planes); b-- !=3D planes; ) {
> -			struct i915_ggtt_view view;
> +			struct i915_ggtt_view view =3D { };

I tend to write these as {} w/o any whitespace. grep says my way
is the more common approach. Might be nice to unify all of them...

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  			unsigned int n, max_offset;
>  =

>  			max_offset =3D max(a->stride * a->height,
> -- =

> 2.25.1
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

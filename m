Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D2F3378C5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC27C6E042;
	Thu, 11 Mar 2021 16:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D877D6E042
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:08:17 +0000 (UTC)
IronPort-SDR: uniKe+xzQpoG5+Z/Li2H/P6RBFTkFO/+/OP9BW3s1SY2X53UTNLE2r+AsJLMOXp7CMxVhcq2KT
 zB8DPhzIIiJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188055469"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188055469"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:08:03 -0800
IronPort-SDR: m2rPqU5puR58Nm67lADog07E2KXJdWgZwpLCrn3nKfSPtJ3svbpUAN3rRCm/pvPoaKF8L9Qo2A
 Kasebn2pk7Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438747157"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 11 Mar 2021 08:07:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:07:47 +0200
Date: Thu, 11 Mar 2021 18:07:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpAUyQFh12lEcDf@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-5-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915: Make sure i915_ggtt_view is
 inited when creating an FB
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

On Thu, Mar 11, 2021 at 12:17:17AM +0200, Imre Deak wrote:
> This probably doesn't cause an issue, since the code checks the view
> type dependent size of the views before comparing them, but let's follow
> the practice to bzero the whole struct when initializing it.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 12b54e032bc1..7bc541b75eef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1003,6 +1003,8 @@ intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
>  			const struct drm_framebuffer *fb,
>  			unsigned int rotation)
>  {
> +	memset(view, 0, sizeof(*view));
> +
>  	view->type =3D I915_GGTT_VIEW_NORMAL;
>  	if (drm_rotation_90_or_270(rotation)) {
>  		view->type =3D I915_GGTT_VIEW_ROTATED;
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

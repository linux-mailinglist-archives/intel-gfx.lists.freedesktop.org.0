Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0371C8292
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 08:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032A36E917;
	Thu,  7 May 2020 06:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38946E915
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 06:34:41 +0000 (UTC)
IronPort-SDR: mW+pz9k4bF6dmefZ3lPG1nbFoNTZ2CViBxdsZ92kgZV/m2klse7HcxraiSd9LSkvC5phbxRiMd
 0HkvyAXc109Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 23:34:41 -0700
IronPort-SDR: JiuhoNIV6J0wFWF6revNwvNWP68xZAiS7jpphdwqPaYMvFAeTGLUwODKF78v2zeFiaoIM3qDhO
 /hicRkUtlc0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,362,1583222400"; d="scan'208";a="295619523"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 06 May 2020 23:34:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 09:34:38 +0300
Date: Thu, 7 May 2020 09:34:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200507063438.GV6112@intel.com>
References: <20200307012600.19602-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200307012600.19602-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: avoid opregion calls and
 messages
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

On Fri, Mar 06, 2020 at 05:26:00PM -0800, Lucas De Marchi wrote:
> This avoids the annoying message
> "Failed to get panel details from OpRegion (-19)" while initializing.
> On DGFX there is no access to OpRegion, so just avoid any calls related
> to it.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index cc6b00959586..daadad046810 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1006,6 +1006,10 @@ intel_opregion_get_panel_type(struct drm_i915_priv=
ate *dev_priv)
>  	u32 panel_details;
>  	int ret;
>  =

> +	/* No access to OpRegion */
> +	if (IS_DGFX(dev_priv))
> +		return -ENODEV;
> +
>  	ret =3D swsci(dev_priv, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
>  	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,

I think we could just remove this debug message entirely. There are
only two silent failures modes for swsci(): no swsci, and the specific
function not being supported. Should be easy to figure out which case
it is without this debug if necessary. And all the cases where the
swcsi() succeed seem to have enough debugs to tell us that we did get
the panel type from opregion but decided to ignore it anyway.

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

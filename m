Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CB714DC6B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3206E829;
	Thu, 30 Jan 2020 14:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66B916E829
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 14:05:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 06:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="222803185"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 30 Jan 2020 06:05:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jan 2020 16:05:27 +0200
Date: Thu, 30 Jan 2020 16:05:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200130140527.GC13686@intel.com>
References: <20200130135136.1878646-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130135136.1878646-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: __intel_fbc_cleanup_cfb() may
 be called multiple times
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

On Thu, Jan 30, 2020 at 01:51:36PM +0000, Chris Wilson wrote:
> Avoid releasing the same stolen nodes causing a use-after-free and/or
> explosions as the self-checks fail, as __intel_fbc_cleanup_cfb() may be
> called multiple times during module unload.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 2a3f1333c8ff..ab676c6756af 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -537,13 +537,15 @@ static void __intel_fbc_cleanup_cfb(struct drm_i915=
_private *dev_priv)
>  {
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  =

> -	if (drm_mm_node_allocated(&fbc->compressed_fb))
> -		i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
> +	if (!drm_mm_node_allocated(&fbc->compressed_fb))
> +		return;
>  =

>  	if (fbc->compressed_llb) {
>  		i915_gem_stolen_remove_node(dev_priv, fbc->compressed_llb);
>  		kfree(fbc->compressed_llb);
>  	}

Had to double check that we don't have some funny cases where we
have the llb allocated without the cfb. And leaving the stale
pointer behind doesn't seem like it can cause any other issues.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +	i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_fb);
>  }
>  =

>  void intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
> -- =

> 2.25.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

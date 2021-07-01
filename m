Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDD93B959F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 19:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5716E0C8;
	Thu,  1 Jul 2021 17:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A766E0C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 17:42:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="188967249"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="188967249"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 10:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="426239243"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 01 Jul 2021 10:42:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Jul 2021 20:42:39 +0300
Date: Thu, 1 Jul 2021 20:42:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YN3+j2AW+gLnGV/J@intel.com>
References: <20210701090326.1056452-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701090326.1056452-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: check if compressed_llb
 was allocated
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

On Thu, Jul 01, 2021 at 10:03:26AM +0100, Matthew Auld wrote:
> If we hit the error path here we unconditionally call
> i915_gem_stolen_remove_node, even though we only allocate the
> compressed_llb on older platforms. Therefore we should first check that
> we actually allocated the node before trying to remove it.
> =

> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3709

Doh! Seems pre-merge testing didn't hit this, or I just suck at reading
the logs :(

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> Fixes: 46b2c40e0af3 ("drm/i915/fbc: Allocate llb before cfb")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 7dc72e4a4656..82effb64a3b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -516,7 +516,8 @@ static int intel_fbc_alloc_cfb(struct drm_i915_privat=
e *dev_priv,
>  	return 0;
>  =

>  err_llb:
> -	i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_llb);
> +	if (drm_mm_node_allocated(&fbc->compressed_llb))
> +		i915_gem_stolen_remove_node(dev_priv, &fbc->compressed_llb);
>  err:
>  	if (drm_mm_initialized(&dev_priv->mm.stolen))
>  		drm_info_once(&dev_priv->drm, "not enough stolen space for compressed =
buffer (need %d more bytes), disabling. Hint: you may be able to increase s=
tolen memory size in the BIOS to avoid this.\n", size);
> -- =

> 2.26.3

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

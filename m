Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFC114C9DB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 12:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 733FA6E316;
	Wed, 29 Jan 2020 11:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEA36E316
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 11:43:00 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 03:43:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="313992457"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 29 Jan 2020 03:42:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 13:42:57 +0200
Date: Wed, 29 Jan 2020 13:42:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200129114257.GR13686@intel.com>
References: <20200128235241.169694-1-jose.souza@intel.com>
 <20200128235241.169694-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128235241.169694-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dgfx: Do not write in removed
 FBC fence registers
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 28, 2020 at 03:52:41PM -0800, Jos=E9 Roberto de Souza wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> =

> dgfx platforms do not support CPU fence and FBC host tracking so
> lets avoid write to removed registers.
> =

> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 1f0d24a1dec1..12900b8ce28e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -314,7 +314,12 @@ static void gen7_fbc_activate(struct drm_i915_privat=
e *dev_priv)
>  		break;
>  	}
>  =

> -	if (params->fence_id >=3D 0) {
> +	if (IS_DGFX(dev_priv)) {
> +		/*
> +		 * dGFX GPUs don't have apperture or fences and only rely on FBC
> +		 * render nuke to track frontbuffer modifications
> +		 */
> +	} else if (params->fence_id >=3D 0) {
>  		dpfc_ctl |=3D IVB_DPFC_CTL_FENCE_EN;
>  		intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
>  			       SNB_CPU_FENCE_ENABLE | params->fence_id);

if (fence) {
	do stuff
} else if (num_fences) {
	do other stuff
}

> -- =

> 2.25.0
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

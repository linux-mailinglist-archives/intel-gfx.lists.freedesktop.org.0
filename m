Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA8511D180
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:53:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CD96E199;
	Thu, 12 Dec 2019 15:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DDB6E1A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:53:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 07:53:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216154204"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by orsmga006.jf.intel.com with ESMTP; 12 Dec 2019 07:53:26 -0800
Date: Thu, 12 Dec 2019 07:53:37 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191212155337.GC21507@InViCtUs>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
 <20191126002635.5779-4-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126002635.5779-4-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 3/7] drm/i915: Move CCS stride alignment
 W/A inside intel_fb_stride_alignment
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
Cc: ville.syrjala@intel.com, nanley.g.chery@intel.com,
 dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 04:26:31PM -0800, Radhakrishna Sripada wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Easier to read if all the alignment changes are in one place and contained
> within a function.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++----------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2a4593afbe86..85f009500344 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2611,7 +2611,22 @@ intel_fb_stride_alignment(const struct drm_framebu=
ffer *fb, int color_plane)
>  		else
>  			return 64;
>  	} else {
> -		return intel_tile_width_bytes(fb, color_plane);
> +		u32 tile_width =3D intel_tile_width_bytes(fb, color_plane);
> +
> +		/*
> +		 * Display WA #0531: skl,bxt,kbl,glk
> +		 *
> +		 * Render decompression and plane width > 3840
> +		 * combined with horizontal panning requires the
> +		 * plane stride to be a multiple of 4. We'll just
> +		 * require the entire fb to accommodate that to avoid
> +		 * potential runtime errors at plane configuration time.
> +		 */
> +		if (IS_GEN(dev_priv, 9) && is_ccs_modifier(fb->modifier) &&
> +		    color_plane =3D=3D 0 && fb->width > 3840)
> +			tile_width *=3D 4;
> +
> +		return tile_width;
>  	}
>  }
>  =

> @@ -16463,20 +16478,6 @@ static int intel_framebuffer_init(struct intel_f=
ramebuffer *intel_fb,
>  		}
>  =

>  		stride_alignment =3D intel_fb_stride_alignment(fb, i);
> -
> -		/*
> -		 * Display WA #0531: skl,bxt,kbl,glk
> -		 *
> -		 * Render decompression and plane width > 3840
> -		 * combined with horizontal panning requires the
> -		 * plane stride to be a multiple of 4. We'll just
> -		 * require the entire fb to accommodate that to avoid
> -		 * potential runtime errors at plane configuration time.
> -		 */
> -		if (IS_GEN(dev_priv, 9) && i =3D=3D 0 && fb->width > 3840 &&
> -		    is_ccs_modifier(fb->modifier))
> -			stride_alignment *=3D 4;
> -
>  		if (fb->pitches[i] & (stride_alignment - 1)) {
>  			DRM_DEBUG_KMS("plane %d pitch (%d) must be at least %u byte aligned\n=
",
>  				      i, fb->pitches[i], stride_alignment);
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4596514AC34
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 23:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 773546EBC1;
	Mon, 27 Jan 2020 22:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFED66EBC1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 22:40:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 14:40:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="223381898"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jan 2020 14:40:59 -0800
Date: Mon, 27 Jan 2020 14:42:09 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200127224208.GA14219@intel.com>
References: <20200117091627.1697-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117091627.1697-1-matthew.s.atwood@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1606054188;tgl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 17, 2020 at 04:16:28AM -0500, Matt Atwood wrote:
> On Tiger Lake we do not support source keying in the pixel formats P010,
> P012, P016.
> 
> Bspec: 52890
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index fca77ec1e0dd..67176524e60f 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2049,6 +2049,19 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>  	unsigned int rotation = plane_state->hw.rotation;
>  	struct drm_format_name_buf format_name;
>  
> +	/* Wa_1606054188;tgl

                        ^ This should be a :

> +	 *
> +	 * TODO: Add format RGB64i when implemented
> +	 *
> +	 */
> +	if (IS_GEN(dev_priv, 12) &&
> +	    (plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE))
> +		if (fb->format->format & (DRM_FORMAT_P010 | DRM_FORMAT_P012
> +		    | DRM_FORMAT_P016)) {
> +			DRM_DEBUG_KMS("GEN12 does not support source color key planes in formats P01x\n");
> +			return -EINVAL;
> +		}
> +

I think this whole WA and check should be added after the check for !fb else we might have a risk
of dereferencing a NULL pointer.

With the above fixs

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

>  	if (!fb)
>  		return 0;
>  
> -- 
> 2.21.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

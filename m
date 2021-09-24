Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7AD4176F2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 16:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F706EE23;
	Fri, 24 Sep 2021 14:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9856EE23
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 14:41:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="222197377"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="222197377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 07:41:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="485404089"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 24 Sep 2021 07:41:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Sep 2021 17:41:32 +0300
Date: Fri, 24 Sep 2021 17:41:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YU3jnCyNdR51N+lR@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210923194617.69136-5-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/display/psr: Do full fetch
 when handling biplanar formats
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 23, 2021 at 12:46:15PM -0700, José Roberto de Souza wrote:
> From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> 
> We are still missing the PSR2 selective fetch handling of biplanar
> formats but until proper handle is added we can workaround it by
> doing full frames fetch when state has biplanar formats.
> 
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 356e0e96abf4e..001d81f128989 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1579,6 +1579,9 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
>   * also planes are not updated if they have a negative X
>   * position so for now doing a full update in this cases
>   *
> + * TODO: We are missing biplanar formats handling, until it is
> + * implemented it will send full frame updates.
> + *
>   * Plane scaling and rotation is not supported by selective fetch and both
>   * properties can change without a modeset, so need to be check at every
>   * atomic commmit.
> @@ -1588,6 +1591,7 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
>  	if (plane_state->uapi.dst.y1 < 0 ||
>  	    plane_state->uapi.dst.x1 < 0 ||
>  	    plane_state->scaler_id >= 0 ||
> +	    plane_state->hw.fb->format->is_yuv ||

is_yuv != planar

>  	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
>  		return false;
>  
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel

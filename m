Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6691941DA63
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 14:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D746E3F0;
	Thu, 30 Sep 2021 12:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909246E3F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 12:58:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="224833553"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="224833553"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 05:58:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="521203633"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 30 Sep 2021 05:58:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 15:58:43 +0300
Date: Thu, 30 Sep 2021 15:58:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YVW0gyVk2/5j1Xmv@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930001409.254817-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915/display/psr: Do full fetch
 when handling multi-planar formats
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

On Wed, Sep 29, 2021 at 05:14:02PM -0700, José Roberto de Souza wrote:
> From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> 
> We are still missing the PSR2 selective fetch handling of multi-planar
> formats but until proper handle is added we can workaround it by
> doing full frames fetch when state has such formats.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e3af1dc358bd2..8534cbb0d5144 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1573,6 +1573,9 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
>   * also planes are not updated if they have a negative X
>   * position so for now doing a full update in this cases
>   *
> + * TODO: We are missing multi-planar formats handling, until it is
> + * implemented it will send full frame updates.
> + *
>   * Plane scaling and rotation is not supported by selective fetch and both
>   * properties can change without a modeset, so need to be check at every
>   * atomic commmit.
> @@ -1582,6 +1585,7 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
>  	if (plane_state->uapi.dst.y1 < 0 ||
>  	    plane_state->uapi.dst.x1 < 0 ||
>  	    plane_state->scaler_id >= 0 ||
> +	    plane_state->hw.fb->format->num_planes > 1 ||

This also catches ccs forrmats, but I guess for the moment that's what
we want if we haven't thought about AUX_DIST and whatnot in relation to
selective fetch.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
>  		return false;
>  
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel

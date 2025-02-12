Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F0CA3227E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED77E10E82C;
	Wed, 12 Feb 2025 09:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5268A10E82D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 09:39:22 +0000 (UTC)
Message-ID: <cc44cbb1-786b-4342-b23a-b213b069b61a@lankhorst.se>
Date: Wed, 12 Feb 2025 10:39:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] drm/i915: Pimp the Y plane selection debugs
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
 <20250127172156.21928-12-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten@lankhorst.se>
In-Reply-To: <20250127172156.21928-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Hey,

Patch series looks good.

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

One small comment, I've noticed that in 10/11 I still see a mention of 
slave plane in the comments, it would probably be best to fixup any 
mention to Y plane in the comments too.

Cheers,

~Maarten

On 2025-01-27 18:21, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Use the standard [PLANE:%d:%s] stuff for the Y plane debugs,
> and more clearly spell out which plane is UV plane and which
> is Y plane when linking them.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 1fb35f4a7cf4..9c2e8aaba8cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1236,8 +1236,9 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
>   	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
>   	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
>   
> -	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
> -		    y_plane->base.name, uv_plane->base.name);
> +	drm_dbg_kms(&dev_priv->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
> +		    uv_plane->base.base.id, uv_plane->base.name,
> +		    y_plane->base.base.id, y_plane->base.name);
>   
>   	/* Copy parameters to Y plane */
>   	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
> @@ -1328,7 +1329,8 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
>   
>   		if (!y_plane_state) {
>   			drm_dbg_kms(&dev_priv->drm,
> -				    "Need %d free Y planes for planar YUV\n",
> +				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
> +				    crtc->base.base.id, crtc->base.name,
>   				    hweight8(crtc_state->nv12_planes));
>   
>   			return -EINVAL;

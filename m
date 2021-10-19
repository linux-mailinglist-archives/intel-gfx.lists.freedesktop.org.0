Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC9C4330E9
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 10:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060086EB4B;
	Tue, 19 Oct 2021 08:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29CC6EB4B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 08:14:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="228402033"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="228402033"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 01:14:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="493990038"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 19 Oct 2021 01:14:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 11:14:36 +0300
Date: Tue, 19 Oct 2021 11:14:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Message-ID: <YW5+bMUp6ZSUK5Bi@intel.com>
References: <20211017234106.2412994-1-airlied@gmail.com>
 <20211017234106.2412994-4-airlied@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211017234106.2412994-4-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: drop unused parameter
 to dpt pin
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

On Mon, Oct 18, 2021 at 09:41:05AM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> 
> The uses_fence isn't used.
> 
> Signed-off-by: Dave Airlie <airlied@redhat.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 0beb0aa33337..721a1477e8b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -18,7 +18,6 @@
>  static struct i915_vma *
>  intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  		     const struct i915_ggtt_view *view,
> -		     bool uses_fence,
>  		     unsigned long *out_flags,
>  		     struct i915_address_space *vm)
>  {
> @@ -236,7 +235,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  
>  		plane_state->ggtt_vma = vma;
>  
> -		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt, false,
> +		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
>  					   &plane_state->flags, intel_fb->dpt_vm);
>  		if (IS_ERR(vma)) {
>  			intel_dpt_unpin(intel_fb->dpt_vm);
> -- 
> 2.25.4

-- 
Ville Syrjälä
Intel

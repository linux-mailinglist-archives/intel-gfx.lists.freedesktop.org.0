Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 859D7700A00
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 16:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9620E10E6CE;
	Fri, 12 May 2023 14:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D73F310E164
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 14:13:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3D22E61137;
 Fri, 12 May 2023 14:13:48 +0000 (UTC)
Received: from rdvivi-mobl4 (unknown [192.55.55.57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 89AA2C433D2;
 Fri, 12 May 2023 14:13:46 +0000 (UTC)
Date: Fri, 12 May 2023 10:13:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZF5JmE1ecdVU14vD@rdvivi-mobl4>
References: <20230512110444.1448231-1-jani.nikula@intel.com>
 <20230512110444.1448231-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512110444.1448231-2-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/crtc: replace
 I915_STATE_WARN_ON() with I915_STATE_WARN()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 02:04:42PM +0300, Jani Nikula wrote:
> Describe the assertion better.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index df7d05f1e14b..1e3f88d00609 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -35,7 +35,9 @@
>  
>  static void assert_vblank_disabled(struct drm_crtc *crtc)
>  {
> -	if (I915_STATE_WARN_ON(drm_crtc_vblank_get(crtc) == 0))
> +	if (I915_STATE_WARN(drm_crtc_vblank_get(crtc) == 0,
> +			    "[CRTC:%d:%s] vblank assertion failure (expected off, current on)\n",
> +			    crtc->base.id, crtc->name))
>  		drm_crtc_vblank_put(crtc);
>  }
>  
> -- 
> 2.39.2
> 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2F890F26F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 17:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6233510E2AF;
	Wed, 19 Jun 2024 15:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="P9lj9TwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BED10ED0D;
 Wed, 19 Jun 2024 15:42:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id F3AE1CE2052;
 Wed, 19 Jun 2024 15:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D45E6C2BBFC;
 Wed, 19 Jun 2024 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1718811729;
 bh=wUiNH26UGdmNoRmA3TBLgvIuccoLFzLb69Q1BsJxvjo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P9lj9TwIHjAJWHBsV/RhOH68Gr1ifwfjWHCoxxjJMyUOK7V0qzXoOkkhnttVaSJf8
 FWz0gSmdgRIFWAFSvEV4RqEaP2Noub2p67INx+m14s+VNTOXBoADohWed5aZDRivZa
 JbC5la9qcXzCj4bzBjmTO9X+N38QcT9t2bFCiESyOg+1pVoWqKXtiEDNndsjTtIikj
 z1Hz79c0RAHOAVE0nxGjZ+7T39eFk6N3aalg0xd4QaT4ky6lWnMrxZssYFsAM0EweN
 gFlJh2rYnjKRyvPDOtq2klUCYXJOLBjxlQcfebEH5AkNM37SpUo6+2HwCMhxQK/TaJ
 1hsnWXWRKs5Nw==
Date: Wed, 19 Jun 2024 08:42:07 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v16 9/9] drm/i915: Compute CMRR and calculate vtotal
Message-ID: <20240619154207.GA1125704@thelio-3990X>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240610072203.24956-10-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240610072203.24956-10-mitulkumar.ajitkumar.golani@intel.com>
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

Hi Mitul,

On Mon, Jun 10, 2024 at 12:52:02PM +0530, Mitul Golani wrote:
...
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4ad99a54aa83..05f67dc9d98d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -12,6 +12,9 @@
>  #include "intel_vrr_regs.h"
>  #include "intel_dp.h"
>  
> +#define FIXED_POINT_PRECISION		100
> +#define CMRR_PRECISION_TOLERANCE	10
> +
>  bool intel_vrr_is_capable(struct intel_connector *connector)
>  {
>  	const struct drm_display_info *info = &connector->base.display_info;
> @@ -107,6 +110,52 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>  	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
>  }
>  
> +static bool
> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> +{
> +	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (!HAS_CMRR(i915))
> +		return false;
> +
> +	actual_refresh_k =
> +		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
> +	pixel_clock_per_line =
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> +	calculated_refresh_k =
> +		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> +
> +	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> +		return false;
> +
> +	return true;
> +}
> +
> +static unsigned int
> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
> +{
> +	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
> +	long long adjusted_pixel_rate;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +
> +	if (video_mode_required) {
> +		multiplier_m = 1001;
> +		multiplier_n = 1000;
> +	}
> +
> +	crtc_state->cmrr.cmrr_n =
> +		desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n;
> +	vtotal = (adjusted_mode->crtc_clock * 1000 * multiplier_n) / crtc_state->cmrr.cmrr_n;
> +	adjusted_pixel_rate = adjusted_mode->crtc_clock * 1000 * multiplier_m;
> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +
> +	return vtotal;
> +}

This change is now in -next as commit 1676ecd303ac ("drm/i915: Compute
CMRR and calculate vtotal"), where it breaks the xe build for 32-bit
platforms with:

  $ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- allmodconfig drivers/gpu/drm/xe/i915-display/intel_vrr.o
  In file included from arch/arm/include/asm/div64.h:107,
                   from include/linux/math.h:6,
                   from include/linux/kernel.h:27,
                   from include/linux/cpumask.h:11,
                   from include/linux/smp.h:13,
                   from include/linux/lockdep.h:14,
                   from include/linux/spinlock.h:63,
                   from include/linux/kref.h:16,
                   from include/drm/drm_device.h:5,
                   from include/drm/drm_drv.h:35,
                   from drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:13,
                   from drivers/gpu/drm/i915/display/intel_vrr.c:7:
  drivers/gpu/drm/i915/display/intel_vrr.c: In function 'cmrr_get_vtotal':
  include/asm-generic/div64.h:222:35: error: comparison of distinct pointer types lacks a cast [-Werror]
    222 |         (void)(((typeof((n)) *)0) == ((uint64_t *)0));  \
        |                                   ^~
  drivers/gpu/drm/i915/display/intel_vrr.c:155:35: note: in expansion of macro 'do_div'
    155 |         crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
        |                                   ^~~~~~
  cc1: all warnings being treated as errors

Also, is do_div() correct here? It is different from the other div_()
macros in that the "return value" is the remainder, not the result of
the division.

Cheers,
Nathan

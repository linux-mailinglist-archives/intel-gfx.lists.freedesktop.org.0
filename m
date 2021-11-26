Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA845EC3A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 12:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057CC6E7D4;
	Fri, 26 Nov 2021 11:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0236E7D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Nov 2021 11:10:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="235890014"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="235890014"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 03:10:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="498374311"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 26 Nov 2021 03:10:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Nov 2021 13:10:35 +0200
Date: Fri, 26 Nov 2021 13:10:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YaDAqwQIpLbYja9b@intel.com>
References: <20211125171603.1775179-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211125171603.1775179-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DPT suspend/resume on
 !HAS_DISPLAY platforms
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 25, 2021 at 07:16:03PM +0200, Imre Deak wrote:
> The drm.mode_config state is not initialized in case of !HAS_DISPLAY
> so taking the fb_lock and iterating the fb list won't work on those
> platforms. Skip the suspend/resume with an explicit check for this.
> 
> Fixes: 9755f055f512 ("drm/i915: Restore memory mapping for DPT FBs across system suspend/resume")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 56755788547d2..963ca7155b064 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -183,6 +183,9 @@ void intel_dpt_resume(struct drm_i915_private *i915)
>  {
>  	struct drm_framebuffer *drm_fb;
>  
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
>  	mutex_lock(&i915->drm.mode_config.fb_lock);
>  	drm_for_each_fb(drm_fb, &i915->drm) {
>  		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
> @@ -207,6 +210,9 @@ void intel_dpt_suspend(struct drm_i915_private *i915)
>  {
>  	struct drm_framebuffer *drm_fb;
>  
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
>  	mutex_lock(&i915->drm.mode_config.fb_lock);
>  
>  	drm_for_each_fb(drm_fb, &i915->drm) {
> -- 
> 2.27.0

-- 
Ville Syrjälä
Intel

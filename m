Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D33F47889C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:18:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1DDA10FEA1;
	Fri, 17 Dec 2021 10:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB6A10FEA1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639736303; x=1671272303;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VFvn6gfXxRSpgvVJh5gSHRqHLoXyVDESid8961NHTSo=;
 b=bec/T40KV2o1NODGPtqWpORV5lLpwNEd4zgNRKgQtwwWOKb1Vi67tsbp
 OoYsbP+95ur4yOkczJYRXwmZTAckKM6KttO31X3nD3K9UiJSujNBBXdTK
 BxpBbv5uWsShTLlPImRvBH4AAYlIWkpKJRfBDIewzxACut/3sprm5Qs+3
 QHw2Ol5KRVCooQ2bfxr/vsye7doExDFLAttAloZ8Yioa4UFQcGFph+am4
 vs9M2h7mAhLLBqczegb+mMaksWm5/nFP6YfHaJ1NBsAaBWGplGt1uFzWM
 MdRAAaisIO5o/byFDgKgc03mXSszBWnipwPHlVqvdeRACDTsMuUE8ZESH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="219740930"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="219740930"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:18:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="519692454"
Received: from kmcgonig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.8.181])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:18:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Harish Chegondi <harish.chegondi@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211216232124.1298010-1-harish.chegondi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211216232124.1298010-1-harish.chegondi@intel.com>
Date: Fri, 17 Dec 2021 12:18:15 +0200
Message-ID: <874k77357c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix possible NULL pointer
 dereferences in i9xx_update_wm()
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

On Thu, 16 Dec 2021, Harish Chegondi <harish.chegondi@intel.com> wrote:
> Check return pointer from intel_crtc_for_plane() before dereferencing
> it, as it can be NULL.

If you're doing this to satisfy some static analyzer, in these cases the
code would read *much* better if you added the NULL check inside
intel_crtc_active().

BR,
Jani.


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index bdf97a8c9ef3..c7a4d8d971d7 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2373,7 +2373,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
>  	else
>  		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_A);
>  	crtc = intel_crtc_for_plane(dev_priv, PLANE_A);
> -	if (intel_crtc_active(crtc)) {
> +	if (crtc && intel_crtc_active(crtc)) {
>  		const struct drm_display_mode *pipe_mode =
>  			&crtc->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =
> @@ -2403,7 +2403,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
>  	else
>  		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_B);
>  	crtc = intel_crtc_for_plane(dev_priv, PLANE_B);
> -	if (intel_crtc_active(crtc)) {
> +	if (crtc && intel_crtc_active(crtc)) {
>  		const struct drm_display_mode *pipe_mode =
>  			&crtc->config->hw.pipe_mode;
>  		const struct drm_framebuffer *fb =

-- 
Jani Nikula, Intel Open Source Graphics Center

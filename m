Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9855479109
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 17:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3A4410E36B;
	Fri, 17 Dec 2021 16:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7481A10E36A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 16:12:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="263956416"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="263956416"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 08:08:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="546436415"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 17 Dec 2021 08:08:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 18:08:38 +0200
Date: Fri, 17 Dec 2021 18:08:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Harish Chegondi <harish.chegondi@intel.com>
Message-ID: <Yby2BrDPAE4eUxxX@intel.com>
References: <20211217160255.1300348-1-harish.chegondi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211217160255.1300348-1-harish.chegondi@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix possible NULL pointer
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 17, 2021 at 08:02:55AM -0800, Harish Chegondi wrote:
> Check return pointer from intel_crtc_for_plane() before dereferencing
> it, as it can be NULL.

Can't actually bu NULL. But I guess no real harm in having the
check if it shuts up some static analysis thing.

> 
> v2: Moved the NULL check into intel_crtc_active().
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index bdf97a8c9ef3..8b357ec35a4a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -877,7 +877,7 @@ static bool intel_crtc_active(struct intel_crtc *crtc)
>  	 * crtc->state->active once we have proper CRTC states wired up
>  	 * for atomic.
>  	 */
> -	return crtc->active && crtc->base.primary->state->fb &&
> +	return crtc && crtc->active && crtc->base.primary->state->fb &&
>  		crtc->config->hw.adjusted_mode.crtc_clock;
>  }
>  
> -- 
> 2.31.1

-- 
Ville Syrjälä
Intel

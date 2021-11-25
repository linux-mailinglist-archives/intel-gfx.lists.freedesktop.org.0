Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC84245D849
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 11:32:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EED66E9B2;
	Thu, 25 Nov 2021 10:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E696E9B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 10:32:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="232986596"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="232986596"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 02:32:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="591971667"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 25 Nov 2021 02:32:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Nov 2021 12:32:46 +0200
Date: Thu, 25 Nov 2021 12:32:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZ9mTsp/mXCDt2De@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
 <e09c3fa8757ed67bbc4d8c2a49a28473af2fbfcb.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e09c3fa8757ed67bbc4d8c2a49a28473af2fbfcb.1637588831.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/display: use
 drm_crtc_wait_one_vblank() directly when possible
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

On Mon, Nov 22, 2021 at 03:51:02PM +0200, Jani Nikula wrote:
> intel_wait_for_vblank() goes through a pipe to crtc lookup, while in
> most cases we already have the crtc available. Avoid the extra lookups.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  4 +--
>  drivers/gpu/drm/i915/display/intel_display.c  | 29 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    |  4 +--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  7 ++---
>  6 files changed, 23 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index f0f28572dfdc..8796527f74e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -321,8 +321,8 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
>  
>  	intel_crt_set_dpms(encoder, crtc_state, DRM_MODE_DPMS_ON);
>  
> -	intel_wait_for_vblank(dev_priv, pipe);
> -	intel_wait_for_vblank(dev_priv, pipe);
> +	drm_crtc_wait_one_vblank(&crtc->base);
> +	drm_crtc_wait_one_vblank(&crtc->base);

That function really is poorly named. Makes me think it's waiting until
one vblank period has passed or something. We should probably rename it
to actually make sense. Or we could just keep an intel_crtc based wrapper
with a more sensible name. The most honest name might actually be
...wait_for_next_vblank().

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1145DA6C1C6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8679D10E17A;
	Fri, 21 Mar 2025 17:43:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GbllvHqW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C396892AA;
 Fri, 21 Mar 2025 17:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742579003; x=1774115003;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EIY+bgk8xgYPAl0fJcDAgqcrNb0pewqnAqlFZj+oVJw=;
 b=GbllvHqWBhRRyUkzGRXP8uzW7O9AUBqqemL3l2E4LiGKwDX5l2VEl4X2
 eZQ2kU7D1w4wlHlcD5Rsca9eIo+lBKzJNYbEbFnMhvIxacE3aKSgfLiw4
 F8fbhBj2+fe5bHzYhanTTQ2yJ13I8oW3AYFouz83pnYWi5/z6aNSMkofo
 J5ZgJwNngNrT5J02gblSWW7beYLWiAoElCAGbnMcnbrrqwXHZhSSQgiBO
 0U/wvr6C0IX2bFlpAUUvgKvBq0h/X8p7b8xg9dHrqpgauyqDbUXHhX3Kk
 +TVUbBrOHt5l4nMo88Slh50bCmaJF6L0MjtefNk2uWuPpHDKeUgonhYy5 g==;
X-CSE-ConnectionGUID: qH/yETnuTpe8m16Hn+uByA==
X-CSE-MsgGUID: m0cxXaF8TnCyPsVZIyjCjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43972005"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43972005"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:43:22 -0700
X-CSE-ConnectionGUID: hKgPyAy2TOys+XV/giGWHw==
X-CSE-MsgGUID: yADBhu2uTcSqFHhxi8m6uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128683883"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 10:43:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 19:43:18 +0200
Date: Fri, 21 Mar 2025 19:43:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Jouni Hogander <jouni.hogander@intel.com>
Subject: Re: [PATCH 06/16] drm/i915/display: Move
 intel_psr_post_plane_update() at the later
Message-ID: <Z92lNhLy9r1PvJvB@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250318073540.2773890-7-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 18, 2025 at 01:05:30PM +0530, Ankit Nautiyal wrote:
> In intel_post_plane_update() there are things which might need to do
> vblank waits, so enabling PSR as early as we do now is simply
> counter-productive. Therefore move intel_psr_post_plane_update() at the
> last of intel_post_plane_update().
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 246da49af00b..4a0083fdfb05 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1048,8 +1048,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe = crtc->pipe;
>  
> -	intel_psr_post_plane_update(state, crtc);
> -
>  	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
>  
>  	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
> @@ -1078,6 +1076,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
>  
>  	if (audio_enabling(old_crtc_state, new_crtc_state))
>  		intel_encoders_audio_enable(state, crtc);
> +
> +	intel_psr_post_plane_update(state, crtc);

Jouni, do you recall any specific reason for the current order?

>  }
>  
>  static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

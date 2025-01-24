Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BBEA1B4FB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 12:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA77210E95B;
	Fri, 24 Jan 2025 11:46:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U2Ul9ngA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E76510E95A;
 Fri, 24 Jan 2025 11:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737719188; x=1769255188;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DENkLHorfS5NX7V8qwe3ZciRoIdsGu9vnE+gni4K00U=;
 b=U2Ul9ngAy1zQ8+xUQGmROh5v04cbdHr0i/dpyHROH4Kvgo8umvlhr2g2
 oaS4EAUvq/ZjR7Uv0HVylWahd2vjwmzLhEpsI2e7hH/coKfpB5l6Wapzh
 u4xrZEQk/Jo/8qpNK8xN3X4ZkgjlqHLMEKaC9Yg76j70XpFrftrdfv1aF
 bJa5PMOR2xfwJhXVHZJ22C3qa6kg5pd2+r7HT3Oy+ZJ5gr5HAz88mZt8c
 Vx2y4w0o1wk/eWcq2hU304Y/tMkf+RUBfwZkiq7DEwvDx7krZ2DaqUIaW
 +8PReclSVgq6oi357cpRBSF3s50lECZfYKn/pm7eEMZGThUpVgp6lknCV g==;
X-CSE-ConnectionGUID: bsuNevouTZGnof2r78QRSA==
X-CSE-MsgGUID: KC1XEpeLQbqL7VHNxJzyQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="55796056"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="55796056"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 03:46:27 -0800
X-CSE-ConnectionGUID: 0jlQyTmJTAuuHrtQJ0x1vw==
X-CSE-MsgGUID: 6tJI1W6gTmuAqLJDLoQD8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107874373"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 03:46:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 13:46:23 +0200
Date: Fri, 24 Jan 2025 13:46:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 animesh.manna@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v4 10/13] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken
 bit
Message-ID: <Z5N9jzJZaZktVYUk@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-11-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124105625.822459-11-jouni.hogander@intel.com>
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

On Fri, Jan 24, 2025 at 12:56:21PM +0200, Jouni Högander wrote:
> We have different approach on how flip is considered being complete. We are
> waiting for vblank on DSB and generate interrupt when it happens and this
> interrupt is considered as indication of completion -> we definitely do not
> want to skip vblank wait.
> 
> Also not skipping scanline wait shouldn't cause any problems if we are in
> DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
> we are not in DEEP_SLEEP evasion works same way as without PSR.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 89d3496bcbdbd..bb77ded8bf726 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -168,13 +168,12 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
>  {

IIRC bspec suggests that we should always set DSB_SKIP_WAITS_EN,
so we should probably have a comment here explaining our reason
for omitting it. Otherwise I fear that someone is going to be
blindly reading the spec and then try to add the bit back.

>  	if (pre_commit_is_vrr_active(state, crtc))
> -		return DSB_SKIP_WAITS_EN |
> -			DSB_CTRL_WAIT_SAFE_WINDOW |
> +		return DSB_CTRL_WAIT_SAFE_WINDOW |
>  			DSB_CTRL_NO_WAIT_VBLANK |
>  			DSB_INST_WAIT_SAFE_WINDOW |
>  			DSB_INST_NO_WAIT_VBLANK;
>  	else
> -		return DSB_SKIP_WAITS_EN;
> +		return 0;
>  }
>  
>  static bool assert_dsb_has_room(struct intel_dsb *dsb)
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel

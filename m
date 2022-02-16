Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DAC4B86D8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 12:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07D510E9A0;
	Wed, 16 Feb 2022 11:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FDE110E9A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 11:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645011535; x=1676547535;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=XkWPzECqdAfYV0FF7uiulFGRJ5XIN63iptofW8yZG9w=;
 b=a5HF86QAd/xO0vuCoagwBTZI/wSYH3woTSKWe2Q/m2q1jueHBBpPuIlk
 ujOukGsLUXi/RYnp2t6us0uYJktvyikyee49rEEJYf/qGUKK+QSSCLOlR
 ALgHcwv1CV/KYsjaFqq6g57VfMhYfcbI6E1EclryQ9GRmdeMFJJNiKR2U
 eNilNaxmNBxCIvaP5vYRoaBovKpASd9SY8N1jpTyX2rJ4mAtFFmvnA2gj
 b7lSMxWe6Tz/aGnVgN0SWM/zG+2NnE4Pv32+7kUSay7DZjm7yTCx4gsqV
 WDwd93YodwpNMZr4FwpXbMsuPMJVGRRxM+/MKhmDfMhzDWxdwgCNUHt0J Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="311324271"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="311324271"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 03:38:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498852636"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 16 Feb 2022 03:38:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 13:38:51 +0200
Date: Wed, 16 Feb 2022 13:38:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YgziSze9gURiN8xb@intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-10-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Start tracking PIPESRC as a
 drm_rect
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

On Tue, Feb 15, 2022 at 08:32:05PM +0200, Ville Syrjala wrote:
> @@ -2788,8 +2788,9 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
>  	/* Populate the "user" mode with full numbers */
>  	drm_mode_copy(mode, pipe_mode);
>  	intel_mode_from_crtc_timings(mode, mode);
> -	mode->hdisplay = crtc_state->pipe_src_w << crtc_state->bigjoiner;
> -	mode->vdisplay = crtc_state->pipe_src_h;
> +	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
> +		(hweight8(crtc_state->bigjoiner_pipes) ?: 1);

That hweight() stuff was supposed to be in one of the later patches btw.
Looks like I accidentally squashed it here when splitting/reordering stuff.

> +	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
>  
>  	/* Derive per-pipe timings in case bigjoiner is used */
>  	intel_bigjoiner_adjust_timings(crtc_state, pipe_mode);

-- 
Ville Syrjälä
Intel

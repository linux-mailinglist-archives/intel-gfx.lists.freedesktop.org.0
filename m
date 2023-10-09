Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6F87BD8CB
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 12:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5830E10E25B;
	Mon,  9 Oct 2023 10:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D4910E25B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 10:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696847818; x=1728383818;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xtnJIsO8tHhVMLaopK1nwn9/CQuLEisfV0MTv4EN2xk=;
 b=PqjHBFQ1La4r0ieRuNVEiLaGzsXJIaAHmse3NwoweJtC6JL96h9sfCEC
 BB3DKe/RBZ21EtSNmwJAqBntAHlscjlt0ZDDOX6xC5oKI+6m3xef/m9MA
 tR+NsrUKvmVXxAiJz2zqOllAV8vacuzzOxjjehiNIWa7tLToVmD+zlvQA
 c4e+W9v0OnhL1C/tnc5DVbkpxZMCmzJJJ4edMaE3QFF2cF31JYrk1SFRR
 Qmdoi5WiYOEfC3hwWjsQlh40VzO8ZefHUy2l0++GC8i4al1vleZrpd4L2
 pkvmmt+gr/Zh39HNNEBt3rHmJMJTUkAZKZ5oV7lLBT0ILtUqUVCf504v5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="383989488"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383989488"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="729629303"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="729629303"
Received: from eboyarsk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.41])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:36:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231009095946.655337-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
Date: Mon, 09 Oct 2023 13:36:52 +0300
Message-ID: <874jj06q0r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
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

On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Free hw_crtc_state in verify_crtc_state after we are done using
> this or else it's just a resource leak.

Fixes: ?

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 303eb68fec11..5e1c2c780412 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>  	}
>  
>  	if (!sw_crtc_state->hw.active)
> -		return;
> +		goto destroy_state;
>  
>  	intel_pipe_config_sanity_check(hw_crtc_state);
>  
> @@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *state,
>  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
>  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
>  	}
> +
> +destroy_state:
> +	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
>  }
>  
>  void intel_modeset_verify_crtc(struct intel_atomic_state *state,

-- 
Jani Nikula, Intel

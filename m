Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF72B246663
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 14:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E3B89E3F;
	Mon, 17 Aug 2020 12:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A972C89E3F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 12:31:00 +0000 (UTC)
IronPort-SDR: Da8p3tqqYp33D0cj3hTpktKnTVPIF12svNLbYJxMwZTOJA3sFDSCgKToReWdcsZ/GhhwHu4ND1
 hQFwYwf3FY+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="134748292"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="134748292"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 05:31:00 -0700
IronPort-SDR: /T5O3ZEjLuZou6qiUnU3Sg9tKgJxh5256lxLLu+1nb4J4FMKAKG0zJ27tMaMyZAiNjy+NymCRe
 wPmp8HMnzwqg==
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="296469107"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 05:30:58 -0700
Date: Mon, 17 Aug 2020 17:49:23 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200817121923.GL30770@intel.com>
References: <20200817112529.24478-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817112529.24478-1-uma.shankar@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Add an extra vblank wait
 before fbc activation
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-08-17 at 16:55:29 +0530, Uma Shankar wrote:
> Add an extra vblank before fbc is activated.
> WA: 1409689360
> Corruption with FBC around plane 1A enabling. In the Frame Buffer
> Compression programming sequence "Display Plane Enabling with FBC"
> add a wait for vblank between plane enabling step 1 and FBC enabling
> step 2.
> 
> v2: Add wait only for active crtc
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 2ab32e6532ff..2a9d4796c4a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1085,10 +1085,13 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
>  	if (!intel_fbc_can_activate(crtc))
>  		return;
>  
> -	if (!fbc->busy_bits)
> +	if (!fbc->busy_bits) {
> +		if (IS_TIGERLAKE(dev_priv))
> +			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
IMHO with this we are also adding a VBLANK wait when fbc is getting enabled
from frontbuffer flush flow intel_fbc_flush(), i am being afraid if there 
could be unnecessary VBLANK wait here.
Thanks,
Anshuman Gupta.
>  		intel_fbc_hw_activate(dev_priv);
> -	else
> +	} else {
>  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> +	}
>  }
>  
>  void intel_fbc_post_update(struct intel_atomic_state *state,
> -- 
> 2.22.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

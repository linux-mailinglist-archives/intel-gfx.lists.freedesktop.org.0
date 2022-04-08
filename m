Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B00A44F99D0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 17:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE18410F33E;
	Fri,  8 Apr 2022 15:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E2910F317
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 15:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649432764; x=1680968764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gFWQ31uNhLaZ31QlhBI6KGAyfYENyMmhwFNK1FB7zqw=;
 b=XjQ/3jTIzD/poAVUkC4YiMiXq1+IDOAgN1yBGVfC923NCx8zz/LbC/hB
 gWQ+LsvFTot/euRu6v0x3blOYG/gVIHTi1IJwPnTGV0pcifqpaLTsYan1
 IwMxxmseSX+LQT1q/UofuAWO2gmdoPY2i+3UUZGPbWjwH+tyl/M6bJg+w
 C3I1ptjWhCSEJht7lYyUxmP0zYd+7CzptNEXnD0hA1pLItsrfa5i7FwuS
 RQnNn5QtU7eQeEswEwSb/P5e5ns41Fc88fYbISM4xUDFzni5eDCu52c5w
 7LM6a3OQAhwoyPuCtbwzDlR1bn2vDSG/er7UC0km+279bMpi0ixXPItOn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261797015"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="261797015"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 08:46:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="698221623"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga001.fm.intel.com with SMTP; 08 Apr 2022 08:46:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 18:46:00 +0300
Date: Fri, 8 Apr 2022 18:46:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YlBYuMZz1m9IiYFg@intel.com>
References: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
 <20220408125200.9069-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220408125200.9069-2-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix skl_pcode_try_request
 function
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

On Fri, Apr 08, 2022 at 03:51:59PM +0300, Stanislav Lisovskiy wrote:
> Currently skl_pcode_try_request function doesn't
> properly handle return value it gets from
> snb_pcode_rw, but treats status != 0 as success,
> returning true, which basically doesn't allow
> to use retry/timeout mechanisms if PCode happens
> to be busy and returns EGAIN or some other status
> code not equal to 0.
> 
> We saw this on real hw and also tried simulating this
> by always returning -EAGAIN from snb_pcode_rw for 6 times, which
> currently will just result in false success, while it should
> have tried until timeout is reached:
> 
> [   22.357729] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
> 307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
> [   22.357831] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
> [   22.357892] i915 0000:00:02.0: [drm:skl_pcode_request [i915]] Success, exiting
> [   22.357936] i915 0000:00:02.0: [drm] ERROR Failed to inform PCU about cdclk change (err -11, freq 307200)
> 
> We see en error because higher level api, still notices that status was wrong,
> however we still did try only once.
> 
> We fix it by requiring _both_ the status to be 0 and
> request/reply match for success(true) and function
> should return failure(false) if either status turns
> out to be EAGAIN, EBUSY or whatever or reply/request
> masks do not match.
> 
> So now we see this in the logs:
> 
> [   22.318667] i915 0000:00:02.0: [drm:intel_cdclk_dump_config [i915]] Changing CDCLK to
> 307200 kHz, VCO 614400 kHz, ref 38400 kHz, bypass 19200 kHz, voltage level 0
> [   22.318782] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 1
> [   22.318849] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 2
> [   22.319006] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 3
> [   22.319091] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 4
> [   22.319158] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 5
> [   22.319224] i915 0000:00:02.0: [drm:__snb_pcode_rw [i915]] Returning EAGAIN retry 6
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pcode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index 391a37492ce5..fb6c43e8a02f 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -136,7 +136,7 @@ static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
>  {
>  	*status = __snb_pcode_rw(i915, mbox, &request, NULL, 500, 0, true);
>  
> -	return *status || ((request & reply_mask) == reply);
> +	return (*status == 0) && ((request & reply_mask) == reply);

The problem with this is that now we'll keep pointlessly banging it
even if it returns a real error.

We should never really see that -EAGAIN since it indicates that our
timeout is too short. So the real fix should be to increase that
timeout. But I guess we could do a belt-and-suspenders approach
where we also keep repeating on -EGAIN. But I'm thinking -EAGAIN
should WARN as well to make sure we notice that our timeout is wrong.

>  }
>  
>  /**
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel

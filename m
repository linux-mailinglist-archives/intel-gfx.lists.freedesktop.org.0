Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8AB63A83E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 13:26:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF15310E1C4;
	Mon, 28 Nov 2022 12:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428F910E1C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 12:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669638361; x=1701174361;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=lgctlinikA60FTSZylGSz5INYuEfbMfb91VIGGS/xf0=;
 b=Gd4onmXQ62LUOnIB9ydZOz0fKDmp+WzXagsfrmPuq4p4PWe6E0eZWRTX
 Kb3X/tCsn/LfnmOIitE/IIQud526hC0QDiWsdnEbJQfGcj7m/GoDn3577
 fIGvvVXGPV6cOUZyKol1BqlLgppVjzH92CAJhfAV7/iPzNRqy5wyiRfZ1
 VhL+wQg/MYpSh1reAC11gfJfrIE8dCHZy4r4h6WNtc5SWoMepX6ijvr9/
 ue2ysap+4U+XLjAqClu549eEsbtknMlfMHk8ahvjmC/32686jm0R4LvwA
 NaD4AgcJ1XMefMFON2v6H/IAL/M8Wh0JT6cYtg4URSCEkqqD6KGwtU9v+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="313518542"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="313518542"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 04:26:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="674207893"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="674207893"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 04:25:59 -0800
Date: Mon, 28 Nov 2022 14:25:55 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y4So0+zxrE4ckbqT@ideak-desk.fi.intel.com>
References: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
 <20221127052232.3942831-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221127052232.3942831-3-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ddi: Add missing
 wait-for-active for HDMI aligning with bspec updates
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Nov 27, 2022 at 10:52:32AM +0530, Ankit Nautiyal wrote:
> After enabling DDI_BUF_CTL, wait for DDI_BUF_CTL to be active.
> Bspec:4232,53339,49191,54145
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Looks ok to me. On the series:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9e16db920bf2..13bf0142627b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2944,6 +2944,8 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	}
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>  
> +	intel_wait_ddi_buf_active(dev_priv, port);
> +
>  	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
>  
> -- 
> 2.25.1
> 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8EF46D3F4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 14:04:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC98C7330E;
	Wed,  8 Dec 2021 13:04:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148A47330A;
 Wed,  8 Dec 2021 13:04:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="261901254"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="261901254"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 05:04:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="658278402"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 08 Dec 2021 05:04:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Dec 2021 15:04:17 +0200
Date: Wed, 8 Dec 2021 15:04:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: cgel.zte@gmail.com
Message-ID: <YbCtUZUSbEpCuDoi@intel.com>
References: <20211208074619.404138-1-luo.penghao@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211208074619.404138-1-luo.penghao@zte.com.cn>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH linux-next] drm/i915/display: Delete
 redundant post_mask assignment
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, luo penghao <luo.penghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 08, 2021 at 07:46:19AM +0000, cgel.zte@gmail.com wrote:
> From: luo penghao <luo.penghao@zte.com.cn>
> 
> This value will be overwritten by the following if statement, even
> if the if is not executed, the value will not be used
> 
> The clang_analyzer complains as follows:
> 
> Value stored to 'port_mask' is never read
> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: luo penghao <luo.penghao@zte.com.cn>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bd18432..3aad0c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2011,7 +2011,6 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  			return;
>  	}
>  
> -	port_mask = BIT(encoder->port);
>  	ddi_clk_needed = encoder->base.crtc;
>  
>  	if (encoder->type == INTEL_OUTPUT_DSI) {

'port_mask' declaration could now be moved into this block.

> -- 
> 2.15.2
> 

-- 
Ville Syrjälä
Intel

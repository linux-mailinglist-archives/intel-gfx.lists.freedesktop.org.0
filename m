Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F61A36B46E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 16:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C45F89CF2;
	Mon, 26 Apr 2021 14:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A2089CF2;
 Mon, 26 Apr 2021 14:02:24 +0000 (UTC)
IronPort-SDR: 6sNxZHp/+vX+PXfo8dWTxGV/1NHBFGFpZAIkm8o9BuvFYrL0rc7vGCe7DsSWgspYXhfyi+9nTX
 8NXcXuAg1Pmw==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="183819956"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="183819956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 07:02:23 -0700
IronPort-SDR: s7oyIgZqBjdjZo0+7BlmBmM9LWUjSS+7z47GV0wkE5zh63dppdouTE+mfg0im3BNK2KxNOpuVa
 dCGxZnqOoBjQ==
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="429407654"
Received: from unknown (HELO localhost) ([10.252.50.197])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 07:02:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: zuoqilin1@163.com, airlied@linux.ie, daniel@ffwll.ch
In-Reply-To: <20210317074228.1147-1-zuoqilin1@163.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210317074228.1147-1-zuoqilin1@163.com>
Date: Mon, 26 Apr 2021 17:02:17 +0300
Message-ID: <87fszd5el2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] display: Fix typo issue
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
Cc: zuoqilin <zuoqilin@yulong.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Mar 2021, zuoqilin1@163.com wrote:
> From: zuoqilin <zuoqilin@yulong.com>
>
> Change 'befor' to 'before'.
>
> Signed-off-by: zuoqilin <zuoqilin@yulong.com>

Thanks, pushed, sorry for the delay.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index f94025e..45187ff 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -846,7 +846,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
>  
>  	/* Enable port in pre-enable phase itself because as per hw team
> -	 * recommendation, port should be enabled befor plane & pipe */
> +	 * recommendation, port should be enabled before plane & pipe */
>  	if (is_cmd_mode(intel_dsi)) {
>  		for_each_dsi_port(port, intel_dsi->ports)
>  			intel_de_write(dev_priv,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

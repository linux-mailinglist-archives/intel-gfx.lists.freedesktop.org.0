Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563BC748816
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 17:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1067010E392;
	Wed,  5 Jul 2023 15:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4BE10E392
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 15:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688571171; x=1720107171;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9FoNnpVpp14F9SSEsujhSbWI80+07Obj1xIObyp7Sd0=;
 b=M8yj5hHDOV3OYwTdOGjIWsboCoxcr+ruuk4/CYghzgAVrJDzfLaqsIbK
 FlDlfv92EI7XWmrspVcbO7ZzrdxCnB+6WVSvjCt01jxa0ir5eh3brEd1t
 jVc4frzqgTSGeN0eYn3SaN0TfAR3yn1dD9MdYHOxs5KNrefLFKczpdEf1
 UR6BnlRYjs+b0Pz99sXswO8WieW4NwJGPNwUUBP6zaTUocGQU64kKSZNl
 rtXmB9LcNoeZPMbSOmObwhQ3PwAoLH8bSaCm8mJGTXI1e3yP9fmHi2jp4
 51+SqXQpg6McDtvJbRxFFVyJE9XOkWdWTQKQHlCpBN5xjRzfjh9CWc+23 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366857627"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="366857627"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 08:32:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="784605486"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="784605486"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 08:32:46 -0700
Date: Wed, 5 Jul 2023 18:32:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZKWNI2NEboNZAd+K@ideak-desk>
References: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230525101036.21564-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the disabling sequence for
 Bigjoiner
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 25, 2023 at 01:10:36PM +0300, Stanislav Lisovskiy wrote:
> According to BSpec 49190, when enabling crtcs, we first setup
> slave and then master crtc, however for disabling it should go
> vice versa, i.e first master, then slave, however current code
> does disabling in a same way as enabling. Fix this, by skipping
> non-master crtcs, instead of non-slaves.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0490c6412ab5..68958ba0ef49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6662,7 +6662,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
>  		 */
>  		if (!is_trans_port_sync_slave(old_crtc_state) &&
>  		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> +		    !intel_crtc_is_bigjoiner_master(old_crtc_state))

I don't see what does this fix. The sequence is correct at the moment
and this change would break it, leaving the encoder PLL enabled
incorrectly when the encoder->post_pll_disable() hook is called. Hence
it's NAK from side.

>  			continue;
>  
>  		intel_old_crtc_state_disables(state, old_crtc_state,
> -- 
> 2.37.3
> 

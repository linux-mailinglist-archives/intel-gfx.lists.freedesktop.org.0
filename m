Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B98631B93
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 09:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6D410E174;
	Mon, 21 Nov 2022 08:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85E910E174;
 Mon, 21 Nov 2022 08:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669019808; x=1700555808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eBeydiOQajbqZZIFP0SEa1BlA1vceH2GGQc4SiEL9hs=;
 b=Gw8+sRmCNakxZfNmEUQ3o078psFxludfh7VSm6yVElV5GCdtUUfiglNK
 pCGgoe9eUEQq8BZHIbwK7otUcXEIbMZhy41YHOq6gaot78LVah4dc+PQI
 j9T+MrnabP2p9vaLsYP6AT23zqvYNVbBl5HazP70aWnskXJ/TYfVhvwcM
 MTxY/e3sHCZZd9NxDz+eVe8rN6OtTpYbko+fkghNP4V+59kchp55UwUXK
 LMPAXj7X2p7KZkv5ghpR5CZM25ZaZ74lKO/h2+wg9+3zswd+O8KV44cTn
 RHo6o1Hjda05+tjprcxTdzL6mU8Njn4DFmfXfaQeVkQ+La9HHUoez4K++ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="293894334"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="293894334"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 00:36:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="783366436"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="783366436"
Received: from michalza-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.ger.corp.intel.com) ([10.213.31.92])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 00:36:45 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Mon, 21 Nov 2022 09:36:43 +0100
Message-ID: <2205212.iZASKD2KPV@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221118104222.57328-2-janusz.krzysztofik@linux.intel.com>
References: <20221118104222.57328-1-janusz.krzysztofik@linux.intel.com>
 <20221118104222.57328-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Fix negative value passed
 as remaining time
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
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 18 November 2022 11:42:21 CET Janusz Krzysztofik wrote:
> Commit b97060a99b01 ("drm/i915/guc: Update intel_gt_wait_for_idle to work
> with GuC") extended the API of intel_gt_retire_requests_timeout() with an
> extra argument 'remaining_timeout', intended for passing back unconsumed
> portion of requested timeout when 0 (success) is returned.  However, when
> request retirement happens to succeed despite an error returned by a call
> to dma_fence_wait_timeout(), that error code (a negative value) is passed
> back instead of remaining time.  If we then pass that negative value
> forward as requested timeout to intel_uc_wait_for_idle(), an explicit BUG
> will be triggered.
> 
> If request retirement succeeds but an error code other than -ETIME is
> passed back via remaininig_timeout, we have no clue on how much of
> the initial timeout might have been left for spending it on waiting for
> GuC to become idle.  Then, we have no choice other than fail in that case
> -- do it.  

Looking at this again, I think we should ignore those errors, like they have 
been already ignored by intel_gt_retire_requests_timeout() returning 0, and 
call intel_uc_wait_for_idle() with 0 timeout.

I'll submit new version if you agree.

Thanks,
Janusz

> However, if -ETIME is returned via remaining_timeout then we
> know that no more time has been left.  Then, pass 0 timeout value to
> intel_uc_wait_for_idle() to give it a chance to return success if GuC is
> already idle.
> 
> v2: Fix the issue on the caller side, not the provider.
> 
> Fixes: b97060a99b01 ("drm/i915/guc: Update intel_gt_wait_for_idle to work 
with GuC")
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: stable@vger.kernel.org # v5.15+
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/
intel_gt.c
> index 0325f071046ca..5d612ba547d23 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -677,8 +677,15 @@ int intel_gt_wait_for_idle(struct intel_gt *gt, long 
timeout)
>  			return -EINTR;
>  	}
>  
> -	return timeout ? timeout : intel_uc_wait_for_idle(&gt->uc,
> -							  
remaining_timeout);
> +	if (timeout)
> +		return timeout;
> +
> +	if (remaining_timeout == -ETIME)
> +		remaining_timeout = 0;
> +	else if (remaining_timeout < 0)
> +		return remaining_timeout;
> +
> +	return intel_uc_wait_for_idle(&gt->uc, remaining_timeout);
>  }
>  
>  int intel_gt_init(struct intel_gt *gt)
> 





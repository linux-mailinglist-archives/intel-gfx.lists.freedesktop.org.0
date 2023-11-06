Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BA77E2D9D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 21:06:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4C810E0F0;
	Mon,  6 Nov 2023 20:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E6110E0F0
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 20:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699301210; x=1730837210;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NsOS87yAmJXveTh2OB2FOG+AhLEL8jBZN7D/hhZkkRM=;
 b=Ol2yCPuqytsPL43c1P4ZuUSKkDwGvh3mfru09OSSVyZsFPYIIZMqsX+n
 zCi5OL09rO2bhlE3poK8tAyfb0cKJ/p092eYyUIwYKUyTgJ1BwWNVG+q4
 l4cSBwjwCUmDG2BnzD8d6sBa/EmYLZikWzU/9CiZIVx6h6oOSDB9ZwBUz
 WJpfY0YGbx5RlAtjfdtORUxfmw1ky7MSWhVecEWnF1/CWzSp0NETVhO+M
 /VIeY5djCUH2Bo7zdz/JDC0K5/zLPYhV7cytNzEC6HJTG9teIh8ZI2+94
 S0d4FGM+9+uq58rOlqAWr0AGapnOPq19tiufb4RZIQxMpCeLp1FMQDimE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="393251872"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="393251872"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 12:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755947931"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755947931"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 12:06:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 22:06:46 +0200
Date: Mon, 6 Nov 2023 22:06:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZUlHVorO6cqHOVRi@intel.com>
References: <20231031084557.1181630-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231031084557.1181630-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Use dma_fence
 interfaces instead of i915_sw_fence
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

On Tue, Oct 31, 2023 at 10:45:57AM +0200, Jouni Högander wrote:
>  	intel_atomic_commit_tail(state);
>  }
>  
> -static int
> -intel_atomic_commit_ready(struct i915_sw_fence *fence,
> -			  enum i915_sw_fence_notify notify)
> -{
> -	struct intel_atomic_state *state =
> -		container_of(fence, struct intel_atomic_state, commit_ready);
> -
> -	switch (notify) {
> -	case FENCE_COMPLETE:
> -		/* we do blocking waits in the worker, nothing to do here */
> -		break;
> -	case FENCE_FREE:
> -		{
> -			struct drm_i915_private *i915 = to_i915(state->base.dev);
> -			struct intel_atomic_helper *helper =
> -				&i915->display.atomic_helper;
> -
> -			if (llist_add(&state->freed, &helper->free_list))
> -				queue_work(i915->unordered_wq, &helper->free_work);

BTW looks like we're left with a bunch of dead code
around this free_list stuff...

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483226CD9A2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 14:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5B310E4CC;
	Wed, 29 Mar 2023 12:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72AD10E155;
 Wed, 29 Mar 2023 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680094328; x=1711630328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JYQNzSG0sA9n+CdvfVfHs6vcGajSiMyhZ3Q5AzZfSCo=;
 b=RRTHrU/oFSs89W/43FaVNfM+usW/H0ELylUqieByxM3kZVGaRQqSKrSD
 43acC61kD9OMsclr+oh3pg71PodKFMWWOlXhMKGAgzGcdgSUdlD4BxR1R
 9/+8t3dcasdqlAMkjZk7VzCTHj6jZ61bEaCT7+QqC5WLsVsPmeH18viBq
 xlFBhm0JgiiyA0DRgkwRNC6AaELDRtmHDwChsr3x+1KMwQxXRDhz6+VjH
 QTILU4en0hPT6am7NsgAR6usnVw/XbQF3inaCrE6Qpe2+gidj4NIPRbqh
 Ed1+PyeLHLPAGpBH8kgJ8bH+iagvhaCFx5MdwIRVtMewbKYXRRG8qUXuW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="324769435"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="324769435"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677768924"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677768924"
Received: from ostermam-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.249.32.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:52:02 -0700
Date: Wed, 29 Mar 2023 14:51:37 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZCQ0WSnZ9L2NFsvA@ashyti-mobl2.lan>
References: <20230224-track_gt-v6-0-0dc8601fd02f@intel.com>
 <20230224-track_gt-v6-2-0dc8601fd02f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230224-track_gt-v6-2-0dc8601fd02f@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 2/8] lib/ref_tracker: improve printing
 stats
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Dumazet <edumazet@google.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, David Airlie <airlied@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

[...]

> -void ref_tracker_dir_print_locked(struct ref_tracker_dir *dir,
> -				  unsigned int display_limit)
> +struct ref_tracker_dir_stats {
> +	int total;
> +	int count;
> +	struct {
> +		depot_stack_handle_t stack_handle;
> +		unsigned int count;
> +	} stacks[];
> +};
> +
> +static struct ref_tracker_dir_stats *
> +ref_tracker_get_stats(struct ref_tracker_dir *dir, unsigned int limit)
>  {
> +	struct ref_tracker_dir_stats *stats;
>  	struct ref_tracker *tracker;
> -	unsigned int i = 0;
>  
> -	lockdep_assert_held(&dir->lock);
> +	stats = kmalloc(struct_size(stats, stacks, limit),
> +			GFP_NOWAIT | __GFP_NOWARN);
> +	if (!stats)
> +		return ERR_PTR(-ENOMEM);
> +	stats->total = 0;
> +	stats->count = 0;
>  
>  	list_for_each_entry(tracker, &dir->list, head) {
> -		if (i < display_limit) {
> -			pr_err("leaked reference.\n");
> -			if (tracker->alloc_stack_handle)
> -				stack_depot_print(tracker->alloc_stack_handle);
> -			i++;
> -		} else {
> -			break;
> +		depot_stack_handle_t stack = tracker->alloc_stack_handle;
> +		int i;
> +
> +		++stats->total;
> +		for (i = 0; i < stats->count; ++i)
> +			if (stats->stacks[i].stack_handle == stack)
> +				break;
> +		if (i >= limit)
> +			continue;
> +		if (i >= stats->count) {
> +			stats->stacks[i].stack_handle = stack;
> +			stats->stacks[i].count = 0;
> +			++stats->count;
>  		}
> +		++stats->stacks[i].count;
> +	}
> +
> +	return stats;
> +}
> +
> +void ref_tracker_dir_print_locked(struct ref_tracker_dir *dir,
> +				  unsigned int display_limit)
> +{
> +	struct ref_tracker_dir_stats *stats;
> +	unsigned int i = 0, skipped;
> +	depot_stack_handle_t stack;
> +	char *sbuf;
> +
> +	lockdep_assert_held(&dir->lock);
> +
> +	if (list_empty(&dir->list))
> +		return;
> +
> +	stats = ref_tracker_get_stats(dir, display_limit);
> +	if (IS_ERR(stats)) {
> +		pr_err("%s@%pK: couldn't get stats, error %pe\n",
> +		       dir->name, dir, stats);
> +		return;
>  	}
> +
> +	sbuf = kmalloc(STACK_BUF_SIZE, GFP_NOWAIT | __GFP_NOWARN);
> +
> +	for (i = 0, skipped = stats->total; i < stats->count; ++i) {
> +		stack = stats->stacks[i].stack_handle;
> +		if (sbuf && !stack_depot_snprint(stack, sbuf, STACK_BUF_SIZE, 4))
> +			sbuf[0] = 0;
> +		pr_err("%s@%pK has %d/%d users at\n%s\n", dir->name, dir,
> +		       stats->stacks[i].count, stats->total, sbuf);
> +		skipped -= stats->stacks[i].count;
> +	}
> +
> +	if (skipped)
> +		pr_err("%s@%pK skipped reports about %d/%d users.\n",
> +		       dir->name, dir, skipped, stats->total);
> +
> +	kfree(sbuf);
> +
> +	kfree(stats);

There's a chance of confusion here because
ref_tracker_get_stats() might need a ref_tracker_put_stats() to
go with it.

When you allocate in one function and free in another without a
clear pair (get/put, alloc/free, etc.), it can be hard to notice
and could lead to mistakes.

But in this simple situation, it's not a big problem, and I'm not
sure if having the put side is really needed.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi

>  }
>  EXPORT_SYMBOL(ref_tracker_dir_print_locked);
>  
> 
> -- 
> 2.34.1

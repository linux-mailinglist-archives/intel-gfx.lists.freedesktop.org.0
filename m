Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFEB716FC6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 23:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3186A10E42A;
	Tue, 30 May 2023 21:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F69010E072
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 21:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685482351; x=1717018351;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/Lg3fqmLis7S0B5WxEsTu9hC8EPTJmTy5ge9d0XxRuQ=;
 b=OTzfTZmaRlmh8Nq3YrK63gPeSf6kNvx1bVbpnfvgShL081SUOP+1xtXG
 q3ahdYMXZ1vWw4Fi4TQLIOrQVJlm2bHnD32LENk5JU4H3rueV/WwuhiEU
 a1/yG0HerCNt3ysNYDRZtKOZMuaup1ZbgvqD8PmGwTvxqtKan8htl7fQp
 zzQQw9ov89wOE4m8bOESryeKLZl09gkdF9k7yUBSJfNPfUBzVN00zLNpS
 d+kbg8JRid3TD+d0UnQpA5LvvF1nm24VfA0aQwY6LnyU/IDGx2C7q6p9H
 /Kafo6WE08KWqM9TVhhJrNPZF5t6UKZRVyghZnKFjY23895dQreRRSCxZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="441409658"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="441409658"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:32:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="700796043"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="700796043"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO intel.com)
 ([10.252.53.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:32:09 -0700
Date: Tue, 30 May 2023 23:32:07 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZHZrV6l8ZlxpI3dw@ashyti-mobl2.lan>
References: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for
 compute contexts
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Wed, May 17, 2023 at 07:27:54PM +0530, Tejas Upadhyay wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Allow compute contexts to submit the maximal amount of work without
> blocking userspace.
> 
> The original size for user LRC ring's (SZ_16K) was chosen to minimise
> memory consumption, without being so small as to frequently stall in the
> middle of workloads. With the main consumers being GL / media pipelines
> of 2 or 3 batches per frame, we want to support ~10 requests in flight
> to allow for the application to control throttling without stalling
> within a frame.
> 
> v2:
>   - cover with else part
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>

pushed in drm-intel-gt-next.

Thanks,
Andi

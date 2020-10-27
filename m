Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A82329CA91
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 21:45:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF836E0E1;
	Tue, 27 Oct 2020 20:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCE2B6E0E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 20:45:32 +0000 (UTC)
IronPort-SDR: x5xZ9Dcs+Zi6cwXjlBY+rivBqK/P0Zx+Yssna/tevTNQ6QTrfqJATd7TPNvpdsYyn1RyGHv/nA
 kDkOYULsiLxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="155129219"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="155129219"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 13:45:32 -0700
IronPort-SDR: G+1ZhUnW0diwIUcoBZ8V9r5Pv8qfccn2ZRJyT2RxKtW8OjXNy2H3nOOsR1nYQxb6z28TfxSCry
 PTiwJMFG5WkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="304019138"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 27 Oct 2020 13:45:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 35DB35C2054; Tue, 27 Oct 2020 22:43:48 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201027184759.29888-1-chris@chris-wilson.co.uk>
References: <20201027184759.29888-1-chris@chris-wilson.co.uk>
Date: Tue, 27 Oct 2020 22:43:48 +0200
Message-ID: <87d013qu0r.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Avoid synchronous binds deep
 within locks
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> On bxt, we require a VT'd w/a to serialise all GGTT updates with memory
> transfers, and use stop_machine() for this purpose. stop_machine() is a
> global serialisation barrier and so dangerous to use from within
> critical sections, as the stop_machine() will wait for all cpus to enter
> the stop_machine callback, and those cpus may be waiting for the
> critical section already held.
>
> Fixes: d7085b0faac8 ("drm/i915/gem: Poison stolen pages before use")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 4f923b8c43fb..29bffc6afcc1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -505,6 +505,9 @@ static void dbg_poison(struct i915_ggtt *ggtt,
>  	if (!drm_mm_node_allocated(&ggtt->error_capture))
>  		return;
>  
> +	if (ggtt->vm.bind_async_flags & I915_VMA_GLOBAL_BIND)
> +		return; /* beware stop_machine() inversion */
> +
>  	GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
>  
>  	mutex_lock(&ggtt->error_mutex);
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5B448DF6D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 22:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009E310E124;
	Thu, 13 Jan 2022 21:12:36 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F27A10E124;
 Thu, 13 Jan 2022 21:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642108355; x=1673644355;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hu8DXr4nhqDEOri13wI4/OtuKmfz3TfGQqBAObgB9Ao=;
 b=l3U4QuTqBjToxzOIa/4NsdNQPjj+RNorbLj8hIx3F/n7u/XxUXAl+M0r
 A/rU6ZSdeNHSiv7tIONbdF1JuwvhOTHdCk4RUcTvvHRHn3joAJOPMUpUU
 IbOw8iIBexjmsVCXVIWq0hTdjB4pQOv9Samri5olWZEGzvrx4mmiE2gN8
 ginj7gXfcBEecCI/Xuui5m/8g2+k1o4650N6UyYql8I4HiF4NodwMK8zW
 0CYicHtFPdqfYQNVs2QL9eeF+6HQw1wCVzxyhHdu5dcbE56R2VYRrwekj
 srsbklv0MxULk0D3NNAkge38CaGa9ZxZJzAdi8CsRjqqLKFsoSdGUxcPw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224803820"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="224803820"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:12:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="559248510"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 13:12:07 -0800
Date: Thu, 13 Jan 2022 13:06:18 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113210617.GA31450@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-13-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-13-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v3 i-g-t 12/15]
 tests/i915/gem_exec_fence: Configure correct context
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
Cc: IGT-Dev@Lists.FreeDesktop.Org, Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 11:59:44AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The update to use intel_ctx_t missed a line that configures the
> context to allow hanging. Fix that.
> 
> Fixes: 09c36188b23f83ef9a7b5414e2a10100adc4291f

Typically I thought the Fixes comment was the sha from "git log
--oneline" + first line of commit message from that surrounded by ("").

So:
Fixes: <small sha> ("<message>")

With that fixed:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  tests/i915/gem_exec_fence.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> index 196236b27..5e45d0518 100644
> --- a/tests/i915/gem_exec_fence.c
> +++ b/tests/i915/gem_exec_fence.c
> @@ -3139,7 +3139,7 @@ igt_main
>  			igt_hang_t hang;
>  
>  			igt_fixture {
> -				hang = igt_allow_hang(i915, 0, 0);
> +				hang = igt_allow_hang(i915, ctx->id, 0);
>  				intel_allocator_multiprocess_start();
>  			}
>  
> -- 
> 2.25.1
> 

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB9348DE9F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D695C10E2B3;
	Thu, 13 Jan 2022 20:06:42 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA9410E148;
 Thu, 13 Jan 2022 20:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642104401; x=1673640401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KHWZGVOPe+OtUGlUt3SvsKoKMZ/ZDNqY1Fvi6R7WTfA=;
 b=IkH15pK8bFYFCMcc7ndqGfgfRwbnYUsK7IQJ2kLYHzmq2NFGHctayaa+
 8SnnETyr7sxQFhbremjMwaujTTMv/MhMXN07QbUWvuzAdVkNPasePd9I2
 TqHOFFj/lgS3U9oj+ZDiC5Ys4IaBNj7IYGKVuYk9ml3qeQZJZyxPDK5/G
 6tHtSdI/ZuzOofMJcQ4DrmcLl2oYgSn9A+u/5BfyYI25cFr+8cFuVpWZS
 /TVCqpcNqm0hmh8IL7W1NavIFqHQWD1SYo/f5vfmQhW7aQl33Rh+PgiBh
 BsS5Pjuba9iDiPRh7gWMU3tWOwKISi9PCpkcAVK2wiHJloVU03E3OJpEP A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="241665317"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241665317"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:06:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529814659"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:06:40 -0800
Date: Thu, 13 Jan 2022 12:00:50 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: John.C.Harrison@Intel.com
Message-ID: <20220113200050.GA12059@jons-linux-dev-box>
References: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
 <20220113195947.1536897-7-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220113195947.1536897-7-John.C.Harrison@Intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t 06/15] tests/i915/i915_hangman: Use
 the correct context in hangcheck_unterminated
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

On Thu, Jan 13, 2022 at 11:59:38AM -0800, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> The hangman framework sets up a context that is valid for all engines
> and has things like banning disabled. The 'unterminated' test then
> ignores it and uses the default context. Fix that.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  tests/i915/i915_hangman.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
> index 354769f39..6656b3fcd 100644
> --- a/tests/i915/i915_hangman.c
> +++ b/tests/i915/i915_hangman.c
> @@ -347,6 +347,7 @@ static void hangcheck_unterminated(const intel_ctx_t *ctx)
>  	memset(&execbuf, 0, sizeof(execbuf));
>  	execbuf.buffers_ptr = (uintptr_t)&gem_exec;
>  	execbuf.buffer_count = 1;
> +	execbuf.rsvd1 = ctx->id;
>  
>  	gem_execbuf(device, &execbuf);
>  	if (gem_wait(device, handle, &timeout_ns) != 0) {
> -- 
> 2.25.1
> 

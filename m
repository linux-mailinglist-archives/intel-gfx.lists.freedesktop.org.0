Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F399914A15A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC00C6EA94;
	Mon, 27 Jan 2020 09:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8976C6EA94;
 Mon, 27 Jan 2020 09:59:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="376093310"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 27 Jan 2020 01:59:25 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DD6CE5C1DFE; Mon, 27 Jan 2020 11:58:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200127085123.2229746-1-chris@chris-wilson.co.uk>
References: <20200127085123.2229746-1-chris@chris-wilson.co.uk>
Date: Mon, 27 Jan 2020 11:58:39 +0200
Message-ID: <87v9oxmd9s.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 i915/gem_pipe_control_store_loop: Limit runtime
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Use a runtime limit, not a fixed amount of work, so that it doesn't take
> several hundred seconds on the slower machines.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/i915/gem_pipe_control_store_loop.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/tests/i915/gem_pipe_control_store_loop.c b/tests/i915/gem_pipe_control_store_loop.c
> index b8a21d780..9330a47c8 100644
> --- a/tests/i915/gem_pipe_control_store_loop.c
> +++ b/tests/i915/gem_pipe_control_store_loop.c
> @@ -62,13 +62,13 @@ uint32_t devid;
>  
>  /* Like the store dword test, but we create new command buffers each time */
>  static void
> -store_pipe_control_loop(bool preuse_buffer)
> +store_pipe_control_loop(bool preuse_buffer, int timeout)
>  {
>  	int i, val = 0;
>  	uint32_t *buf;
>  	drm_intel_bo *target_bo;
>  
> -	for (i = 0; i < SLOW_QUICK(0x10000, 4); i++) {
> +	igt_until_timeout(timeout) {
>  		/* we want to check tlb consistency of the pipe_control target,
>  		 * so get a new buffer every time around */
>  		target_bo = drm_intel_bo_alloc(bufmgr, "target bo", 4096, 4096);
> @@ -182,10 +182,10 @@ igt_main
>  	}
>  
>  	igt_subtest("fresh-buffer")
> -		store_pipe_control_loop(false);
> +		store_pipe_control_loop(false, 2);
>  
>  	igt_subtest("reused-buffer")
> -		store_pipe_control_loop(true);
> +		store_pipe_control_loop(true, 2);
>  
>  	igt_fixture {
>  		intel_batchbuffer_free(batch);
> -- 
> 2.25.0
>
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

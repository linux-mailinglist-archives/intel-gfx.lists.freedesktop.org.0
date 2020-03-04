Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7230B1796CF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 18:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62EDA6E02D;
	Wed,  4 Mar 2020 17:34:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 103216E02D;
 Wed,  4 Mar 2020 17:34:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 09:34:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="240528637"
Received: from spoosarl-mobl1.amr.corp.intel.com (HELO [10.254.37.143])
 ([10.254.37.143])
 by orsmga003.jf.intel.com with ESMTP; 04 Mar 2020 09:34:57 -0800
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
References: <20200304092901.2347-1-tvrtko.ursulin@linux.intel.com>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <730444dd-9f81-55c5-e201-96540d76e436@intel.com>
Date: Wed, 4 Mar 2020 09:34:56 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200304092901.2347-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/query: Do not assert
 engine info rsvd being zero
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/4/2020 1:29 AM, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> These are not input fields and i915 currently leaves them untouched.
> 
> In the spirit of trusting the query as the authoritative source of
> information, stop asserting these output only reserved fields are zero.
> 
> This should prevent the test from auto-failing if we extend the data in
> the future.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Brian Welty <brian.welty@intel.com>

Reviewed-by: Brian Welty <brian.welty@intel.com>

> ---
>  tests/i915/i915_query.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 71807425fbc4..e7c6fc91e32b 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -690,11 +690,6 @@ static void engines(int fd)
>  			  engine->flags,
>  			  engine->capabilities);
>  
> -		/* MBZ fields. */
> -		igt_assert_eq(engine->rsvd0, 0);
> -		igt_assert_eq(engine->rsvd1[0], 0);
> -		igt_assert_eq(engine->rsvd1[1], 0);
> -
>  		switch (engine->engine.engine_class) {
>  		case I915_ENGINE_CLASS_RENDER:
>  			/* Will be tested later. */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

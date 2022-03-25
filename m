Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096C44E6F42
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 09:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4120510E19B;
	Fri, 25 Mar 2022 08:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB2810E19B;
 Fri, 25 Mar 2022 08:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648195537; x=1679731537;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iEFrcU6O4XfePwkY1ehIeWVlzewGqhUyfbr5Qd4i40s=;
 b=K34Q1tnTV7CBrz2GxeaM006pV08xJWdYjKqFnbJF/eF3SjDFOaTivCRr
 0o9+1aZNTgjV5AWh8lcE7wR96UcOPAXe5BLKyWRtDAa98rS5mEXGURqwC
 aO2meS/WShQFwD7TBnkMAeU64Ht7i6q0f5E4iD25omtLLatlcXYKp38pW
 o+dFlouZGlhPRmB7f1829/yjgDZHy2eaDNU2/vMUEw0SUYYzlkN690+V6
 24ru5g89PRKRFbMSpco+MWPZJQ4/taeqCHA/tqHaMgGcOIsxhKaMhWY9e
 /Rst5U0FWK6n9WpRvOK33qvkjZud/yvV4X4ja9BEZEV8CZED+6MziRFcq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258549106"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258549106"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 01:05:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="520118966"
Received: from vzinovie-mobl2.ccr.corp.intel.com (HELO [10.249.254.142])
 ([10.249.254.142])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 01:05:35 -0700
Message-ID: <64e19b8f58a8587e2c12bb5acd6953c9ccaacac5.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
Date: Fri, 25 Mar 2022 09:05:34 +0100
In-Reply-To: <20220324142621.347452-2-matthew.auld@intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-2-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-3.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/4] test/gem_lmem_swapping: account
 for object rounding
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

On Thu, 2022-03-24 at 14:26 +0000, Matthew Auld wrote:
> On DG2 the object size might be rounded when allocating lmem. Make
> sure
> we account for any rounding up.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux-intel.com>

> ---
>  tests/i915/gem_lmem_swapping.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/gem_lmem_swapping.c
> b/tests/i915/gem_lmem_swapping.c
> index 582111dd..193ff370 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -72,7 +72,7 @@ struct object {
>  };
>  
>  static uint32_t create_bo(int i915,
> -                         uint64_t size,
> +                         uint64_t *size,
>                           struct drm_i915_gem_memory_class_instance
> *region,
>                           bool do_oom_test)
>  {
> @@ -80,7 +80,7 @@ static uint32_t create_bo(int i915,
>         int ret;
>  
>  retry:
> -       ret = __gem_create_in_memory_region_list(i915, &handle,
> &size, region, 1);
> +       ret = __gem_create_in_memory_region_list(i915, &handle, size,
> region, 1);
>         if (do_oom_test && ret == -ENOMEM)
>                 goto retry;
>         igt_assert_eq(ret, 0);
> @@ -172,7 +172,7 @@ static void __do_evict(int i915,
>  
>         __gem_context_set_persistence(i915, 0, false);
>         size = 4096;
> -       batch = create_bo(i915, size, region, params->oom_test);
> +       batch = create_bo(i915, &size, region, params->oom_test);
>  
>         gem_write(i915, batch, 0, &bbe, sizeof(bbe));
>  
> @@ -199,7 +199,7 @@ static void __do_evict(int i915,
>                         params->count = i;
>                         break;
>                 }
> -               obj->handle = create_bo(i915, obj->size, region,
> params->oom_test);
> +               obj->handle = create_bo(i915, &obj->size, region,
> params->oom_test);
>  
>                 move_to_lmem(i915, objects + i, 1, batch, engine,
>                              params->oom_test);
> @@ -270,7 +270,7 @@ static void fill_params(int i915, struct params
> *params,
>  
>         if (flags & TEST_RANDOM) {
>                 params->size.min = 4096;
> -               handle = create_bo(i915, params->size.min, &region-
> >region,
> +               handle = create_bo(i915, &params->size.min, &region-
> >region,
>                                    do_oom_test);
>                 gem_close(i915, handle);
>                 params->size.max = 2 * size + params->size.min;



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE8A153071
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 13:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BA36F55F;
	Wed,  5 Feb 2020 12:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961536F55F;
 Wed,  5 Feb 2020 12:13:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 04:13:55 -0800
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="224634523"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 05 Feb 2020 04:13:54 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200205115915.1823074-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dd9bd10f-d43c-bce9-7a89-81e2c10fbc66@linux.intel.com>
Date: Wed, 5 Feb 2020 12:13:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205115915.1823074-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_exec: Update the list of
 engines on the actual context
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/02/2020 11:59, Chris Wilson wrote:
> We want to iterate the set of physical engines on this context, so
> update the iterators to act on a particular context.
> 
> This tunnel keeps on getting longer.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   lib/i915/gem_engine_topology.h | 7 +++++--
>   tests/i915/gem_ctx_exec.c      | 2 +-
>   2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
> index e40d7ec83..027d86be2 100644
> --- a/lib/i915/gem_engine_topology.h
> +++ b/lib/i915/gem_engine_topology.h
> @@ -67,9 +67,12 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
>   	     intel_next_engine(&i__))
>   
>   /* needs to replace "for_each_physical_engine" when conflicts are fixed */
> -#define __for_each_physical_engine(fd__, e__) \
> -	for (struct intel_engine_data i__ = intel_init_engine_list(fd__, 0); \
> +#define ____for_each_physical_engine(fd__, ctx__, e__) \
> +	for (struct intel_engine_data i__ = intel_init_engine_list(fd__, ctx__); \
>   	     ((e__) = intel_get_current_physical_engine(&i__)); \
>   	     intel_next_engine(&i__))
>   
> +#define __for_each_physical_engine(fd__, e__) \
> +	____for_each_physical_engine(fd__, 0, e__)
> +
>   #endif /* GEM_ENGINE_TOPOLOGY_H */
> diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
> index aeb8d2976..5b4e4b3db 100644
> --- a/tests/i915/gem_ctx_exec.c
> +++ b/tests/i915/gem_ctx_exec.c
> @@ -226,7 +226,7 @@ static void nohangcheck_hostile(int i915)
>   
>   	igt_require(__enable_hangcheck(dir, false));
>   
> -	__for_each_physical_engine(i915, e) {
> +	____for_each_physical_engine(i915, ctx, e) {
>   		igt_spin_t *spin;
>   
>   		spin = igt_spin_new(i915, ctx,
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

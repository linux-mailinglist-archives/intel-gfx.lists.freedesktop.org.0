Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C84E15FA3E
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 00:16:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7490D6FBD8;
	Fri, 14 Feb 2020 23:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E556FBD6;
 Fri, 14 Feb 2020 23:16:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 15:16:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,442,1574150400"; d="scan'208";a="223181449"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 15:16:38 -0800
Date: Fri, 14 Feb 2020 15:16:36 -0800
From: "Stimson, Dale B" <dale.b.stimson@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200214231636.GA64470@dbstims-dev.fm.intel.com>
References: <20200214194016.4054376-1-chris@chris-wilson.co.uk>
 <20200214194016.4054376-3-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214194016.4054376-3-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] lib/i915: Don't confuse
 param.size
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-14 19:40:15, Chris Wilson wrote:
> If the context has no engines, it has no engines -- do not override the
> user's setup.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Dale B Stimson <dale.b.stimson@intel.com>

> ---
>  lib/i915/gem_engine_topology.c | 19 +++++++------------
>  1 file changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 9daa03df4..ca1c1fdb9 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -195,17 +195,6 @@ static int gem_topology_get_param(int fd,
>  	if (__gem_context_get_param(fd, p))
>  		return -1; /* using default engine map */
>  
> -	if (!p->size)
> -		return 0;
> -
> -	/* size will store the engine count */
> -	p->size = (p->size - sizeof(struct i915_context_param_engines)) /
> -		  (offsetof(struct i915_context_param_engines,
> -			    engines[1]) -
> -		  sizeof(struct i915_context_param_engines));
> -
> -	igt_assert_f(p->size <= GEM_MAX_ENGINES, "unsupported engine count\n");
> -
>  	return 0;
>  }
>  
> @@ -242,7 +231,13 @@ struct intel_engine_data intel_init_engine_list(int fd, uint32_t ctx_id)
>  		query_engine_list(fd, &engine_data);
>  		ctx_map_engines(fd, &engine_data, &param);
>  	} else {
> -		/* param.size contains the engine count */
> +		/* engine count can be inferred from size */
> +		param.size -= sizeof(struct i915_context_param_engines);
> +		param.size /= sizeof(struct i915_engine_class_instance);
> +
> +		igt_assert_f(param.size <= GEM_MAX_ENGINES,
> +			     "unsupported engine count\n");
> +
>  		for (i = 0; i < param.size; i++)
>  			init_engine(&engine_data.engines[i],
>  				    engines.engines[i].engine_class,
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

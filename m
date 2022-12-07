Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC58564599D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 13:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5168210E3A2;
	Wed,  7 Dec 2022 12:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4423610E3A2;
 Wed,  7 Dec 2022 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670414896; x=1701950896;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=h2wyANO5pW1KKsvT9bpkmIV6TI3/Lb3FzutnsFT7e/4=;
 b=n0fbRhdozt2leYQn4zEX6e56p6j78u77SKkHUB0jrlTNUVxdwHusljib
 axqHZm71KMD5nrk3mYOYpLk9Bpunwzd5xbBoNmvk0+TSfx/+99YKqeqF7
 xyfb8Bmtyb6ygsTWhPyGQQN3rmNr8zzN+BQN/x5VgCj4N9CSrhhfDcPFy
 6h74lYbQwcp/2JjC3KdBwyLGKOfdyuBFuYx8WWeUJT35eo6GVFIdb8PBq
 XEGCbW3hPWrv7EdU7UZNejf98xbYXt3XInRI7vqvMLJq8kXKhHqqseRba
 awbcXpulXSSklF2wv1e3E/5I8CUvDdkqTXt23xWEiFiPVZ3G4j0mOu5BH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300293458"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300293458"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 04:08:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715166153"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715166153"
Received: from nsafari-mobl3.ger.corp.intel.com (HELO [10.213.213.175])
 ([10.213.213.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 04:08:13 -0800
Message-ID: <25733ca1-dcb2-4ca1-7ec4-879644e83607@linux.intel.com>
Date: Wed, 7 Dec 2022 12:08:11 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org, 
 igt-dev@lists.freedesktop.org
References: <20221207114730.77304-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221207114730.77304-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence:
 adjust timeout according to engines
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/12/2022 11:47, Andrzej Hajda wrote:
> With introduction of long running compute context preemption timeouts
> in some engines (rcs and ccs) can be quite big (by default 7.5s).
> Keeping spinner timeout to at least twice bigger than engines preemption
> timeout should allow to finish the test without -ETIME error.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2410
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   tests/i915/gem_ctx_persistence.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
> index a844439de19..9fb52818616 100644
> --- a/tests/i915/gem_ctx_persistence.c
> +++ b/tests/i915/gem_ctx_persistence.c
> @@ -1173,6 +1173,14 @@ static void many_contexts(int i915, const intel_ctx_cfg_t *cfg)
>   	gem_sync(i915, spin->handle);
>   	igt_spin_reset(spin);
>   
> +	for_each_ctx_cfg_engine(i915, cfg, e) {
> +		int t = 0;
> +
> +		gem_engine_property_scanf(i915, e->name,
> +					  "preempt_timeout_ms", "%d", &t);
> +		timeout = max_t(int64_t, timeout, 2000000ll * t);
> +	}
> +
>   	igt_until_timeout(30) {
>   		for_each_ctx_cfg_engine(i915, cfg, e) {
>   			const intel_ctx_t *ctx;

LGTM. And over time we will see if there will be remaining unexplained 
failures.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

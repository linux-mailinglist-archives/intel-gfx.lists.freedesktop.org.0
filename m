Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE094F67C7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 19:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD1BA10E1A4;
	Wed,  6 Apr 2022 17:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0873410E152
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 17:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649266866; x=1680802866;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=1duMWVn6U/5LIkt+kfdkYiUDIYDyi751Zn9muIdAwLc=;
 b=msQdWERR40oA/Y6qah5uhzEkBfusitCART5C7HZNjDvqC40vtHwDL910
 DJYc6MxMYr8K35j7oFgxHJChIsazSrUNnJmX3AsEA2Z6E/nBSMKITPFPe
 /JrxZENzzlFoyNK3PTmJ56G6WIQmnWH1kMd10kFaY+6f38xyEwtp0D5Hy
 l0fQGi344JNfS1ni3QmpqUNOBkr97T4zazXF5aA0BhNvVPwBRWgyNelaS
 cfB5O6Alve77S30ZoYoGV77K95u05ueBQqOLvkKFTFq+z9HavKiVCBOlX
 y3KFi3bkGEv2Qfw+G25EIYrxqQdjDVI7DFa6k56d7LrMfzvKEr8uftvJU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="241704556"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="241704556"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:41:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="570672360"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.41.213])
 ([10.252.41.213])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 10:41:05 -0700
Message-ID: <7684092d-7d86-98d5-b90b-bd7b9db37f74@linux.intel.com>
Date: Wed, 6 Apr 2022 19:41:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220406173023.1039107-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220406173023.1039107-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: handle more rounding
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 4/6/2022 7:30 PM, Matthew Auld wrote:
> Ensure we account for potential rounding up of lmem objects.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5485
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_migrate.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index c9c4f391c5cc..cca3b0db83c9 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -621,13 +621,15 @@ static int perf_copy_blt(void *arg)
>   
>   	for (i = 0; i < ARRAY_SIZE(sizes); i++) {
>   		struct drm_i915_gem_object *src, *dst;
> +		size_t sz;
>   		int err;
>   
>   		src = create_init_lmem_internal(gt, sizes[i], true);
>   		if (IS_ERR(src))
>   			return PTR_ERR(src);
>   
> -		dst = create_init_lmem_internal(gt, sizes[i], false);
> +		sz = src->base.size;
> +		dst = create_init_lmem_internal(gt, sz, false);
>   		if (IS_ERR(dst)) {
>   			err = PTR_ERR(dst);
>   			goto err_src;
> @@ -640,7 +642,7 @@ static int perf_copy_blt(void *arg)
>   				      dst->mm.pages->sgl,
>   				      I915_CACHE_NONE,
>   				      i915_gem_object_is_lmem(dst),
> -				      sizes[i]);
> +				      sz);
>   
>   		i915_gem_object_unlock(dst);
>   		i915_gem_object_put(dst);

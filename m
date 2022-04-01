Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA744EEC12
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 13:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D6B10E00D;
	Fri,  1 Apr 2022 11:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D180610E00D;
 Fri,  1 Apr 2022 11:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648811558; x=1680347558;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZHDqIGXFSqsQZAOQREKlkHy0x4C0uozwMe94q9Y8SKY=;
 b=g9DjreASN8eyfJJUdHJjUoMmzR3O1Orq/oQVzX8CofEEWF7SGAeWcXZV
 AI4YiIgVvfkuMuZbqYwTcUCgnWhOLvCPHodFAPUW8v8eafiTvQbhyRB5t
 6X88V+lxW9cgAOkEtykvWqK9cFgn3s30zM/eOOtLKuFNrbOyfCTJ1Eq+K
 AP5v47i1cJ7c9y5PkayG/A1URvKWc7INTVhG93/Q/0dLX2LRDP/P1m8hx
 HS1GIBQNHQqcoV5lRjtsxZcaql7GMLgEl/SMyZHJnWnNBPsDIwpAOrkmv
 GI7YOkxzpICnOCHf6cUgNtKDbSojYtuX4PcUMlQ8JE1cFVI0LgcQrGH2g w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="320795913"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="320795913"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 04:12:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="547756200"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.48.190])
 ([10.252.48.190])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 04:12:37 -0700
Message-ID: <ee076b1b-dacc-9c0d-484f-165259fc7aa7@linux.intel.com>
Date: Fri, 1 Apr 2022 13:12:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220401110902.446305-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220401110902.446305-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] tests/kms_pwrite_crc: handle
 missing get_caching
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

I was just looking into this :) LGTM Reviewed-by: Nirmoy Das 
<nirmoy.das@intel.com>

On 4/1/2022 1:09 PM, Matthew Auld wrote:
> gem_get_caching is not supported on discrete. The object itself should
> already be coherent with the display engine as-is on such platforms, by
> virtue of the scanout happening via local-memory.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4903
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   tests/i915/kms_pwrite_crc.c | 12 ++++++++----
>   1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/tests/i915/kms_pwrite_crc.c b/tests/i915/kms_pwrite_crc.c
> index 44fcfadb..584e6a19 100644
> --- a/tests/i915/kms_pwrite_crc.c
> +++ b/tests/i915/kms_pwrite_crc.c
> @@ -50,7 +50,6 @@ static void test(data_t *data)
>   	igt_output_t *output = data->output;
>   	struct igt_fb *fb = &data->fb[1];
>   	drmModeModeInfo *mode;
> -	uint32_t caching;
>   	void *buf;
>   	igt_crc_t crc;
>   
> @@ -76,9 +75,14 @@ static void test(data_t *data)
>   			0, 0, fb->width, fb->height,
>   			0, 0, fb->width << 16, fb->height << 16);
>   
> -	/* make sure caching mode has become UC/WT */
> -	caching = gem_get_caching(data->drm_fd, fb->gem_handle);
> -	igt_assert(caching == I915_CACHING_NONE || caching == I915_CACHING_DISPLAY);
> +	if (!gem_has_lmem(data->drm_fd)) {
> +		uint32_t caching;
> +
> +		/* make sure caching mode has become UC/WT */
> +		caching = gem_get_caching(data->drm_fd, fb->gem_handle);
> +		igt_assert(caching == I915_CACHING_NONE ||
> +			   caching == I915_CACHING_DISPLAY);
> +	}
>   
>   	/* use pwrite to make the other fb all white too */
>   	buf = malloc(fb->size);

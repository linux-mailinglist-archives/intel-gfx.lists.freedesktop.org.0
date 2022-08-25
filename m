Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3E25A1559
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 17:14:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450BA10E651;
	Thu, 25 Aug 2022 15:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7140310E651
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 15:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661440459; x=1692976459;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2AzxatEQPNO3a4EpbPyVwPyjtJcTlj39DuQnoKqHB+4=;
 b=W3S/fS+hCXfXBO8SWx3dP+mCerqwJYV28ff69UBP56IwKqjUsLF/otku
 ZItcFShJSsNngsFccr7cwrOQx5A+PNEYUwZdVjs3Wg89jxjQO9YS9vcv1
 sZyGNHoVg/sdp+iQ84Bj/0JHwp+4hm9ZbXzl2ZAzbk4btfT/owLLsuhhQ
 qqu/mGVi6QyV7etvFDXYIivuHq2B+dsIsv6Ftw8RF+onZReEuW6vhCjKD
 iRIEslx99gosFgYicf1U9n4mLDPUqC6V0NsPXgFfcOqlFo1UdyRQEl1/N
 YQ0KUBpJcwvTVaRZU6Koa1xvCxOAjqXvQH+ecTiBLcNzdE3W2+qoJRMIu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274657578"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="274657578"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:14:04 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="752518130"
Received: from weijiaxi-mobl.ccr.corp.intel.com (HELO [10.215.145.228])
 ([10.215.145.228])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:14:02 -0700
Message-ID: <85085f8d-8ade-0c4e-4d9e-5f4630fbc3f8@intel.com>
Date: Thu, 25 Aug 2022 16:13:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220825145211.22941-1-andrzej.hajda@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220825145211.22941-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: do not try
 misaligned_pin test on unmappable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 25/08/2022 15:52, Andrzej Hajda wrote:
> In case of Small BAR configurations stolen local memory can be unmappable.
> Trying to test it causes -ENOSPC error from _i915_gem_object_stolen_init.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6565
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Ah right. That failure makes perfect sense now :)

> ---
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index fb5e6196347925..667c4c004bdbcf 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1164,6 +1164,10 @@ static int misaligned_pin(struct i915_address_space *vm,
>   		if (hole_size < 3 * min_alignment)
>   			continue;
>   
> +		/* avoid -ENOSPC on unmappable memory */
> +		if (!mr->io_size)
> +			continue;

We could also pass I915_BO_ALLOC_GPU_ONLY when calling 
i915_gem_object_create_region(), since nothing actually needs to CPU 
access that memory, and then we still get coverage here for stolen? What 
do you think?

> +
>   		/* we can't test < 4k alignment due to flags being encoded in lower bits */
>   		if (min_alignment != I915_GTT_PAGE_SIZE_4K) {
>   			err = misaligned_case(vm, mr, addr + (min_alignment / 2), size, flags);

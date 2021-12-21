Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC6D47C0DB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 14:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8EC113388;
	Tue, 21 Dec 2021 13:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6994B113385
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 13:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640093749; x=1671629749;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JOeBg827xCw5as8hY7auL2LHN+PBILrT/M1VKiVq8MU=;
 b=GAwGW0cvshjROusKjx/yF3Od85C57OE+Pxig7rOdrf4CJUooa0LqY25T
 DbwpymsjML9tY1hLyzIHjV+eekWS7Y7hIdT/+7LlzjunFs6Ad9ll9CKyg
 EBi/yd+Omr30CPWe1ZBh/DZlcFnN6COKDxFqOWp9+gUNHNe9es+TZkwPn
 urd93JimpCgZ8krLMxnvqe/g4KvwtUDLPWyoefqE0a2fP0rNQ/H5ab77x
 SLaoYWRlwIJNez7re2CReYj7QeNWtIDeByhq1zlFb/i6skuHFV1QCOzUZ
 O457JMFwNTMLw5y/R8K1e7mRI28OgQzJg7kIWAMtkneaEWopwWuBjH8uC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10204"; a="326693636"
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="326693636"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 05:35:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,223,1635231600"; d="scan'208";a="757771533"
Received: from yuyingfa-mobl.ccr.corp.intel.com (HELO [10.249.254.38])
 ([10.249.254.38])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 05:35:47 -0800
Message-ID: <8bcb414a-7f18-a29a-3ccc-07f2143d9aeb@linux.intel.com>
Date: Tue, 21 Dec 2021 14:35:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211221130824.1796242-1-jani.nikula@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211221130824.1796242-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: fix slab-out-of-bounds access
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/21/21 14:08, Jani Nikula wrote:
> If VBT size is not a multiple of 4, the last 4-byte store will be out of
> bounds of the allocated buffer. Spotted with KASAN. Round up the
> allocation size.
>
> Reported-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Fixes: a36e7dc0af1c ("drm/i915/dg1: Read OPROM via SPI controller")
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 76a8f001f4c4..310609d186cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2369,7 +2369,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>   	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
>   	vbt_size &= 0xffff;
>   
> -	vbt = kzalloc(vbt_size, GFP_KERNEL);
> +	vbt = kzalloc(roundup(vbt_size, 4), GFP_KERNEL);

Use round_up since a power of 2?

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

>   	if (!vbt)
>   		goto err_not_found;
>   

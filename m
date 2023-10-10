Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFFE7BF670
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 10:50:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6F010E32D;
	Tue, 10 Oct 2023 08:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A938F10E32D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 08:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696927848; x=1728463848;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=J65wZxJlR/lyZy7dYJO3lgZGr4WcU/WTI6yfHH3dILY=;
 b=npVcbb9nKNoET9lY3aCWrZESEyISbPGYsaXgOnUIfI6EzfoUsqyaWYGR
 qL9Hlf4Ud8wV0t9zdVM44sd8jxhdl38pbYUhMLxYtlz4x2IKRH+PcjPcb
 eLTl4AMsYaVtkWru2l8scYeMmnwylex3uEu07Los6LUJtz9BYjWH9TKN/
 97QUOFZnQwTyJFeVpmU6ZCGMYs4A4gqsbo0FKmfv+JRBiV0gHRfWwi0Dq
 XHBUG1c+f3jaxbvU4ZYRSn/Iu7JhF4I16MN9IAdK1EV6MSALzBdMfpoCx
 oqxcUGqapIf6prg1fykPTs441xMUG1wFRn+rRxLN7dNPnnG44u0hWzyf9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="388212766"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="388212766"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 01:50:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="823700675"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="823700675"
Received: from emikisch-mobl.amr.corp.intel.com (HELO [10.213.174.67])
 ([10.213.174.67])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 01:50:45 -0700
Message-ID: <4e59a9fe-d5d2-c696-1c4a-5e83ed2b9c69@linux.intel.com>
Date: Tue, 10 Oct 2023 09:50:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231009172919.1769055-1-jonathan.cavitt@intel.com>
 <20231009172919.1769055-7-jonathan.cavitt@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231009172919.1769055-7-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v9 6/7] drm/i915/gt: Increase sleep in
 gt_tlb selftest sanitycheck
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/10/2023 18:29, Jonathan Cavitt wrote:
> For the gt_tlb live selftest, when operating on the GSC engine,
> increase the timeout from 10 ms to 200 ms because the GSC
> engine is a bit slower than the rest.

And others from 10ms to 20ms. By accident or deliberate?

Regards,

Tvrtko

> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_tlb.c | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 7e41f69fc818f..24beb94aa7a37 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -136,8 +136,15 @@ pte_tlbinv(struct intel_context *ce,
>   	i915_request_get(rq);
>   	i915_request_add(rq);
>   
> -	/* Short sleep to sanitycheck the batch is spinning before we begin */
> -	msleep(10);
> +	/*
> +	 * Short sleep to sanitycheck the batch is spinning before we begin.
> +	 * FIXME: Why is GSC so slow?
> +	 */
> +	if (ce->engine->class == OTHER_CLASS)
> +		msleep(200);
> +	else
> +		msleep(20);
> +
>   	if (va == vb) {
>   		if (!i915_request_completed(rq)) {
>   			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",

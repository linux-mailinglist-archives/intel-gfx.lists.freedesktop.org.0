Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7D24B9C3A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 10:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A01D10EAC3;
	Thu, 17 Feb 2022 09:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEF1D10EAC0;
 Thu, 17 Feb 2022 09:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645090891; x=1676626891;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=fKwmBgzfQ65tycvuSp+Aqetu2KA4jdCKfhGJfBdeJtQ=;
 b=cxq4C1396wIZJZ3N36oWGw59/7LmpMAtv8Kg0rdoy34a0mVSplVC880w
 nGYIcUGEjUHYJG4kY2fU0OOocyhOdHWsxC/2+C/zpB6aoWJP2a6m1zWN8
 M6FlXFVSfcdTUahbRpi65HZh5EPrf+IBCWQyzte52beLnJp6eJjvGZFNq
 QKn22ZbDNUQB6JuuPULRm4Hcdyn9j1GaB8FvK2wEPFa9lZ2HPM3djjnIV
 SN60YLZvTlQ00eYfKmi899Gr5g4/fe1cA/cwRPzWd/cppBHS1/v2veya+
 04mKL5UIlRxLikipWtedddT5Zh2QS0XQs/X9XFoXt5gFd1RyZnUlSmQUM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="249672718"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="249672718"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 01:41:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="530080237"
Received: from markorti-mobl.ger.corp.intel.com (HELO [10.213.216.21])
 ([10.213.216.21])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 01:41:29 -0800
Message-ID: <9c817a6f-ba41-1b68-5a7a-30032881057b@linux.intel.com>
Date: Thu, 17 Feb 2022 09:41:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20220216181504.7155-1-vinay.belgaumkar@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220216181504.7155-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc/slpc: Correct the param count
 for unset param
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


On 16/02/2022 18:15, Vinay Belgaumkar wrote:
> SLPC unset param H2G only needs one parameter - the id of the
> param.
> 
> Fixes: 025cb07bebfa ("drm/i915/guc/slpc: Cache platform frequency limits")

How serious is this? Does it need backporting? If so:

Cc: <stable@vger.kernel.org> # v5.15+

?

Regards,

Tvrtko

> Suggested-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 13b27b8ff74e..ba21ace973da 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -110,7 +110,7 @@ static int guc_action_slpc_unset_param(struct intel_guc *guc, u8 id)
>   {
>   	u32 request[] = {
>   		GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST,
> -		SLPC_EVENT(SLPC_EVENT_PARAMETER_UNSET, 2),
> +		SLPC_EVENT(SLPC_EVENT_PARAMETER_UNSET, 1),
>   		id,
>   	};
>   

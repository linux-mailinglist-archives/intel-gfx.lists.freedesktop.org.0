Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226964B145C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 18:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 787EB10E8B2;
	Thu, 10 Feb 2022 17:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0516010E8B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 17:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644514633; x=1676050633;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=DIm3G86tqcc1dN8ki0EfYC8yFAG+zL2rPcqadP7wSQM=;
 b=at8rzLVmTxSL4fy3VfJAK9xGND5NdTEBlh24CZDA7LtRn61noY9wXM7b
 GRKrvJutj7r0ITm3nncNFUJ6UBEcetGLgQeo4Was5ef61xA+60s6rDVWg
 oU6hzckQyfDy2nIiY8shjFWkIhAYlRyl43xbjJwUheo4+dH3U3Mhfbvbh
 pjfxMKmO8rAjwW4ksaTjt+aSmPFPxkK1xKljmxUVL7RZSF4q//UlkCKk5
 bX4MBpphv9PnmyIP8ZGij69/SNcKKiV5FBUXrvca+sXH0Jxtf+62LM/Jr
 mqOGIDZ2fjo+EGclJOmrvjasV9gLq+9FKRWHmiQg/dpIltjlKTTTO7y53 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249300010"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249300010"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 09:37:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="485771094"
Received: from scurtin-mobl1.ger.corp.intel.com (HELO [10.213.201.86])
 ([10.213.201.86])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 09:37:11 -0800
Message-ID: <0513ef01-26f4-c800-4901-2782426b810d@linux.intel.com>
Date: Thu, 10 Feb 2022 17:37:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220210164430.299456-1-anusha.srivatsa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220210164430.299456-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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


On 10/02/2022 16:44, Anusha Srivatsa wrote:
> DMC_DEBUGU3 changes from DG1+
> 
> Bspec: 49788
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 ++++--
>   drivers/gpu/drm/i915/i915_reg.h                      | 1 +
>   2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f4de004d470f..87fc4b9b7b93 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -474,8 +474,10 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>   		 * reg for DC3CO debugging and validation,
>   		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
>   		 */
> -		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(dev_priv, DMC_DEBUG3));
> +		if (IS_DGFX(dev_priv))
> +			seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, DG1_DMC_DEBUG3));
> +		else
> +			seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv, DMC_DEBUG3));

Nicer not to duplicate it all and use ternary:

		seq_printf(m, "DC3CO count: %d\n",
			   intel_de_read(dev_priv,
					 IS_DGFX(dev_priv) ?
					 DG1_DMC_DEBUG3 : DMC_DEBUG3));
?

Regards,

Tvrtko

>   	} else {
>   		dc5_reg = IS_BROXTON(dev_priv) ? BXT_DMC_DC3_DC5_COUNT :
>   						 SKL_DMC_DC3_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 87c92314ee26..802962e3977c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5633,6 +5633,7 @@
>   #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
>   
>   #define DMC_DEBUG3		_MMIO(0x101090)
> +#define DG1_DMC_DEBUG3		_MMIO(0x13415C)
>   
>   /* Display Internal Timeout Register */
>   #define RM_TIMEOUT		_MMIO(0x42060)

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BE18CDCE0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 00:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C174810EC76;
	Thu, 23 May 2024 22:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLbTwR1i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB2410EC76
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 22:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716503492; x=1748039492;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6vGhhoW43JZvbv3u1DoJ5G11O8fe16VyZJJJXfP9Zic=;
 b=WLbTwR1igU8hMUfas1oZFp+msvegydWNgXkt+JyfueJ/4L9/dCF1LVTy
 8wLvbItBaulPA1MAik+wf8oIert/NlXPIoqoyuuvGfa4dvsPGAlff7QPs
 iPiz6jz+vl34QDJpRoQhvctrqEmAAcoq7cH6tymQtroSVMXsHGmhtAQag
 cd392eNQxtSisH4ZQSGFCEV2zea08cWebS6L9rMQfdDgEbeYKCmf1bNON
 IgXUe8W29x5JNpHZOPhgnw6PruzAQzhZyZuwIazfYkFVwbQp/RUbExM4S
 EdlnItdbzJI7bt2wJvb5PyT3o7S+jHot13cNmrRmdrw+Sy8tMrWxPXq6K Q==;
X-CSE-ConnectionGUID: pseef2PuQoKrihIn6cgHVw==
X-CSE-MsgGUID: 71NBvjf4QeqxLsYQHBLTww==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23430183"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="23430183"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 15:31:31 -0700
X-CSE-ConnectionGUID: NAeP6Gu1QD+PTJlRFIuATQ==
X-CSE-MsgGUID: X/POWqgvRgm6bfQoWlCuYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="71234904"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.206])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 15:31:29 -0700
Date: Fri, 24 May 2024 00:31:26 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Chen, Angus" <angus.chen@intel.com>
Cc: tejas.upadhyay@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/mtl: Update workaround 14018778641
Message-ID: <Zk_Dvl0pA5bU2T6o@ashyti-mobl2.lan>
References: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <20240513141917.74208-1-angus.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513141917.74208-1-angus.chen@intel.com>
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

Hi Angus,

On Mon, May 13, 2024 at 02:19:17PM +0000, Chen, Angus wrote:
> The WA should be extended to cover VDBOX engine. We found that
> 28-channels 1080p VP9 encoding may hit this issue.
> 
> Signed-off-by: Chen, Angus <angus.chen@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index d1ab560fcdfc..da0a481a375e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1586,6 +1586,9 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 */
>  	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
>  
> +	/* Wa_14018778641 */
> +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);

Wa_14018778641 says that we need to disable the FTLB for Compute,
Render, GSC, VDBox and VEBox engines, but here we are doing it
only for GSC and VDBox, why?

Besides, in MTL we have the media GT where the MOD_CTRL family
has address 0x38cf34. Should this be checked and included, as
well?

Thanks,
Andi

>  	/* Wa_22016670082 */
>  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>  
> -- 
> 2.34.1

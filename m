Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 343D546D478
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 14:33:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3B5735BF;
	Wed,  8 Dec 2021 13:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0349E735BD;
 Wed,  8 Dec 2021 13:33:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="235340325"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="235340325"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 05:33:01 -0800
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="479899194"
Received: from sbogar-mobl2.ger.corp.intel.com (HELO [10.249.254.43])
 ([10.249.254.43])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 05:32:59 -0800
Message-ID: <189512ff-7308-a0f8-0dee-2124e93b91b2@linux.intel.com>
Date: Wed, 8 Dec 2021 14:32:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
References: <20211207165156.31244-1-ramalingam.c@intel.com>
 <20211207165156.31244-5-ramalingam.c@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211207165156.31244-5-ramalingam.c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: enforce min page size for
 scratch
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>, Andi <andi.shyti@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Chris_intel_ID <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/7/21 17:51, Ramalingam C wrote:
> From: Matthew Auld <matthew.auld@intel.com>
>
> If the device needs 64K minimum GTT pages for device local-memory,
> like on XEHPSDV, then we need to fail the allocation if we can't
> meet it, instead of falling back to 4K pages, otherwise we can't
> safely support the insertion of device local-memory pages for
> this vm, since the HW expects the correct physical alignment and
> size for every PTE, if we mark the page-table as 64K GTT mode.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gtt.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 1428e2b9075a..869b771a5fdc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -337,6 +337,18 @@ int setup_scratch_page(struct i915_address_space *vm)
>   		if (size == I915_GTT_PAGE_SIZE_4K)
>   			return -ENOMEM;
>   
> +		/*
> +		 * If we need 64K minimum GTT pages for device local-memory,
> +		 * like on XEHPSDV, then we need to fail the allocation here,
> +		 * otherwise we can't safely support the insertion of
> +		 * local-memory pages for this vm, since the HW expects the
> +		 * correct physical alignment and size when the page-table is
> +		 * operating in 64K GTT mode, which includes any scratch PTEs,
> +		 * since userpsace can still touch them.

s/userpsace/userspace/

LGTM.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

> +		 */
> +		if (HAS_64K_PAGES(vm->i915))
> +			return -ENOMEM;
> +
>   		size = I915_GTT_PAGE_SIZE_4K;
>   	} while (1);
>   }

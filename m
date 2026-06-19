Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JCr9E+k5NWoypQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 14:45:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B176A5D66
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 14:45:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=B5Iwa2++;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E6E10F5BE;
	Fri, 19 Jun 2026 12:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB8A10F5BD;
 Fri, 19 Jun 2026 12:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781873125; x=1813409125;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TGA2JCPZEyY6tdazTpYaB8HNXLg5+WpDgvXWYYF8kao=;
 b=B5Iwa2++zPx5F1mZpmxKgOEO18Jtp6AzOuBoQ7U089PbHimLSAKPdfg8
 JDoYZzr+xwd3kDqJmWuLftZihBFrmowb3trRCvDTNstMRlsXAsQyQ2ygs
 DE+kRP9vdRGKLPzJy2aTmEqNNj2wHX2k3fxMbAIPmkhXVdXiTUFNi6dbY
 5qDDPA7Mfbt5F9NB93n0CWO3Li0EIkuMDgefmv/F1TWLLAKyIqp4oh6kz
 BRwm8ZV8fFIBjgUd/IAQv5+GgpojxFeDxPcCvQB7SNRH3pqc5XCjXrfDb
 hG81Yc0iSk24WB0SHx99uDUoPbHSYC8pSM9wu8F32EHPhogba2zgMBUFl w==;
X-CSE-ConnectionGUID: DzdPcNm8Qw6AoaZcN6j4TA==
X-CSE-MsgGUID: xSyJ2fhMS72goIUCNyp4xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="82813298"
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="82813298"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 05:45:24 -0700
X-CSE-ConnectionGUID: 2pDFDLJBTtKUDhrtwZS5JA==
X-CSE-MsgGUID: /z4r2GaHTmC1/71lwG4Prw==
X-ExtLoop1: 1
Received: from conormcd-mobl2.ger.corp.intel.com (HELO [10.245.244.211])
 ([10.245.244.211])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 05:45:22 -0700
Message-ID: <4c7300dc-ab5e-464f-9704-d8da378ee1af@intel.com>
Date: Fri, 19 Jun 2026 13:45:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gpu/buddy: bail out of try_harder when alignment cannot
 be honoured
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com, =?UTF-8?Q?Timur_Krist=C3=B3f?=
 <timur.kristof@gmail.com>, John Olender <john.olender@gmail.com>,
 stable@vger.kernel.org
References: <20260618124755.2751205-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20260618124755.2751205-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.auld@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34B176A5D66

On 18/06/2026 13:47, Arunpravin Paneer Selvam wrote:
> The try_harder contiguous fallback could return a range whose start
> offset did not match the caller's min_block_size. Check each candidate
> against the requested alignment and reject the allocation when no
> candidate satisfies it, instead of handing back a misaligned range.
> 
> Suggested-by: Christian König <christian.koenig@amd.com>
> Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Timur Kristóf <timur.kristof@gmail.com>
> Cc: John Olender <john.olender@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
> ---
>   drivers/gpu/buddy.c | 33 +++++++++++++++++++++------------
>   1 file changed, 21 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
> index dc81fe0301ce..28ed3250ac57 100644
> --- a/drivers/gpu/buddy.c
> +++ b/drivers/gpu/buddy.c
> @@ -1127,13 +1127,11 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>   	struct gpu_buddy_block *block;
>   	unsigned int tree, order;
>   	LIST_HEAD(blocks_lhs);
> -	unsigned long pages;
>   	u64 modify_size;
>   	int err;
>   
>   	modify_size = rounddown_pow_of_two(size);
> -	pages = modify_size >> ilog2(mm->chunk_size);
> -	order = fls(pages) - 1;
> +	order = ilog2(modify_size) - ilog2(mm->chunk_size);
>   	if (order == 0)
>   		return -ENOSPC;
>   
> @@ -1149,31 +1147,42 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>   		while (iter) {
>   			block = rbtree_get_free_block(iter);
>   
> -			/* Allocate blocks traversing RHS */
>   			rhs_offset = gpu_buddy_block_offset(block);
> +
> +			/* Allocate blocks traversing RHS */
>   			err =  __gpu_buddy_alloc_range(mm, rhs_offset, size,
>   						       &filled, blocks);
> -			if (!err || err != -ENOSPC)
> +			if (err && err != -ENOSPC)
>   				return err;
> +			if (!err && IS_ALIGNED(rhs_offset, min_block_size))
> +				return 0;
> +			if (!err)

Should we do some kind of rhs = round_down(rhs, min_block_size) at the 
start? Just wondering if we can get something misaligned here, that 
should have succeeded if we just applied the round_down first, in some 
edge case?

> +				goto next;
>   
> -			lhs_size = max((size - filled), min_block_size);
> -			if (!IS_ALIGNED(lhs_size, min_block_size))
> -				lhs_size = round_up(lhs_size, min_block_size);
> +			lhs_size = round_up(max((size - filled), min_block_size),
> +					    min_block_size);

Can this be simplified as: round_up(size - filled, min_block_size) ?

> +
> +			if (lhs_size > rhs_offset)

What is the idea with this check?

> +				goto next;
>   
>   			/* Allocate blocks traversing LHS */
> -			lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
> +			lhs_offset = rhs_offset - lhs_size;
> +
> +			if (!IS_ALIGNED(lhs_offset, min_block_size))
> +				goto next;

Would it make sense to just align the lhs down, if misaligned, instead 
of baling? If the final size we get back is slightly too large, we can 
just apply a trim at the end?

> +
>   			err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
>   						       NULL, &blocks_lhs);
>   			if (!err) {
>   				list_splice(&blocks_lhs, blocks);
>   				return 0;
> -			} else if (err != -ENOSPC) {
> +			}
> +			if (err != -ENOSPC) {
>   				gpu_buddy_free_list_internal(mm, blocks);
>   				return err;
>   			}
> -			/* Free blocks for the next iteration */
> +next:
>   			gpu_buddy_free_list_internal(mm, blocks);
> -
>   			iter = rb_prev(iter);
>   		}
>   	}
> 
> base-commit: b9e2d5cdaab05c997be3a69d9b372d7676683e1b


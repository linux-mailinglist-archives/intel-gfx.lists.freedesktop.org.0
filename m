Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sRTkKPZBRmrUMwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 12:48:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27666F6278
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 12:48:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BrVp59r+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7FA10F2AF;
	Thu,  2 Jul 2026 10:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E203810F2AF;
 Thu,  2 Jul 2026 10:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782989299; x=1814525299;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=k+6/Z2gs9cVAAhPHygjW4k5IBm479qlyxmM2Tyng3a0=;
 b=BrVp59r+FTTu494SrsP6YnzNcXlOprMtp8Q3MF/2VMkvFdtBlXWggoez
 OHPdZEGfcr7EbgTbAnz8C65WZDgCkaJKBVENdbStzKbwtaI4KF522IEio
 IbLojHF8jw2lo9t79Rk4wZnDkv8u784j0GSEHYBSTTvKIMDiqkNp2R2Cd
 J5bK8+LbHbPUh+IrDuKlflDHAFYQLpBPurcuIkfFSHjR8CW5Zn9Fs5SCe
 ZHUc3UVstOeOjPJJdNV3iMub7/QMzWe9vDlLzyZWwiTD4ltO/y/qOtm+q
 y38ge2m2uTKem2rF1dTN7bIydY6UVS9jY3K8ajMGCwK49EYz5e7dJqk5h Q==;
X-CSE-ConnectionGUID: 0nuLj8ttQwGIKKW1KUyDHw==
X-CSE-MsgGUID: yrUZSfyjTmmJlid7nr/+dA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94340598"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94340598"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 03:48:19 -0700
X-CSE-ConnectionGUID: OSSGdLzfTSae19ANyeWZrg==
X-CSE-MsgGUID: urzn876CTMaIgaRj9LGwYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="250174105"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO [10.245.244.242])
 ([10.245.244.242])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 03:48:16 -0700
Message-ID: <a4657daa-c58e-4441-ad81-c3e770bc5a94@intel.com>
Date: Thu, 2 Jul 2026 11:48:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] gpu/buddy: bail out of try_harder when alignment
 cannot be honoured
To: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Cc: alexander.deucher@amd.com, =?UTF-8?Q?Timur_Krist=C3=B3f?=
 <timur.kristof@gmail.com>, John Olender <john.olender@gmail.com>,
 stable@vger.kernel.org
References: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20260629074311.68836-1-Arunpravin.PaneerSelvam@amd.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.auld@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,amd.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D27666F6278

On 29/06/2026 08:43, Arunpravin Paneer Selvam wrote:
> The try_harder contiguous fallback could return a range whose start
> offset did not match the caller's min_block_size. When a candidate's
> start is misaligned, realign it: free the misaligned run and reallocate
> exactly @size at the next lower min_block_size boundary. This keeps the
> returned size unchanged with no surplus to trim, and rejects the request
> only when no aligned candidate fits.
> 
> v2: align misaligned candidates down to min_block_size instead of
>      bailing out, for both the RHS and LHS paths (Matthew).
> 
> Suggested-by: Christian König <christian.koenig@amd.com>
> Fixes: 0a1844bf0b53 ("drm/buddy: Improve contiguous memory allocation")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Timur Kristóf <timur.kristof@gmail.com>
> Cc: John Olender <john.olender@gmail.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>   drivers/gpu/buddy.c | 63 +++++++++++++++++++++++++++++++--------------
>   1 file changed, 44 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
> index dc81fe0301ce..3c73ae87f3c5 100644
> --- a/drivers/gpu/buddy.c
> +++ b/drivers/gpu/buddy.c
> @@ -1118,22 +1118,30 @@ static int __gpu_buddy_alloc_range(struct gpu_buddy *mm,
>   			     blocks, total_allocated_on_err);
>   }
>   
> +static int __alloc_contig_aligned_retry(struct gpu_buddy *mm,
> +					u64 unaligned_offset,
> +					u64 size,
> +					u64 min_block_size,
> +					struct list_head *blocks)
> +{
> +	u64 aligned_offset = round_down(unaligned_offset, min_block_size);
> +
> +	return __gpu_buddy_alloc_range(mm, aligned_offset, size, NULL, blocks);
> +}
> +
>   static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>   				     u64 size,
>   				     u64 min_block_size,
>   				     struct list_head *blocks)
>   {
> -	u64 rhs_offset, lhs_offset, lhs_size, filled;
> +	u64 rhs_offset, lhs_offset, filled;
>   	struct gpu_buddy_block *block;
>   	unsigned int tree, order;
> -	LIST_HEAD(blocks_lhs);
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
> @@ -1149,31 +1157,48 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
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
> +			if (!err) {
> +				/* Allocate the unaligned RHS offset using round_down */
> +				gpu_buddy_free_list_internal(mm, blocks);
> +				err = __alloc_contig_aligned_retry(mm, rhs_offset,
> +								   size,
> +								   min_block_size,
> +								   blocks);
> +				if (!err)
> +					return 0;
> +				if (err != -ENOSPC) {
> +					gpu_buddy_free_list_internal(mm, blocks);
> +					return err;
> +				}
> +				goto next;
> +			}
>   
> -			lhs_size = max((size - filled), min_block_size);
> -			if (!IS_ALIGNED(lhs_size, min_block_size))
> -				lhs_size = round_up(lhs_size, min_block_size);
> +			if (size - filled > rhs_offset)
> +				goto next;
>   
> -			/* Allocate blocks traversing LHS */
> -			lhs_offset = gpu_buddy_block_offset(block) - lhs_size;
> -			err =  __gpu_buddy_alloc_range(mm, lhs_offset, lhs_size,
> -						       NULL, &blocks_lhs);
> -			if (!err) {
> -				list_splice(&blocks_lhs, blocks);
> +			lhs_offset = rhs_offset - (size - filled);
> +
> +			/* Allocate the unaligned LHS offset using round_down */
> +			gpu_buddy_free_list_internal(mm, blocks);
> +			err = __alloc_contig_aligned_retry(mm, lhs_offset, size,
> +							   min_block_size, blocks);
> +			if (!err)
>   				return 0;
> -			} else if (err != -ENOSPC) {
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
> base-commit: 6648301c5bb2ef23f0fb15bcb01d21ff66f36799


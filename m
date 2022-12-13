Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E4164B3FA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 12:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9FC10E30A;
	Tue, 13 Dec 2022 11:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE0910E30A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 11:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670930235; x=1702466235;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+HAbrYBOsCIhaY+MNHSff6HjLO+8scLOIyLjMaFcxvY=;
 b=VGndVYlIjgVhjtr43VbFvMqcJKQbaZVozcARWkCU7Z+4NvYwaazfTZyz
 ITA+ghGsouqEYWPkioV2+xkWJRzA6FfyF4TgxbW7TnIBVqV9ffYMaqC8O
 8h6Yh6Qbycp6Y0Qiuxrmn/D1U56rV1t9qzBfdBwiVnS3wG2hPz+7wNLrs
 3imukOtSRwuXOb4Lsp9lP3E/2IelLnONtbu+qjU7yA+eAwKyTvGFen7Sb
 G70YPLfLzpxoEP+sU6NQUNooRIQB7vBEgP/7smfDIZ9JZeKBO5Acgbhjg
 6cEk4R9RO+U1gi9Rp+qklh2Gg7b5HedaiiZWQxL/JCPja/L+yHvf5G82a A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="305747470"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="305747470"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:17:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="679267298"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="679267298"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.39.162])
 ([10.249.39.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 03:17:13 -0800
Message-ID: <e80b9078-bb90-7760-a17b-3a35c54a37df@linux.intel.com>
Date: Tue, 13 Dec 2022 12:17:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221212171958.82593-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221212171958.82593-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/migrate: fix corner case in
 CCS aux copying
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/12/2022 6:19 PM, Matthew Auld wrote:
> In the case of lmem -> lmem transfers, which is currently only possible
> with small-bar systems, we need to ensure we copy the CCS aux state
> as-is, rather than nuke it. This should fix some nasty display
> corruption sometimes seen on DG2 small-bar systems, when also using
> DG2_RC_CCS_CC for the surface.
>
> Fixes: e3afc690188b ("drm/i915/display: consider DG2_RC_CCS_CC when migrating buffers")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_migrate.c | 37 +++++++++++++++++++------
>   1 file changed, 29 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index e08a739b7091..3f638f198796 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -839,14 +839,35 @@ intel_context_migrate_copy(struct intel_context *ce,
>   			if (err)
>   				goto out_rq;
>   
> -			/*
> -			 * While we can't always restore/manage the CCS state,
> -			 * we still need to ensure we don't leak the CCS state
> -			 * from the previous user, so make sure we overwrite it
> -			 * with something.
> -			 */
> -			err = emit_copy_ccs(rq, dst_offset, INDIRECT_ACCESS,
> -					    dst_offset, DIRECT_ACCESS, len);
> +			if (src_is_lmem) {
> +				/*
> +				 * If the src is already in lmem, then we must
> +				 * be doing an lmem -> lmem transfer, and so
> +				 * should be safe to directly copy the CCS
> +				 * state. In this case we have either
> +				 * initialised the CCS aux state when first
> +				 * clearing the pages (since it is already
> +				 * allocated in lmem), or the user has
> +				 * potentially populated it, in which case we
> +				 * need to copy the CCS state as-is.
> +				 */
> +				err = emit_copy_ccs(rq,
> +						    dst_offset, INDIRECT_ACCESS,
> +						    src_offset, INDIRECT_ACCESS,
> +						    len);
> +			} else {
> +				/*
> +				 * While we can't always restore/manage the CCS
> +				 * state, we still need to ensure we don't leak
> +				 * the CCS state from the previous user, so make
> +				 * sure we overwrite it with something.
> +				 */
> +				err = emit_copy_ccs(rq,
> +						    dst_offset, INDIRECT_ACCESS,
> +						    dst_offset, DIRECT_ACCESS,
> +						    len);
> +			}
> +
>   			if (err)
>   				goto out_rq;
>   

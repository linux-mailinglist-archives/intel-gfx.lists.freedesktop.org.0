Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DDA4D181B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 13:41:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DF410E380;
	Tue,  8 Mar 2022 12:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1D410E380
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646743285; x=1678279285;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=jNx1oGmaBqPYW5/VZtE6coc7RuRnLV93F7ErcVVkCWk=;
 b=dXVY3Ltg+FOaI53YPGlw4L2cHOnuQTk9ZsSVrSMk6uXVPmMp1nRAS1+B
 rFZaP8T85b3fnK1/63defDl1wOFw3cq4Is7Wa6Rv8sHPeDD3VUFVeNWhX
 qMILDtI6iPcisHit0nQp4zsYI2JEjeCDBXdmHRXh5/mLrs9Ml1TvX1yVo
 oVJI2RV4BPc++iIT4jScQ9V8VvHlgUx1aQcAwhPVBEuo5H/IcKdJ05Nuf
 4fXsuTsHrMp6+X87oZ0s9IbTypOksSGXluWbT+4opjd/eezRxFQUYwyfc
 +DELkbXigQraDN0r7kG+U9+n9ra5YTB0rOiTqOg6HppmOH0sZndn6cJkl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254401098"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="254401098"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:41:24 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="553603376"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.218.61])
 ([10.251.218.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:41:24 -0800
Message-ID: <594009e8-62b4-4312-8ecf-f7c308bccbb3@linux.intel.com>
Date: Tue, 8 Mar 2022 13:41:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220202173154.3758970-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220202173154.3758970-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: opportunistically apply
 ALLOC_CONTIGIOUS
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

LGTM  Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 02/02/2022 18:31, Matthew Auld wrote:
> It looks like this code was accidentally dropped at some point(in a
> slightly different form), so add it back. The gist is that if we know
> the allocation will be one single chunk, then we can just annotate the
> BO with I915_BO_ALLOC_CONTIGUOUS, even if the user doesn't bother. In
> the future this might prove to be potentially useful.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_region.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index a4350227e9ae..dd414a2bcb06 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -57,6 +57,9 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
>   
>   	size = round_up(size, default_page_size);
>   
> +	if (default_page_size == size)
> +		flags |= I915_BO_ALLOC_CONTIGUOUS;
> +
>   	GEM_BUG_ON(!size);
>   	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_MIN_ALIGNMENT));
>   

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1922D60AC8E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 16:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21BA410E780;
	Mon, 24 Oct 2022 14:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2403710E770
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 14:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666620569; x=1698156569;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=IEr0ItsA6t9SYVgtuCTMstifW1JFquqI9wcLtl3asDc=;
 b=Be6MJl/XNcXWogrHDCmialA/eKKLwrQJ7E2LYFK436wQY9r9XUZag426
 04Z55NtfmmCJqG23mvLzxNyFBfL+uLXGSSS54zykVBxyJ+UbzkghNdg8M
 Co4cA6jeB77X7XIqDVolmA4KuGvSg4grEDpuM9JJPHXtXYMcYgc6wqFa1
 g8vCmUWn2AkSi4pDCChxjj9JjaXdyvgXII7H/EMAg3iAYh2ksxNFV2cMU
 CJ5QW4BLVZDi94xRuM19vx4pOMD7iPj3TrRdAqU0QwvrhUuK1SvbuDwti
 1a3nfckzpVuINzOVpI7J+mNHoyDXJihSd5yYtba44wfgYwiECafNBveCq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305032953"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="305032953"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:06:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="582424564"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="582424564"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.4.106])
 ([10.213.4.106])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 07:06:01 -0700
Message-ID: <636ac83a-a3d5-b313-0f28-8ad5f4df2630@intel.com>
Date: Mon, 24 Oct 2022 16:05:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
 <20221013133001.3639326-3-andrzej.hajda@intel.com>
 <Y1K9NCH8hiqaS0Zc@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y1K9NCH8hiqaS0Zc@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: add
 igt_vma_move_to_active_unlocked
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.10.2022 17:39, Andi Shyti wrote:
> Hi Andrzej,
> 
> [...]
> 
>> +static inline int __must_check
>> +igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
>> +				unsigned int flags)
>> +{
>> +	int err;
>> +
>> +	i915_vma_lock(vma);
>> +	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
>> +	i915_vma_unlock(vma);
>> +	return err;
>> +}
>> +
> 
> there are calls to i915_vma_move_to_active also outside
> selftests, why not having a i915_move_to_active_unlocked() in
> i915_vma.h?

As I said before, Chris suggested real users of this call should use 
locking explicitly.

> 
> Besides here you break also the bisect, because between patch 1
> and 2 the i915_move_to_avtive would also call
> i915_request_await_object(). Right or am I getting confused?

Hmm, looking at v2, I do not see breakage. Patch 1 moves all occurrences 
of i915_request_await_object inside i915_vma_move_to_active.
Patch 2, just replaces sequence of calls with call to new helper.

Regards
Andrzej

> 
> Andi
> 
> [...]


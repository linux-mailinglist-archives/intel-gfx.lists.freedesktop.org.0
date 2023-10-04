Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A567B7D79
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 12:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E353310E0F4;
	Wed,  4 Oct 2023 10:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CBA910E0F9
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 10:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696416269; x=1727952269;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=oxhIvK8J5/D5dsVsH8D03VWd8HuqEItWw4qB9KkmliI=;
 b=diBOU0/4ovRrnI7E3PK7oNu8xH1uNJg17Gtn8p/k2l+G7P2Vi4FpmDtS
 N6JpX9u6XM6gsjx4tpcMMkuK1Ay8VD2Q3H4SgqzlNLRq2zzKgliBIpDr6
 mYexsEGhfDfJTzGottchbm6iyxhWlakeKi3/qWlYcFwFlqcqDvqT/6YkK
 vFPyi2qs7a0l3SGxbzQLnLpsaTscik0Epo117ghzKDoXsUxlfZXjUYWkA
 l6pVKKaqETVm3yptRpsx2Gc6fDwPl37gwQs/9/fUqWg7hDhl+It5s8Usa
 hce1g9iY6ddWNnUFsrlEv2PD9veF+4qAmqSVhw3DoPWONcFIqPj90ozb8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="363396096"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="363396096"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="998408531"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="998408531"
Received: from mridgewa-mobl.ger.corp.intel.com (HELO [10.213.209.90])
 ([10.213.209.90])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 03:44:27 -0700
Message-ID: <24d32a0f-6d04-e892-26c4-ade9546d7bc6@linux.intel.com>
Date: Wed, 4 Oct 2023 11:44:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Mathias Krause <minipli@grsecurity.net>, intel-gfx@lists.freedesktop.org
References: <20230928182019.10256-1-minipli@grsecurity.net>
 <20230928182019.10256-3-minipli@grsecurity.net>
 <ef432c24-51c1-9749-b5a8-ab5f99784e10@linux.intel.com>
 <bd237dca-43b6-0f86-3df4-57fee3c6f30e@linux.intel.com>
 <d174ff90-4ddc-f256-d1ae-c673a64926b7@grsecurity.net>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <d174ff90-4ddc-f256-d1ae-c673a64926b7@grsecurity.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Clarify type evolution of
 uabi_node/uabi_engines
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


On 04/10/2023 10:52, Mathias Krause wrote:
> On 03.10.23 09:32, Tvrtko Ursulin wrote:
>> On 29/09/2023 12:00, Tvrtko Ursulin wrote:
>>> [...]
>>> Thanks again!
>>>
>>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Patches pushed to drm-intel-gt-next.
>>
> 
> Thanks, Tvrtko!
> 
> I guess this implies no backport of the first patch to older kernels, as
> it affects v6.3+?

It will land in 6.6+ from purely drm and drm-intel flows but indeed, we 
forgot about the stable tag.

I am however pretty sure it will get picked up nevertheless, since the 
Fixes: tag is correct, and I think stable maintainers use it from their 
scripts to identify interesting patches.

Regards,

Tvrtko

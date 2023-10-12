Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694C77C675F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C1310E44B;
	Thu, 12 Oct 2023 08:07:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2229E10E441;
 Thu, 12 Oct 2023 08:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098029; x=1728634029;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/3p8UnKtyhRASKYaq/uxP8S8VzAFyIKQXxor8r3WQas=;
 b=TzaBB9CSc7XHVCZuzmdVVQucp2xYsnCyVUeU8+GmmAwHRUR4f320mEM0
 L4MAOi7IsNPIbgNh9WzPGPEiRqjMvLbRo/gTlRZw/+KKrFZD1ea9VxDCc
 kf/et+aX1Bcf/oRIOE5Hp8U48uSDhu5vp+BZygXTn82lhF+6jWso2RrDY
 UUWdTNmofy4iveEs7oUCjalCuVUR7AwOGZywnGwSZFGeirqF14UUNVomS
 F8TKQcDd33KM3LwHtY/+45xQZz9V1TI/3eTPWWWMMEfFQd77ySYczwzu1
 FMmc/mqmvcmSYOto17Oyptv5WsJpOMFzgfllsJphmtOAcw58gpe2KNAzK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="415911582"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="415911582"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="789291712"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="789291712"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO [10.213.239.225])
 ([10.213.239.225])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:07:06 -0700
Message-ID: <6a80d16c-9bcf-6be8-8267-076c933b463e@linux.intel.com>
Date: Thu, 12 Oct 2023 09:07:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
 <20231011083845.798413-3-tvrtko.ursulin@linux.intel.com>
 <20231011124056.c3e3nnihpa2pahzn@kamilkon-desk.igk.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231011124056.c3e3nnihpa2pahzn@kamilkon-desk.igk.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/4] tools/intel_gpu_top: Optimise
 interactive display a bit
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


On 11/10/2023 13:40, Kamil Konieczny wrote:
> Hi Tvrtko,
> On 2023-10-11 at 09:38:44 +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Padding the percentage bars and table columns with spaces happens quite a
>> lot so lets do better than putchar at a time. Have a table of visually
>> empty strings and build the required length out of those chunks.
>>
>> While at it, also move the percentage bar table into its function scope.
>>
>> v2:
>>   * Fix checkpatch and use ARRAY_SIZE. (Kamil)
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thanks Kamil, now pushed!

Regards,

Tvrtko

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F5F4EC849
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 17:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5700610E5B2;
	Wed, 30 Mar 2022 15:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3446D10E5B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 15:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648654321; x=1680190321;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=S15NJukH1WALTR0l05s4FcgyKB1KDSZ1W+B0F4nF20Q=;
 b=TR8H1+KwS8PMiD79Fr0+xsuTH2BBFCECGZ3ZVQr9e8YtuOAk7MDPyhDY
 zNzFHnewXz/D3SuOettzCmqrPtkU6ndrf89PZMUrJTFEETYvmLOI1F1Ou
 PqIQ/qiuBEaKMiv5yZLn2il/unDfHD7q9FZdShxfHBXGvhpLH2DE79JxQ
 lnb1aFHp6FO9CxqZxvf4C+Han+A9Y/Or6ZrBgBPkhGoa2lKTeUtHpSI5e
 DY/O36u/T6VHs84dDaKqYVn79Lf/DrhRUoHom0WEBFd9gjG5M+VSMEf2a
 0ubMrsaelheus1NRNKFgUA5TmclqLy95vcIrej/BKeTLIAYUf4fvG0fyh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="241726192"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="241726192"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:31:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="653876977"
Received: from kryan2-mobl5.ger.corp.intel.com (HELO [10.213.207.30])
 ([10.213.207.30])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:31:38 -0700
Message-ID: <74aeae6c-6834-f34f-cdfc-54ee72b1e2f2@linux.intel.com>
Date: Wed, 30 Mar 2022 16:31:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Yang, Fei" <fei.yang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20220328171650.1900674-1-fei.yang@intel.com>
 <164852101313.5798.13575790930450522054@emeril.freedesktop.org>
 <10e046ca-6da2-8a2c-96e3-d5edf4267da7@linux.intel.com>
 <BYAPR11MB2567D70146A33C6FD4D6BCB59A1E9@BYAPR11MB2567.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <BYAPR11MB2567D70146A33C6FD4D6BCB59A1E9@BYAPR11MB2567.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev10=29?=
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


On 29/03/2022 16:59, Yang, Fei wrote:
>> On 29/03/2022 03:30, Patchwork wrote:
>>> *Patch Details*
>>> *Series:*	drm/i915: avoid concurrent writes to aux_inv (rev10)
>>> *URL:*	https://patchwork.freedesktop.org/series/100772/
>>> <https://patchwork.freedesktop.org/series/100772/>
>>> *State:*	success
>>> *Details:*
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/index.html
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/index.html>
>>>
>>>
>>>    CI Bug Log - changes from CI_DRM_11415_full -> Patchwork_22704_full
>>>
>>>
>>>      Summary
>>>
>>> *SUCCESS*
>>>
>>> No regressions found.
>>
>> And pushed.
> Thank you so much.
> 
>>
>> Does this have any chance of fixing hangs in multiple simultaneous media workloads?
> I hope so. The hang fixed by this patch is pretty easy to reproduce on TGL with two parallel video decoding processes.

Great!

Do you want to send it to stable in this case? Would need to look how 
far back it would be easy to backport.

Regards,

Tvrtko



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 581742C5E96
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 02:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459DE6E581;
	Fri, 27 Nov 2020 01:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7566E581
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 01:51:50 +0000 (UTC)
IronPort-SDR: u2nwv/rOFrnBxI40gY90eVd1Eyab0nvGOr3uQGwg/IUL6/r7/rlNdtj3FwL1oWpjYFZd82baKq
 dfSi04DDuUjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="160112912"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="160112912"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 17:51:49 -0800
IronPort-SDR: pzZfEjcbbXsj4s7s73nUVpfDvWKSmE07ZQjnjC23jff/Sz97bd5OoHA+DZZhEACrnr/8yzu93d
 Hg7xkpQfTlFQ==
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="547895306"
Received: from xingzhen-mobl.ccr.corp.intel.com (HELO [10.238.4.68])
 ([10.238.4.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 17:51:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Oliver Sang <oliver.sang@intel.com>
References: <20201111155811.GB24657@xsang-OptiPlex-9020>
 <160527763346.5566.3471508802857132043@jlahtine-mobl.ger.corp.intel.com>
 <20201119072018.GA15197@xsang-OptiPlex-9020>
 <160625087275.29168.7080737993781611765@build.alporthouse.com>
 <ab9ebc5a-7d79-8003-c7bc-5cf0923983c6@linux.intel.com>
 <160642644736.15379.9850669928715684163@build.alporthouse.com>
From: Xing Zhengjun <zhengjun.xing@linux.intel.com>
Message-ID: <e14d546c-b1c6-448b-d8ac-50d072802c98@linux.intel.com>
Date: Fri, 27 Nov 2020 09:51:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <160642644736.15379.9850669928715684163@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [drm/i915/gem] 59dd13ad31:
 phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second
 -54.0% regression
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
Cc: feng.tang@intel.com, tiejun.li@intel.com, guangli.li@intel.com,
 frank.du@intel.com, guobing.chen@intel.com, jiebin.sun@intel.com,
 Shuhua.Fan@intel.com, Matthew Auld <matthew.auld@intel.com>,
 fan.zhao@intel.com, ying.huang@intel.com, shan.kang@intel.com,
 zhengjun.xing@intel.com, Wenhuan.Huang@intel.com,
 intel-gfx@lists.freedesktop.org, lkp@lists.01.org, ming.a.chen@intel.com,
 yu.ma@intel.com, jessica.ji@intel.com, dapeng1.mi@intel.com,
 wangyang.guo@intel.com, LKML <linux-kernel@vger.kernel.org>,
 gengxin.xie@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/27/2020 5:34 AM, Chris Wilson wrote:
> Quoting Xing Zhengjun (2020-11-26 01:44:55)
>>
>>
>> On 11/25/2020 4:47 AM, Chris Wilson wrote:
>>> Quoting Oliver Sang (2020-11-19 07:20:18)
>>>> On Fri, Nov 13, 2020 at 04:27:13PM +0200, Joonas Lahtinen wrote:
>>>>> Hi,
>>>>>
>>>>> Could you add intel-gfx@lists.freedesktop.org into reports going
>>>>> forward.
>>>>>
>>>>> Quoting kernel test robot (2020-11-11 17:58:11)
>>>>>>
>>>>>> Greeting,
>>>>>>
>>>>>> FYI, we noticed a -54.0% regression of phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second due to commit:
>>>>>
>>>>> How many runs are there on the bad version to ensure the bisect is
>>>>> repeatable?
>>>>
>>>> test 4 times.
>>>> zxing@inn:/result/phoronix-test-suite/performance-true-Radial_Gradient_Paint-1024x1024-jxrendermark-1.2.4-ucode=0xd6-monitor=da39a3ee/lkp-cfl-d1/debian-x86_64-phoronix/x86_64-rhel-8.3/gcc-9/59dd13ad310793757e34afa489dd6fc8544fc3da$ grep -r "operations_per_second" */stats.json
>>>> 0/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4133.487932,
>>>> 1/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4120.421503,
>>>> 2/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4188.414835,
>>>> 3/stats.json: "phoronix-test-suite.jxrendermark.RadialGradientPaint.1024x1024.operations_per_second": 4068.549514,
>>>
>>> a w/o revert (drm-tip)
>>> b w/ revert
>>> +mB----------------------------------------------------------------------------+
>>> |                             ..b                                              |
>>> |                             ..b.aa                                           |
>>> |                             ....a.a                                          |
>>> |                             ....a.a                                          |
>>> |                      b  b  ........a                                         |
>>> |                   b  b  b b......... a                                       |
>>> |                   b  bb bbb...........                                       |
>>> |b               ab bbab.bb.b............ba b a a            ab               a|
>>> |                             |__A__|                                          |
>>> |                             |MA_|                                            |
>>> +------------------------------------------------------------------------------+
>>>       N                Min           Max        Median           Avg        Stddev
>>> a 120          3621.8761     7356.4442     4606.7895     4607.9132     156.17693
>>> b 120          2664.0563     6359.9686     4519.5036     4534.4463     95.471121
>>>
>>> The patch is not expected to have any impact on the machine you are testing on.
>>> -Chris
>>>
>>
>> What's your code base?
>> For my side:
>> 1) sync the code to the head of Linux mainline
>> 2) git reset --hard 59dd13ad31
>> 3) git revert 59dd13ad3107
>> We compare the test result of commit 59dd13ad3107 (step 2) and
>> 2052847b06f8 (step 3, revert 59dd13ad3107), the regression should
>> related with 59dd13ad3107. Each test case we run 5 times.
> 
> a 59dd13ad31
> b revert
> +mB----------------------------------------------------------------------------+
> |                        a                                                     |
> |                       aa                                                     |
> |                     .b....ba                                                 |
> |                     .b....baa    b                                           |
> |                     .........b . b   b                                       |
> |                a   b.......... ..bb  b        b                              |
> |              b a   b.............b.a b        b                              |
> |a    a  b.    .aaa..b.............b..b....ab   b     a                       .|
> |                      |__A__|                                                 |
> |                      |___A_____|                                             |
> +------------------------------------------------------------------------------+
>      N                Min           Max        Median           Avg        Stddev
> a 120          3658.3435     6363.7812     4527.4406      4536.612     86.095459
> b 120          3928.9643      6375.829     4576.0482     4585.4224      157.284
> 

Could you share with me your test commands and the hardware info, then I 
can reproduce it on my side? Thanks.
-- 
Zhengjun Xing
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

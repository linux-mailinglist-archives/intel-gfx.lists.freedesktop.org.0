Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4313F68D561
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 12:26:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC7510E4D5;
	Tue,  7 Feb 2023 11:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E65D10E4D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 11:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675769174; x=1707305174;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=BLzii2X/746nENyWVx0MA8Dt0rT0aZSD3Vp9JPBqoco=;
 b=CqA7Lrnx04wYpM1B9zwfBkBaX2kWoLU4RdJaprmiObqVqFyh2JRSPomR
 ZWVg4oJMjbiRo0RO4Peaw6gFOLlFmKnBvIK/xjxwoWxuPrNeOfrhVeFzW
 u042elUuF0LHjCU5G37YLCslVgP0RpzN4tv7zbRZj4/83gajcWNxfN7Pq
 dka+uIjfY4sbY62X8ZKQQA9Xk/kSwt2T8MaRZ+7QxbeZN0Yzx/OKpwlJH
 SEdRgfUQEc5ikQWrgdSj9WmVznuosDG+MB0wu5LLhHDd7c1IPb+06Akl6
 K/BmpjKOqjzEbSfNekwXeyfV7u8gRwNR8hxrq3sjnkTVjkX1iMwknXEy6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309128592"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309128592"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:26:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840729816"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840729816"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga005.jf.intel.com with ESMTP; 07 Feb 2023 03:26:13 -0800
Received: from linux.intel.com (maurocar-mobl2.ger.corp.intel.com
 [10.252.3.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id F1C7358041D;
 Tue,  7 Feb 2023 03:26:12 -0800 (PST)
Received: from localhost ([127.0.0.1])
 by linux.intel.com with esmtp (Exim 4.96)
 (envelope-from <mauro.chehab@linux.intel.com>) id 1pPM70-00Cucj-2v;
 Tue, 07 Feb 2023 12:26:10 +0100
Message-ID: <d8d5ca0e-d368-3dbd-e6fc-b5a3fd5cbb96@linux.intel.com>
Date: Tue, 7 Feb 2023 12:26:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230121190853.18722-1-gustavo.sousa@intel.com>
 <Y9A0Dz4TtLB4a4Wn@intel.com>
 <9d0f7ab2-d6a0-094d-56fa-7ded3592fb66@linux.intel.com>
 <Y+EyEZA5VbcKSMjd@intel.com>
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
In-Reply-To: <Y+EyEZA5VbcKSMjd@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix sphinx warnings for
 workarounds documentation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/6/23 18:00, Rodrigo Vivi wrote:
> On Tue, Jan 31, 2023 at 02:03:01PM +0100, Mauro Carvalho Chehab wrote:
>> On 1/24/23 20:39, Rodrigo Vivi wrote:
>>> On Sat, Jan 21, 2023 at 04:08:53PM -0300, Gustavo Sousa wrote:
>>>> The wildchar ("*") used in the function name patterns in the
>>>> documentation was taken as a start of an "emphasis" inline markup. Wrap
>>>> the patterns with the inline literal markup and, for consistency, do the
>>>> same for the other function names mentioned.
>>>>
>>>> Fixes: 0c3064cf33fb ("drm/i915/doc: Document where to implement register workarounds")
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
>>>
>>> just in case he sees some better alternative for the escaping the '*'
>>>
>>> My fear is that this ``*_fn_name()`` could create invalid links in the doc...
>>
>> Seems OK to me. ``foo`` is literal inline. It won't try to generate
>> cross-references.
>>
>>
>> Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> Gustavo and Mauro, please accept my apologies here.
> I ended up pushing the patch from Bagas that had a escape \*
> instead of the `` wrapper.
>
> For some unexcused reason I had missed Mauro's response here
> and forgot about this. I'm really sorry.
>
> And the escape sounded more natural so I just pushed it immediately.


No worries. An escape \* works.


Regards,

Mauro



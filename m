Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563C1183AB2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 21:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BBA6E0C6;
	Thu, 12 Mar 2020 20:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18C86E0C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 20:37:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 13:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="236976698"
Received: from kneumaye-mobl2.ger.corp.intel.com (HELO [10.249.40.133])
 ([10.249.40.133])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2020 13:37:13 -0700
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-5-umesh.nerlige.ramappa@intel.com>
 <87tv2twezu.wl-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b5702235-df19-e74b-9518-98b63d200706@intel.com>
Date: Thu, 12 Mar 2020 22:37:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87tv2twezu.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/perf: add new open param to
 configure polling of OA buffer
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/03/2020 21:27, Dixit, Ashutosh wrote:
> On Tue, 03 Mar 2020 14:19:02 -0800, Umesh Nerlige Ramappa wrote:
>> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>> This new parameter let's the application choose how often the OA
>> buffer should be checked on the CPU side for data availability. Longer
>> polling period tend to reduce CPU overhead if the application does not
>> care about somewhat real time data collection.
>>
>> v2: Allow disabling polling completely with 0 value (Lionel)
>> v3: Version the new parameter (Joonas)
>> v4: Rebase (Umesh)
> Hi Lionel, I was thinking that one way to keep things simple for now (and
> fix the high cpu usage issue) would be to expose _ONLY_ this OA poll period
> parameter to user space. That is we don't expose the interrupt or the flush
> ioctl to user space at this time. This way the user will be able to
> configure the hrtimer frequency to a lower value to bring down the cpu
> usage.
>
> Also we would disallow disabling the timer (and internally also not use the
> interrupt). So everything will happen in exactly the same way as it used to
> (no other changes needed) but at a lower rate if the user so chooses.
>
> What do you think about this?
>
> Thanks!
> --
> Ashutosh


Sure, just make sure the users know about this.

The fact that they can now select timer values that will potentially 
lead to the loss of the buffer's data because it was overridden.


Thanks,

-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

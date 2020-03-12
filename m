Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDDD183D11
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 00:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C1CA6EB53;
	Thu, 12 Mar 2020 23:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479056EB53
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 23:11:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 16:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,546,1574150400"; d="scan'208";a="236779962"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 12 Mar 2020 16:10:57 -0700
Date: Thu, 12 Mar 2020 16:10:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200312231057.GA53381@orsosgc001.amr.corp.intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-5-umesh.nerlige.ramappa@intel.com>
 <87tv2twezu.wl-ashutosh.dixit@intel.com>
 <b5702235-df19-e74b-9518-98b63d200706@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5702235-df19-e74b-9518-98b63d200706@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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

On Thu, Mar 12, 2020 at 10:37:12PM +0200, Lionel Landwerlin wrote:
>On 12/03/2020 21:27, Dixit, Ashutosh wrote:
>>On Tue, 03 Mar 2020 14:19:02 -0800, Umesh Nerlige Ramappa wrote:
>>>From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>>
>>>This new parameter let's the application choose how often the OA
>>>buffer should be checked on the CPU side for data availability. Longer
>>>polling period tend to reduce CPU overhead if the application does not
>>>care about somewhat real time data collection.
>>>
>>>v2: Allow disabling polling completely with 0 value (Lionel)
>>>v3: Version the new parameter (Joonas)
>>>v4: Rebase (Umesh)
>>Hi Lionel, I was thinking that one way to keep things simple for now (and
>>fix the high cpu usage issue) would be to expose _ONLY_ this OA poll period
>>parameter to user space. That is we don't expose the interrupt or the flush
>>ioctl to user space at this time. This way the user will be able to
>>configure the hrtimer frequency to a lower value to bring down the cpu
>>usage.
>>
>>Also we would disallow disabling the timer (and internally also not use the
>>interrupt). So everything will happen in exactly the same way as it used to
>>(no other changes needed) but at a lower rate if the user so chooses.
>>
>>What do you think about this?
>>
>>Thanks!
>>--
>>Ashutosh
>
>
>Sure, just make sure the users know about this.
>
>The fact that they can now select timer values that will potentially 
>lead to the loss of the buffer's data because it was overridden.
>

posted v2:
Kernel patches - https://patchwork.freedesktop.org/series/54280/#rev6
IGT - https://patchwork.freedesktop.org/series/74655/

Thanks,
Umesh

>
>Thanks,
>
>-Lionel
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 233BB178CE6
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 09:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E03836EADF;
	Wed,  4 Mar 2020 08:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9638D6EADF
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 08:55:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 00:55:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="234048763"
Received: from jensle-mobl.ger.corp.intel.com (HELO [10.252.41.98])
 ([10.252.41.98])
 by fmsmga008.fm.intel.com with ESMTP; 04 Mar 2020 00:55:49 -0800
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-7-umesh.nerlige.ramappa@intel.com>
 <87wo80u0vn.wl-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <729a2c85-3ba6-43c9-b75d-19856c270893@intel.com>
Date: Wed, 4 Mar 2020 10:55:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87wo80u0vn.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/perf: add interrupt enabling
 parameter
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

On 04/03/2020 07:47, Dixit, Ashutosh wrote:
> On Tue, 03 Mar 2020 14:19:04 -0800, Umesh Nerlige Ramappa wrote:
>> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>> This let's the application choose to be driven by the interrupt
>> mechanism of the HW. In conjuction with long periods for checks for
>> the availability of data on the CPU, this can reduce the CPU load when
>> doing capture of OA data.
>>
>> v2: Version the new parameter (Joonas)
>> v3: Rebase (Umesh)
>>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> [snip]
>
>> +	/**
>> +	 * Specifying this property sets up the interrupt mechanism for the OA
>> +	 * buffer in i915. This option in conjuction with a long polling delay
>> +	 * for avaibility of OA data can reduce CPU load significantly if you
>> +	 * do not care about OA data being read as soon as it's available.
>> +	 *
>> +	 * This property is available in perf revision 5.
>> +	 */
>> +	DRM_I915_PERF_PROP_OA_ENABLE_INTERRUPT,
> What if we do not expose this parameter in the uapi at all and internally
> decide in i915 whether to leave the interrupt either always enabled or
> always disabled (and in that case always use the hrtimer)? This way we
> retain flexibility in i915 if hardware evolves in the future e.g. to use
> watermarks for the interrupt, without yielding control to userspace.
>
> Overall I feel we should avoid exposing unnecessary details of the internal
> implemenation to userspace, they would be neither interested in knowing
> internal details nor know how to properly use these parameters. Shouldn't
> the driver be able to make these kinds of decisions internally?
>
> At this point the only parameter which implicitly exposed to userspace is
> the hrtimer poll period, so perhaps all we need to do is to expose that in
> the uapi? Thoughts?


I guess I agree with you. I can't remember why I exposed it to userspace.

There might be one test that checks the stream reports LOST_BUFFER with 
no poll() wakeup, but I guess we could update it.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

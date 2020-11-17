Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE6C2B5F28
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 13:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D876E1D6;
	Tue, 17 Nov 2020 12:33:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01A986E1D6;
 Tue, 17 Nov 2020 12:33:17 +0000 (UTC)
IronPort-SDR: iM4mDOq8Gft/+RqZTvNlu5agpWZoYi2fjmWhNIIcDep7tu+cLVqEmMTCuiZV3pJLh/JJmQn6Nq
 i/hk0F8WW1Nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="170130525"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="170130525"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 04:33:15 -0800
IronPort-SDR: aikvVc+CH//wqlhWSm01P/2q5KvY04pGaD4a0F6BJ6bryTyRL8gdQsVMSlCLUVEveWYjiyvXQg
 t6DCg5OyK9Dw==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="544034288"
Received: from jgagatko-mobl1.ger.corp.intel.com (HELO [10.252.50.93])
 ([10.252.50.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 04:33:14 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20201117114050.302583-1-tvrtko.ursulin@linux.intel.com>
 <160561548452.22621.12237070971991385724@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8bdb8c26-cd11-2826-7ecf-89a30bb7d7a8@linux.intel.com>
Date: Tue, 17 Nov 2020 12:33:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160561548452.22621.12237070971991385724@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_wsim: Implement device selection
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/11/2020 12:18, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-17 11:40:50)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> -L and -D <device> on the command line.
>>
>> With no device specified tool tries to find i915 discrete or integrated in
>> that order.
> 
> Ok, looks straightforward enough. (I still like having an idiot's guide
> with examples of -L output and what to pass to -D).
> 
>> +       fd = igt_open_card(&card);
>> +       igt_require(fd);
> 
> Does igt_require() still generate weirdness when used outside of igt
> tests?

It appears to do nothing. But more importantly I don't know how I ended 
up with it here. Probably some copy & paste again.

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Can I convert to igt_assert and keep the r-b?

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

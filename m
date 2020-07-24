Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485F722D1A0
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jul 2020 00:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734436EA2A;
	Fri, 24 Jul 2020 22:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDF66EA2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 22:05:35 +0000 (UTC)
IronPort-SDR: zUgnPGETBKQ3MADY5Bz1+kCwC2lAkv3aOYdW3iSv8tEEBLRw9DebQm+BnZrG5x7z8crScAuY43
 fdf1VdhSgH/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149972269"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149972269"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 15:05:32 -0700
IronPort-SDR: JwLgszkmXaN7AJRo7agi8noq+I3lVKMnOHJHB3Q4fuslu9golQeBE1C/aH4bN+icy7fQduwjnh
 q+V12Incuwiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="319431849"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga008.jf.intel.com with ESMTP; 24 Jul 2020 15:05:33 -0700
Date: Fri, 24 Jul 2020 15:05:33 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20200724220533.GE28353@orsosgc001.amr.corp.intel.com>
References: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
 <20200724001901.35662-5-umesh.nerlige.ramappa@intel.com>
 <159559455387.21069.937949659631730547@build.alporthouse.com>
 <20200724162956.GB28353@orsosgc001.amr.corp.intel.com>
 <159560845126.2889.3198879925052513730@build.alporthouse.com>
 <20200724184737.GC28353@orsosgc001.amr.corp.intel.com>
 <159561690616.2889.9530939268194445382@build.alporthouse.com>
 <20200724193511.GD28353@orsosgc001.amr.corp.intel.com>
 <159561997670.2889.17841435571962923785@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159561997670.2889.17841435571962923785@build.alporthouse.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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

On Fri, Jul 24, 2020 at 08:46:16PM +0100, Chris Wilson wrote:
>Quoting Umesh Nerlige Ramappa (2020-07-24 20:35:11)
>> I agree, but strangely, with mmap sequence below, I don't see
>> i915_perf_release() called at all.  So destroy() is not called.
>>
>> perf_fd = i915_perf_open_ioctl()
>> mmap(..., perf_fd...)
>> close(perf_fd)
>> delay for a few seconds.
>>
>> If I call munmap() after the close(), I see i915_perf_release() ->
>> destroy() -> unmap_mapping_range()
>
>Hmm, vma->vm_file is pointing to the perf-fd. Ah, that's a big
>difference to what I'm used to. So all the references are handled for
>you by the correct vma->vm_file, and you don't need the
>vm_open/vm_close, the kref or the closed. Sorry.

no worries at all. This is all new for me, so I appreciate all your 
prompt guidance that helped me look into this implementation in detail.

Thanks,
Umesh

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

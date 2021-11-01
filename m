Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6926441A36
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 11:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CF289971;
	Mon,  1 Nov 2021 10:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4994D89971
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 10:49:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="294448918"
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="294448918"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:49:34 -0700
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="499987594"
Received: from lellis-mobl.ger.corp.intel.com (HELO [10.213.243.87])
 ([10.213.243.87])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:49:33 -0700
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20211025042623.3876-1-cooper.chiou@intel.com>
 <42d4ab18-97b7-bb80-cef9-0d779007b9e2@linux.intel.com>
 <163576323499.3344.4388287606987057365@jlahtine-mobl.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a0e17b30-31a9-1bc8-7cda-6888b76bd4c0@linux.intel.com>
Date: Mon, 1 Nov 2021 10:49:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <163576323499.3344.4388287606987057365@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v8] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 William Tseng <william.tseng@intel.com>, Pawel Wilma <pawel.wilma@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/11/2021 10:40, Joonas Lahtinen wrote:
> Quoting Tvrtko Ursulin (2021-11-01 12:15:19)
>>
>> On 25/10/2021 05:26, Cooper Chiou wrote:
>>> This implements WaProgramMgsrForCorrectSliceSpecificMmioReads which
>>> was omitted by mistake from Gen9 documentation, while it is actually
>>> applicable to fused off parts.
>>>
>>> Workaround consists of making sure MCR packet control register is
>>> programmed to point to enabled slice/subslice pair before doing any
>>> MMIO reads from the affected registers.
>>>
>>> Failure do to this can result in complete system hangs when running
>>> certain workloads. Two known cases which can cause system hangs are:
>>>
>>> 1. "test_basic progvar_prog_scope_uninit" test which is part of
>>>       Khronos OpenCL conformance suite
>>>       (https://github.com/KhronosGroup/OpenCL-CTS) with the Intel
>>>       OpenCL driver (https://github.com/intel/compute-runtime).
>>>
>>> 2. VP8 media hardware encoding using the full-feature build of the
>>>       Intel media-driver (https://github.com/intel/media-driver) and
>>>       ffmpeg.
>>>
>>> For the former case patch was verified to fix the hard system hang
>>> when executing the OCL test on Intel Pentium CPU 6405U which contains
>>> fused off GT1 graphics.
>>>
>>> Reference: HSD#1508045018,1405586840, BSID#0575
>>>
>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Cc: William Tseng <william.tseng@intel.com>
>>> Cc: Shawn C Lee <shawn.c.lee@intel.com>
>>> Cc: Pawel Wilma <pawel.wilma@intel.com>
>>> Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Thanks for following through with all the testing and validation for the
> patch!
> 
> Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

I've pushed it, thanks!

Regards,

Tvrtko

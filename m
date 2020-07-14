Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BF021F59C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 17:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964216E900;
	Tue, 14 Jul 2020 15:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407866E900
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 15:01:38 +0000 (UTC)
IronPort-SDR: 66IjUz+qz7CTqsWtDcMp0MthHV7J02/OPNGMLWYmyxnn0IesS5rSxPTAh+r4MvRE9n1qsmr+Q0
 vtLleur1JAUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="148920667"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="148920667"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 08:01:37 -0700
IronPort-SDR: x8zsoQBBWEN5yFEFKzTF2BX8ETkQNL7c8cgeFEF/djO0bjBihg7iB+X89UtxZVq2C10qyUdZ1c
 HxVZC00xdOWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="307899394"
Received: from ejacobso-mobl.ger.corp.intel.com (HELO [10.251.163.59])
 ([10.251.163.59])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jul 2020 08:01:33 -0700
To: Dave Airlie <airlied@gmail.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-54-matthew.auld@intel.com>
 <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <84ff0146-0a35-c66e-2c33-2ce22aae4c6c@intel.com>
Date: Tue, 14 Jul 2020 16:01:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9twBBVQy_0O6ES5UjtBpn0hfjaWoo24miziBj+VMrbciWg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 53/60] drm/i915: Create stolen memory region
 from local memory
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris P Wilson <chris.p.wilson@intel.com>, Neel Desai <neel.desai@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/07/2020 05:48, Dave Airlie wrote:
> On Fri, 10 Jul 2020 at 22:01, Matthew Auld <matthew.auld@intel.com> wrote:
>>
>> From: CQ Tang <cq.tang@intel.com>
>>
>> Add "REGION_STOLEN" device info to dg1, create stolen memory
>> region from upper portion of local device memory, starting
>> from DSMBASE.
>>
>> The memory region is marked with "is_devmem=true".
> 
> So is stolen fake on LMEM devices? The concept of stolen doesn't seem
> to make much sense with VRAM, so please enlighten me.

CQ, do we actually need an explicit stolen LMEM region? The idea of 
having a DSM like stolen region for LMEM does sound strange(outside of 
the usual reserved portions which are for HW use etc), since the driver 
has complete control over LMEM. Is it just a convenience thing to keep 
things working as-is for fbc, initial fb, etc. or is there more to it? 
There is buddy_alloc_range() for LMEM which we could potentially use to 
wrap an object around for things like the initial fb or similar.

> 
> Dave.
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

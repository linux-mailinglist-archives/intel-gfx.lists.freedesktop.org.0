Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A4B579403
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 09:20:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6755010E79A;
	Tue, 19 Jul 2022 07:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F9710E79A;
 Tue, 19 Jul 2022 07:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658215199; x=1689751199;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=efBx+cOjCDPM6QiEgXxI19AztXeKxc+R7d/gZgYJqAk=;
 b=Vlj/tnv1hnUEGAdbKJg8Nkj4aoW7KN+0JdMKboRIVymvI9p+UHnR8C/J
 5syW5HxekSNy/Gn9SDLD2wXGz7hpoE2kbxNV7iXnkwES7qEpyWTGhNwrf
 RABVcmuAhz5gcVGhNOM7nrMYn2C6nxWgnYLLrFNTp89PENxNneWS/t89L
 KnA/3Wtoxmch/+39LBjMSD5SEbdssO7E+GSbbtlWiCopRWkQVV0xV5y+q
 qwPtvaE6QpP8qAwKRwPCCbvhJRnUkf2keI9knkrttn4DJYe9DHI8Zg4vC
 aHOQ7k8gI94TBp9o/5/FOxV0rtlu0PcIA73UK0FuiVi8IwKPXW5Guk83R w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="273249702"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="273249702"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 00:19:58 -0700
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="601492485"
Received: from ssherida-mobl.ger.corp.intel.com (HELO [10.213.201.170])
 ([10.213.201.170])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 00:19:55 -0700
Message-ID: <4933d674-0b3e-0b79-7749-a796f7b1cb6f@linux.intel.com>
Date: Tue, 19 Jul 2022 08:19:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
References: <cover.1657800199.git.mchehab@kernel.org>
 <f20bd21c94610dae59824b8040e5a9400de6f963.1657800199.git.mchehab@kernel.org>
 <d51882e0-6864-7a49-ae16-f7213dc716c4@linux.intel.com>
 <20220718180630.7bef2fd9@maurocar-mobl2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220718180630.7bef2fd9@maurocar-mobl2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 05/21] drm/i915/gt: Skip TLB
 invalidations once wedged
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Dave Airlie <airlied@redhat.com>,
 stable@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/07/2022 17:06, Mauro Carvalho Chehab wrote:
> On Mon, 18 Jul 2022 14:45:22 +0100
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> 
>> On 14/07/2022 13:06, Mauro Carvalho Chehab wrote:
>>> From: Chris Wilson <chris.p.wilson@intel.com>
>>>
>>> Skip all further TLB invalidations once the device is wedged and
>>> had been reset, as, on such cases, it can no longer process instructions
>>> on the GPU and the user no longer has access to the TLB's in each engine.
>>>
>>> That helps to reduce the performance regression introduced by TLB
>>> invalidate logic.
>>>
>>> Cc: stable@vger.kernel.org
>>> Fixes: 7938d61591d3 ("drm/i915: Flush TLBs before releasing backing store")
>>
>> Is the claim of a performance regression this solved based on a wedged
>> GPU which does not work any more to the extend where mmio tlb
>> invalidation requests keep timing out? If so please clarify in the
>> commit text and then it looks good to me. Even if it is IMO a very
>> borderline situation to declare something a fix.
> 
> Indeed this helps on a borderline situation: if GT is wedged, TLB
> invalidation will timeout, so it makes sense to keep the patch with a
> comment like:
> 
>      drm/i915/gt: Skip TLB invalidations once wedged
>      
>      Skip all further TLB invalidations once the device is wedged and
>      had been reset, as, on such cases, it can no longer process instructions
>      on the GPU and the user no longer has access to the TLB's in each engine.
>      
>      So, an attempt to do a TLB cache invalidation will produce a timeout.
>      
>      That helps to reduce the performance regression introduced by TLB
>      invalidate logic.

Yeah that is better but whether bothering stable with it is the 
question. Wedged GPU means constant endless -EIO to userspace so very 
hard to imagine that after a TLB invalidation timeout or two there would 
be further ones. But okay, it's tiny so fine I guess.

Regards,

Tvrtko

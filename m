Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E877D216870
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 10:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295976E1EC;
	Tue,  7 Jul 2020 08:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE70F6E516
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 08:36:20 +0000 (UTC)
IronPort-SDR: 8WiQWruth4ICddSOh+/UuoTgdqaF178wpd4XuvlUCKAL1EXCwe40w9+JMXNy6kxkQKKAr3rqr7
 x0dW9KV9ICYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="135024359"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="135024359"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 01:36:20 -0700
IronPort-SDR: Zoj2fGjdF62Cqg9bDWR7rb1Z3B2MIXiaxxR1d6s4zjeoP05LpwASTYt483QvYUDTPbfURqI7LR
 tbIgMZNbQOfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="427404716"
Received: from gyosipov-mobl1.ger.corp.intel.com (HELO [10.251.181.28])
 ([10.251.181.28])
 by orsmga004.jf.intel.com with ESMTP; 07 Jul 2020 01:36:18 -0700
To: Dave Airlie <airlied@gmail.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
References: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
 <CAKi4VA+3oEPXnH-EKgKkxohf=7+jrDPy-fNfX6QvGBj7QsNYLw@mail.gmail.com>
 <5d75a3d4-4bb2-3307-8d85-2addc64633f4@intel.com>
 <CAPM=9tzBrvMPtwaEkAyMYaOv1W71De3-ZM82GpFfeHV_+XKq8g@mail.gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <d2f3ea69-96a3-e7c0-5762-e14b034fde1e@intel.com>
Date: Tue, 7 Jul 2020 09:36:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9tzBrvMPtwaEkAyMYaOv1W71De3-ZM82GpFfeHV_+XKq8g@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] DG1 VRAM question
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 01/07/2020 00:27, Dave Airlie wrote:
> On Sat, 27 Jun 2020 at 03:17, Daniele Ceraolo Spurio
> <daniele.ceraolospurio@intel.com> wrote:
>>
>>
>>
>> On 6/26/20 12:14 AM, Lucas De Marchi wrote:
>>> Cc Matt and Daniele
>>>
>>> On Thu, Jun 25, 2020 at 9:38 PM Dave Airlie <airlied@gmail.com> wrote:
>>>>
>>>> I can't figure this out easily so I'd thought I'd just ask, but does
>>>> DG1 have VRAM > PCIE aperture, I'm not sure I've see any mention of
>>>
>>> We'd need to go via lmem since there's no mappable aperture. There are
>>> a few patches in tree for that
>>> (see e.g. 54b512cd7a6d ("drm/i915: do not map aperture if it is not
>>> available.")) but more missing.
>>>
>>
>> To clarify, although the legacy aperture mapping that allowed the CPU to
>> access memory via the GGTT for swizzling is gone, VRAM/LMEM is still
>> cpu-mappable via pci bar.
>> Will leave the questions about possible trashing to Matt as he's more
>> familiar than me with how this works.
> 
> Matt?
> 
> Is DG1 assuming we can get 64-bit BARs always and the CPU will have
> access to the complete VRAM? or is there any ideas about what happens
> in those situations where 64-bit BARs aren't available and there is
> memory pressure on the PCI BAR space.
> 
> With other discrete GPUs we've got lots of things like visible VRAM
> limitations, writing page tables with GPU hw instead of from the CPU,
> having mapping bring things into the visible area, so you can stream
> something into VRAM, but then it'll migrated to non-visible area if
> it's unmapped and there is memory pressure.

Yes, we just assume that LMEM size == LMEMBAR size, where the whole 
thing is 1:1 mapped and CPU visible. We don't currently have the concept 
of CPU visible/non-visible LMEM.

> 
> Dave.
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

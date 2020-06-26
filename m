Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8914A20B6B4
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 19:17:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AFA6ECEA;
	Fri, 26 Jun 2020 17:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACFA76ECE9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 17:17:33 +0000 (UTC)
IronPort-SDR: CVaZuaOgEvzrEndsEEE7MBjbejPFZFy/RtqzirmBexMqchrGoFpLZ7G/eNG5p2sS+2ZmrnkHFo
 u7YUeG7zz/RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="210485927"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="210485927"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 10:17:32 -0700
IronPort-SDR: DSusaVCLkwaMw2TdjfxO22qjHMGMoC/KKItXIsiyzvsczS214KO+7lD5ytYwne5brzaRQr82aH
 29/QUid9Z+Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="424138726"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2020 10:17:31 -0700
To: Lucas De Marchi <lucas.de.marchi@gmail.com>,
 Dave Airlie <airlied@gmail.com>
References: <CAPM=9tyx209haPSokJhA_qOi1PRhoVNPX3MTyNHsq68b=Y5W2A@mail.gmail.com>
 <CAKi4VA+3oEPXnH-EKgKkxohf=7+jrDPy-fNfX6QvGBj7QsNYLw@mail.gmail.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <5d75a3d4-4bb2-3307-8d85-2addc64633f4@intel.com>
Date: Fri, 26 Jun 2020 10:17:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAKi4VA+3oEPXnH-EKgKkxohf=7+jrDPy-fNfX6QvGBj7QsNYLw@mail.gmail.com>
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/26/20 12:14 AM, Lucas De Marchi wrote:
> Cc Matt and Daniele
> 
> On Thu, Jun 25, 2020 at 9:38 PM Dave Airlie <airlied@gmail.com> wrote:
>>
>> I can't figure this out easily so I'd thought I'd just ask, but does
>> DG1 have VRAM > PCIE aperture, I'm not sure I've see any mention of
> 
> We'd need to go via lmem since there's no mappable aperture. There are
> a few patches in tree for that
> (see e.g. 54b512cd7a6d ("drm/i915: do not map aperture if it is not
> available.")) but more missing.
> 

To clarify, although the legacy aperture mapping that allowed the CPU to 
access memory via the GGTT for swizzling is gone, VRAM/LMEM is still 
cpu-mappable via pci bar.
Will leave the questions about possible trashing to Matt as he's more 
familiar than me with how this works.

Daniele

> Lucas De Marchi
> 
>> mappable VRAM vs non-mappable in patches, is it planned to just thrash
>> the aperture if userspace ever ties to map too much of it.
>>
>> Are pagetables stored in the visible RAM space?
>>
>> Dave.
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

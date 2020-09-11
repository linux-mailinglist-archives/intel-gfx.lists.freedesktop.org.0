Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC0D265B7D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 10:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD1D6E048;
	Fri, 11 Sep 2020 08:24:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB17F6E048
 for <Intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 08:24:56 +0000 (UTC)
IronPort-SDR: axk1hn25fr3ujmluqTqIT8WE/Zkk7XrCu/XBp7vRCDNblHGeh9gPRJM92a02tX6x3zyh4OT9Tc
 5I8nOM3AZvzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="158752194"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="158752194"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 01:24:56 -0700
IronPort-SDR: SH0vY0lrXPsNYfIMrUgJ2a3eQngqY3JCBab47eTmyi4DBhEcldJZz7t+QDNhwB2sFXP/BKKjHK
 7MXHDfx1pFmg==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="378492372"
Received: from hott-mobl2.ger.corp.intel.com (HELO [10.249.41.213])
 ([10.249.41.213])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 01:24:50 -0700
To: Tom Murphy <murphyt7@tcd.ie>
References: <20200910115900.407686-1-tvrtko.ursulin@linux.intel.com>
 <20200910115900.407686-3-tvrtko.ursulin@linux.intel.com>
 <CALQxJuuF0i4NWvVfh1G0TZWS0oYiwSRLycMte6LZ5n6Oif3aFQ@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <50a04eb6-a820-0426-0a84-f0a37c0ae961@linux.intel.com>
Date: Fri, 11 Sep 2020 09:24:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CALQxJuuF0i4NWvVfh1G0TZWS0oYiwSRLycMte6LZ5n6Oif3aFQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix DMA mapped scatterlist
 lookup
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
Cc: Intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/09/2020 14:31, Tom Murphy wrote:
> This patch series fixes the issue I was having. I tested it with my
> patch set ("[PATCH V2 0/5] Convert the intel iommu driver to the
> dma-iommu api") applied, excluding the last patch in that series which
> disables the coalescing.
> 
> So once your patch set is merged we should be good to convert the
> intel iommu driver to the dma-iommu api

There appears to be an issue on Ivybridge, which is an older platforms, which manifests like this:

<3> [209.526605] DMAR: intel_iommu_map: iommu width (39) is not sufficient for the mapped address (ffff008000)

Relevant iommu boot related messages are:

<6>[    0.184234] DMAR: Host address width 36
<6>[    0.184245] DMAR: DRHD base: 0x000000fed90000 flags: 0x0
<6>[    0.184288] DMAR: dmar0: reg_base_addr fed90000 ver 1:0 cap c0000020e60262 ecap f0101a
<6>[    0.184308] DMAR: DRHD base: 0x000000fed91000 flags: 0x1
<6>[    0.184337] DMAR: dmar1: reg_base_addr fed91000 ver 1:0 cap c9008020660262 ecap f0105a
<6>[    0.184357] DMAR: RMRR base: 0x000000d8d28000 end: 0x000000d8d46fff
<6>[    0.184377] DMAR: RMRR base: 0x000000db000000 end: 0x000000df1fffff
<6>[    0.184398] DMAR-IR: IOAPIC id 2 under DRHD base  0xfed91000 IOMMU 1
<6>[    0.184414] DMAR-IR: HPET id 0 under DRHD base 0xfed91000
<6>[    0.184428] DMAR-IR: Queued invalidation will be enabled to support x2apic and Intr-remapping.
<6>[    0.185173] DMAR-IR: Enabled IRQ remapping in x2apic mode

<6>[    0.878934] DMAR: No ATSR found
<6>[    0.878966] DMAR: dmar0: Using Queued invalidation
<6>[    0.879007] DMAR: dmar1: Using Queued invalidation

<6>[    0.915032] DMAR: Intel(R) Virtualization Technology for Directed I/O
<6>[    0.915060] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
<6>[    0.915084] software IO TLB: mapped [mem 0xc80d4000-0xcc0d4000] (64MB)

Full boot log at https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_7054/fi-ivb-3770/boot0.txt, failures at https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_7054/fi-ivb-3770/igt@i915_selftest@live@blt.html.

I suspect this has to be about the dma-iommu conversion itself and not anything i915 is doing incorrectly? Something in the new mapping code not respecting the iommu width limitation? (To be clear these results are with the "[PATCH V2 0/5] Convert the intel iommu driver to the dma-iommu api" series applied, minus the not coalescing patch.)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

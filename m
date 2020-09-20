Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8795B2712B1
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Sep 2020 08:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73176E188;
	Sun, 20 Sep 2020 06:36:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E69C6E188
 for <Intel-gfx@lists.freedesktop.org>; Sun, 20 Sep 2020 06:36:53 +0000 (UTC)
IronPort-SDR: 4r/lgDXGfoZf5BxP9obsImJXDB/aD/luq9fhWQ5cMEme926fG2FxIUwtVy7upcTqzeEjZXT9UB
 5JDivt36HumA==
X-IronPort-AV: E=McAfee;i="6000,8403,9749"; a="178286129"
X-IronPort-AV: E=Sophos;i="5.77,281,1596524400"; d="scan'208";a="178286129"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2020 23:36:53 -0700
IronPort-SDR: jabbN3qQsO/QbcFPJwnrAIPouqbK8zIgTL8nP5gVkx2hTZ+WRQO216CTjg+hH0Rcn4dLkQQA4T
 ixr2XHqNPtSQ==
X-IronPort-AV: E=Sophos;i="5.77,281,1596524400"; d="scan'208";a="308504530"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.254.213.187])
 ([10.254.213.187])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2020 23:36:50 -0700
To: Logan Gunthorpe <logang@deltatee.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
 <776771a2-247a-d1be-d882-bee02d919ae0@deltatee.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <fe94760f-3c10-4222-ec87-291c01325fef@linux.intel.com>
Date: Sun, 20 Sep 2020 14:36:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <776771a2-247a-d1be-d882-bee02d919ae0@deltatee.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: linux-kernel@vger.kernel.org, Intel-gfx@lists.freedesktop.org,
 Ashok Raj <ashok.raj@intel.com>, iommu@lists.linux-foundation.org,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Logan,

On 2020/9/19 4:47, Logan Gunthorpe wrote:
> Hi Lu,
> 
> On 2020-09-11 9:21 p.m., Lu Baolu wrote:
>> Tom Murphy has almost done all the work. His latest patch series was
>> posted here.
>>
>> https://lore.kernel.org/linux-iommu/20200903201839.7327-1-murphyt7@tcd.ie/
>>
>> Thanks a lot!
>>
>> This series is a follow-up with below changes:
>>
>> 1. Add a quirk for the i915 driver issue described in Tom's cover
>> letter.
>> 2. Fix several bugs in patch "iommu: Allow the dma-iommu api to use
>> bounce buffers" to make the bounce buffer work for untrusted devices.
>> 3. Several cleanups in iommu/vt-d driver after the conversion.
>>
> 
> I'm trying to test this on an old Sandy Bridge, but found that I get
> spammed with warnings on boot. I've put a sample of a few of them below.
> They all seem to be related to ioat.
> 
> I had the same issue with Tom's v2 but never saw this on his v1.

Have you verified whether this could be reproduced with the lasted
upstream kernel (without this patch series)?

Best regards,
baolu
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

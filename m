Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEEE44B20F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 18:37:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97356E5A3;
	Tue,  9 Nov 2021 17:36:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C2B6E439;
 Tue,  9 Nov 2021 17:36:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="293339849"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="293339849"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 09:35:56 -0800
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="669492423"
Received: from fmpluck-mobl.ger.corp.intel.com (HELO [10.213.200.63])
 ([10.213.200.63])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 09:35:54 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20211109121759.170915-1-tvrtko.ursulin@linux.intel.com>
 <20211109171926.vrb5juvp64mv65b4@ldmartin-desk2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bcb8736d-a46a-a756-e6ca-7872a21b075c@linux.intel.com>
Date: Tue, 9 Nov 2021 17:35:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211109171926.vrb5juvp64mv65b4@ldmartin-desk2>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use per device iommu check
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/11/2021 17:19, Lucas De Marchi wrote:
> On Tue, Nov 09, 2021 at 12:17:59PM +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> On igfx + dgfx setups, it appears that intel_iommu=igfx_off option only
>> disables the igfx iommu. Stop relying on global intel_iommu_gfx_mapped
>> and probe presence of iommu domain per device to accurately reflect its
>> status.
> 
> nice, I was just starting to look into thus but for another reason: we
> are adding support for other archs, like aarch64, and the global from here
> was a problem

Yes I realized the other iommu angle as well. To do this properly we 
need to sort the intel_vtd_active call sites into at least two buckets - 
which are truly about VT-d and which are just IOMMU.

For instance the THP decision in i915_gemfs.co would be "are we behind 
any iommu". Some other call sites are possibly only about the bugs in 
the igfx iommu. Not sure if there is a third bucket for any potential 
differences between igfx iommu and other Intel iommu in case of dgfx.

I'd like to hear from Baolu as well to confirm if intel_iommu driver is 
handling igfx + dgfx correctly in respect to the two global variables I 
mention in the commit message.

> should we change drivers/gpu/drm/i915/Kconfig.debug to stop selecting
> CONFIG_INTEL_IOMMU and CONFIG_INTEL_IOMMU_DEFAULT_ON?

Don't know. For debug it is useful since it can catch more issues but 
whether or not kconfig can be improved to select the right one for the 
platform? I guess select X if X86, select Y if Z?

Regards,

Tvrtko

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FEB44F419
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Nov 2021 17:20:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA1472F32;
	Sat, 13 Nov 2021 16:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF9772F32
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Nov 2021 16:19:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10166"; a="230732297"
X-IronPort-AV: E=Sophos;i="5.87,232,1631602800"; d="scan'208";a="230732297"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2021 08:19:59 -0800
X-IronPort-AV: E=Sophos;i="5.87,232,1631602800"; d="scan'208";a="471450018"
Received: from avgutkin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.13.224])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2021 08:19:58 -0800
Date: Sat, 13 Nov 2021 08:20:14 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20211113162014.bnypj7vgnm3hddpd@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211111004549.144706-1-michael.cheng@intel.com>
 <20211111004549.144706-2-michael.cheng@intel.com>
 <20211113012807.GD137318@mdroper-desk1.amr.corp.intel.com>
 <20211113013146.GE137318@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211113013146.GE137318@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915: Introduce new macros for
 i915 PTE
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
Cc: Michael Cheng <michael.cheng@intel.com>, wayne.boyer@intel.com,
 jani.nikula@intel.com, intel-gfx@lists.freedesktop.org, siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 12, 2021 at 05:31:46PM -0800, Matt Roper wrote:
>On Fri, Nov 12, 2021 at 05:28:09PM -0800, Matt Roper wrote:
>> On Wed, Nov 10, 2021 at 04:45:47PM -0800, Michael Cheng wrote:
>> > Certain functions within i915 uses macros that are defined for
>> > specific architectures by the mmu, such as _PAGE_RW and _PAGE_PRESENT
>> > (Some architectures don't even have these macros defined, like ARM64).
>> >
>> > Instead of re-using bits defined for the CPU, we should use bits
>> > defined for i915. This patch introduces two new macros,
>> > I915_PAGE_PRESENT and I915_PAGE_RW, to check for bits 0 and 1 and, to
>> > replace all occurrences of _PAGE_RW and _PAGE_PRESENT within i915.
>>
>> On older platforms we already had our own definition of GEN6_PTE_VALID
>> (the spec uses "present" and "valid" interchangeably) which we were
>> using to encode our ggtt ptes up through HSW; it might be better to go
>> back to using that rather than adding a new define.
>>
>> It looks like BYT is when the writable bit showed up, and we did add a
>> new define there (BYT_PTE_WRITEABLE), but on the next platform (BDW) we
>> switched over to using the CPU page table flags instead and never used
>> it again.  So we could probably replace _PAGE_RW with BYT_PTE_WRITEABLE
>> as well.
>
>Okay, I should have looked at the rest of the series before reviewing
>the first patch; it looks like your next two patches replace
>GEN6_PTE_VALID and BYT_PTE_WRITEABLE with the new definitions here.  I
>still think it might be preferable to reuse the existing macros (which
>also help clarify the platforms that those bits first showed up in the
>PTE on) rather than replacing them with new macros, but I don't feel
>super strongly about it if other reviewers feel differently.

I think it deserves a I915_ particularly because of the RW definition.
To me it's always suspicious when code spanning for several platforms
use a definition for BYT or CHV, because those are usually the one that
deviates from the norm, not the ones that dictate new behavior going
forward.

Lucas De Marchi

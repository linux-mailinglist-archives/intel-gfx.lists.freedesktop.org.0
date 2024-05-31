Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79DA8D612D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B480410E4CA;
	Fri, 31 May 2024 12:02:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SU7dfbxu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FEC10E4CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717156929; x=1748692929;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UBBIDxa3EaghXIj9sgXgn2ZPep5c2Dy61D4Dda2eGyk=;
 b=SU7dfbxuHt7kjtf4vvv+0LFv7ZWUiL9bugYIC8uFvxklgVhwHeWnv3BJ
 PcMzQZ9AHH3I2R6sghTC1McbKpVN53OSj2P0pov4cdMgBNcFGAjVqVMel
 IM1Go+3ks2uO39GtaLVGnPE30U1PyQ3Nrp/dTehV1x3BZxmM1XkBIzwCR
 HV5NEPSQTpgcnFuPGWRiUJqyKqPlB8S96QlESd7OhWcFytm57g1CNNz94
 0NjukhYkWxDAgXkzp2MzlYYkSmEgBBQ6SY8rnX9yxTWwfnF5rUn7Cq8k1
 zuC5L8NtgcsAb4w0g8KcnBwArQ+AFBVGEpgyYYa3WHUzF09yNTPtZJurZ w==;
X-CSE-ConnectionGUID: KZsVkZNsTraKQTsTyI8d2Q==
X-CSE-MsgGUID: zssc9npuTfiACmz00GVElQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="17494555"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="17494555"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:01:59 -0700
X-CSE-ConnectionGUID: kmxSzk1OQ8q9JqOCJGYX6Q==
X-CSE-MsgGUID: z0/m9MzuS32kse5dmQ2cYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36224932"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:01:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v10 1/8] drm/i915: Separate VRR related register
 definitions
In-Reply-To: <IA1PR11MB6348AB30F4F05CD617A5981BB2FC2@IA1PR11MB6348.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240530060408.67027-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240530060408.67027-2-mitulkumar.ajitkumar.golani@intel.com>
 <87o78nh0la.fsf@intel.com>
 <IA1PR11MB6348AB30F4F05CD617A5981BB2FC2@IA1PR11MB6348.namprd11.prod.outlook.com>
Date: Fri, 31 May 2024 15:01:52 +0300
Message-ID: <87r0difavj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 31 May 2024, "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Hi Jani,
>
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Thursday, May 30, 2024 7:19 PM
>> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
>> intel-gfx@lists.freedesktop.org
>> Cc: dri-devel@lists.freedesktop.org; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>
>> Subject: Re: [PATCH v10 1/8] drm/i915: Separate VRR related register
>> definitions
>>
>> On Thu, 30 May 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> wrote:
>> > Move VRR related register definitions to a separate file called
>> > intel_vrr_regs.h.
>>
>> But this is not just movement... there's a bunch of other (mostly
>> unwanted?) changes there too.
>>
>> 'git show --color-moved' is a powerful tool for reviewing code movement. If it's
>> not just movement, you have to fallback to manual review of the whole thing.
>
> I have moved the VRR-related registers from i915_reg.h to
> intel_vrr_regs.h and reordered them based on their register
> offsets. However, if preferred, I can move only the VRR-related
> registers for now and handle the reordering in a separate patch series
> later. Please let me know if this approach is acceptable.

Yes. You can check with 'git show --color-moved'. Also avoid the
indentation changes.

BR,
Jani.


>
> Regards,
> Mitul
>>
>> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_vrr.c      |   1 +
>> >  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 117 ++++++++++++++++++
>> >  drivers/gpu/drm/i915/i915_reg.h               | 100 ---------------
>> >  3 files changed, 118 insertions(+), 100 deletions(-)  create mode
>> > 100644 drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> >
>

-- 
Jani Nikula, Intel

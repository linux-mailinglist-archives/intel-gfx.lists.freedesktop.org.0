Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061F364C5B5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4F189496;
	Wed, 14 Dec 2022 09:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B4D89067
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671009543; x=1702545543;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Yh9Y9bqX9+lOsH2pl4JaokXLDEHbMNM4DYj2DzrL1jg=;
 b=GJu1AvUCwJpEC/CVWee0Y2syjb46p4siT0SMzw05mGaqKmrQgHnYRBA0
 fiWQ+/U2i1UAYHH4VJYDWgcdPrAMBU+OUKimttj3obAIk6tS3T6GYyVqZ
 cNyQNuG1ig5jB0LZ94o954NpjIQ9stY3Hn+031bggMr3oAsX4hrJ5nt9U
 7qwDXPAYiBqGu1dxU6zxKu2uW2XRwpRosDWLVPMygvK6X6EVqUU9AYxtM
 YsfXt4GKo+/5lzevl3+pbn1YUkJ7GWqOuuZKm8NLoKJhpOjTdeA3aAC+4
 3/MXYmhDVHWxzu0KMlkpUGSqwdYmJCXzhFyyWKhDSvBlJtRwetvHsFzHQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="380560160"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="380560160"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:19:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="791245699"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="791245699"
Received: from adineen-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.60.111])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:19:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <BL0PR11MB3170BFC8724349A4AD8776CCBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB3170BFC8724349A4AD8776CCBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
Date: Wed, 14 Dec 2022 11:18:58 +0200
Message-ID: <87h6xywdfh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code
 to a separate file
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

On Wed, 14 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Monday, December 12, 2022 7:59 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code to a
>> separate file
>>
>> Add new intel_vblank.[ch] and dump a bunch of the vblank/scanline code
>> there.
>>
>> Jani Nikula (7):
>>   drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
> Can the function naming convention such as i915_get_vblank_counter be
> changed to intel_get_vblank_counter in the same series?

In this case i915_ is a platform prefix, contrast with
g4x_get_vblank_counter().

There's more naming to be sorted out, and I wanted to see what the
response was to this split with the scanline functions being included
here before embarking on doing a bunch of tedious renames.

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>
>>   drm/i915/display: move more scanline functions to intel_vblank.[ch]
>>   drm/i915/display: use common function for checking scanline is moving
>>   drm/i915/hdmi: abstract scanline range wait into intel_vblank.[ch]
>>   drm/i915/vblank: use intel_de_read()
>>   drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank
>>     counter
>>   drm/i915/reg: split out vblank/scanline regs
>>
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>>  drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
>>  drivers/gpu/drm/i915/display/intel_de.h       |   7 +
>>  drivers/gpu/drm/i915/display/intel_display.c  |  54 +--
>>  .../drm/i915/display/intel_display_trace.h    |   1 +
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   9 +-
>>  drivers/gpu/drm/i915/display/intel_vblank.c   | 456 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_vblank.h   |  24 +
>>  .../gpu/drm/i915/display/intel_vblank_regs.h  |  42 ++
>>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
>>  drivers/gpu/drm/i915/gvt/display.c            |   1 +
>>  drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
>>  drivers/gpu/drm/i915/i915_irq.c               | 408 ----------------
>>  drivers/gpu/drm/i915/i915_irq.h               |   6 -
>>  drivers/gpu/drm/i915/i915_reg.h               |  35 --
>>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
>>  17 files changed, 541 insertions(+), 508 deletions(-)  create mode 100644
>> drivers/gpu/drm/i915/display/intel_vblank.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank_regs.h
>>
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center

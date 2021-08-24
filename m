Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE993F68AB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 20:03:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2766E0B9;
	Tue, 24 Aug 2021 18:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE486E0B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 18:03:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204566655"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="204566655"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 11:03:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526720533"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 11:03:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 daniel@ffwll.ch
In-Reply-To: <87tujfezzr.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1629721467.git.jani.nikula@intel.com>
 <YSTfKKa1Zkr6o4l+@intel.com> <87tujfezzr.fsf@intel.com>
Date: Tue, 24 Aug 2021 21:03:05 +0300
Message-ID: <87ilzug1pi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/display: split out some dpt
 and fb stuff from intel_display.c
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

On Tue, 24 Aug 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 24 Aug 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Mon, Aug 23, 2021 at 03:25:30PM +0300, Jani Nikula wrote:
>>> Make some forward progress on reducing intel_display.c size.
>>> 
>>> Jani Nikula (6):
>>>   drm/i915/display: split out dpt out of intel_display.c
>>>   drm/i915: add HAS_ASYNC_FLIPS feature macro
>>>   drm/i915/fb: move intel_tile_width_bytes() to intel_fb.c
>>>   drm/i915/fb: move intel_fb_align_height() to intel_fb.c
>>>   drm/i915/fb: move intel_surf_alignment() to intel_fb.c
>>>   drm/i915/fb: move user framebuffer stuff to intel_fb.c
>>> 
>>>  drivers/gpu/drm/i915/Makefile                |   1 +
>>>  drivers/gpu/drm/i915/display/intel_display.c | 709 +------------------
>>>  drivers/gpu/drm/i915/display/intel_display.h |   6 -
>>>  drivers/gpu/drm/i915/display/intel_dpt.c     | 229 ++++++
>>>  drivers/gpu/drm/i915/display/intel_dpt.h     |  19 +
>>>  drivers/gpu/drm/i915/display/intel_fb.c      | 481 +++++++++++++
>>>  drivers/gpu/drm/i915/display/intel_fb.h      |  20 +-
>>>  drivers/gpu/drm/i915/display/intel_fbdev.c   |   1 +
>>>  drivers/gpu/drm/i915/i915_drv.h              |   2 +
>>>  9 files changed, 752 insertions(+), 716 deletions(-)
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpt.c
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpt.h
>>
>> I believe it would be good to add a /** DOC: */ or at least
>> a simple comment block explaining a bit what DPT is.
>
> I agree, but I'm not signing up for that!
>
>> But other than that the series looks good, so, up to you:
>>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> (for the series)
>
> Thanks,
> Jani

And pushed.

BR,
Jani.

>
>>
>>> 
>>> -- 
>>> 2.20.1
>>> 

-- 
Jani Nikula, Intel Open Source Graphics Center

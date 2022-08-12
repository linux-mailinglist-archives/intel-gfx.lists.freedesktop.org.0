Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43765590C1D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6218FE77;
	Fri, 12 Aug 2022 06:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C8D2A276
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660287089; x=1691823089;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+ShIeQbyjuAewVkboApyBI5qIENELlJV6vPU6/Wn8pU=;
 b=e4xgjmGpxeae0U8FDJkxc+hEA4VbENNEciDR4k6BIxJw0O+W6hj683Up
 HQ68sSDfshlNwV7YhzZxJ+Ie4sJxJSoprWkUhN+dUv0eRsTLSjhru3Q8E
 s0MC7f0qh2vf+b6ZNn+D7SbCmKpL/eU7NO9jjYVHCuPrU5lRZZW2oeId/
 0Qsd52AddBwdxM5IR1RggAH+nljaKnu6RFHNS+4Fc+OO1E4ibikaDKGZy
 hG6t2+dljnzOVk7xriMuvGvsXE0skQ28cHEHQTMfnbFPvPbpzSPZHg+sx
 bdCjoA0IOMG9SUpO6/cfEe8mmxMSmL64YP/jkLbxUp/eVlYeaDw+OoDT5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="290291513"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="290291513"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:51:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665711338"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:51:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <8735e2t0sk.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177BF763F96A723B5505415BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <8735e2t0sk.fsf@intel.com>
Date: Fri, 12 Aug 2022 09:51:23 +0300
Message-ID: <87y1vurm38.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>>> -----Original Message-----
>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>>> Nikula
>>> Sent: Thursday, August 11, 2022 8:37 PM
>>> To: intel-gfx@lists.freedesktop.org
>>> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>>> <lucas.demarchi@intel.com>
>>> Subject: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
>>> display.funcs
>>>
>>> Move display related members under drm_i915_private display sub-struct.
>>>
>>> Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs while at
>>> it.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>>>  drivers/gpu/drm/i915/i915_drv.h               |  4 --
>>>  drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++----------
>>>  3 files changed, 33 insertions(+), 33 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>>> index ff76bd4079e4..98c6ccdc9100 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>> @@ -10,6 +10,7 @@
>>>
>>>  struct intel_atomic_state;
>>>  struct intel_cdclk_funcs;
>>> +struct intel_clock_gating_funcs;
>>>  struct intel_crtc;
>>>  struct intel_crtc_state;
>>>  struct intel_dpll_funcs;
>>> @@ -44,6 +45,9 @@ struct intel_display {
>>>
>>>               /* irq display functions */
>>>               const struct intel_hotplug_funcs *hotplug;
>>> +
>>> +             /* pm private clock gating functions */
>>> +             const struct intel_clock_gating_funcs *clock_gating;
>> Likewise having struct intel_display and all display related structs inside this, can this stuct be moved to intel_pm?
>> This is more related to a pm!
>
> I'm undecided whether it's eventually better to group the functions
> together, or spread the functions by, uh, functionality.
>
> But I'm pretty sure I want to first group them like this, see how the
> *other* named and anonymous sub-structs of intel_display shape up, and
> spread them around if that feels like the right thing to do.

Also, this series is going to be a lot of refactoring, and I'm
constantly trying to *not* incorporate too many changes, and mostly just
stick to straightforward movement. There's a lot more that should be
done wrt actually hiding this stuff within modules (using opaque
pointers etc) instead of exposing all of the data to all of the
drivers. It just can't all be done at once. This is the first step.

BR,
Jani.


>
> BR,
> Jani.
>
>
>>
>> Thanks and Regards,
>> Arun R Murthy
>> --------------------

-- 
Jani Nikula, Intel Open Source Graphics Center

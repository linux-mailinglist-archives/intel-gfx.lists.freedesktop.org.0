Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0B32C2943
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 15:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0AF6E44D;
	Tue, 24 Nov 2020 14:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86596E454
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 14:20:45 +0000 (UTC)
IronPort-SDR: Zm/YU2C2VDLpZMI2gPqSs+TVjb8V8YKkO6GwemLaLVsquGr4KM1W7KezYEHphTlBNVhwm1StDQ
 0DRMy3l9SGjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="158993153"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="158993153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 06:20:45 -0800
IronPort-SDR: ismrAn7lKhmHk/XZ5TBN7TbjJAo2Kn9jPdjEwQiYKeZEHlFowv0KdtLxJAQMtJuDg3UCCyISYy
 Pn26yzyqau3A==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="370440637"
Received: from dohanlon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.20.97])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 06:20:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Aditya Swarup <aditya.swarup@intel.com>
In-Reply-To: <20201124131401.c66nhive3nz3n2rq@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-3-aditya.swarup@intel.com>
 <20201117193114.ujqf4mgu3z2pzkab@ldmartin-desk1> <87mtzfowfj.fsf@intel.com>
 <572c4f61-bd17-0d5c-57e0-73f5896ab6e3@intel.com>
 <20201124131401.c66nhive3nz3n2rq@ldmartin-desk1>
Date: Tue, 24 Nov 2020 16:20:40 +0200
Message-ID: <87blfmn8ef.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915/tgl: Fix macros for TGL SOC
 based WA
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Nov 23, 2020 at 05:32:22PM -0800, Aditya Swarup wrote:
>>On 11/18/20 1:18 AM, Jani Nikula wrote:
>>> On Tue, 17 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Tue, Nov 17, 2020 at 10:50:10AM -0800, Aditya Swarup wrote:
>>>>> @@ -1579,9 +1579,9 @@ static inline const struct i915_rev_steppings *
>>>>> tgl_revids_get(struct drm_i915_private *dev_priv)
>>>>> {
>>>>> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>>>>> -		return tgl_uy_revids;
>>>>> +		return tgl_uy_revids + INTEL_REVID(dev_priv);
>>>>
>>>> oohh, no. You have to at least check you are not accessing out of
>>>> bounds. New HW running on old kernel should not access create invalid
>>>> accesses like this.
>>>
>>> And this is just one reason why exposing arrays directly as an interface
>>> to the rest of the driver is a bad idea. Basically I look at *all*
>>> externs in the driver with suspicion, and they're all exceptions that
>>> should not be repeated. The revid arrays are a direct invitation to keep
>>> adding more and more extern arrays. And more ways to go out of bounds.
>>
>>We definitely need an array table for the SOC -> Display, GT stepping mapping.
>
> the mapping could be very well in the define iff you don't have
> different mappings per sku as is the case with TGL. Example:
>
> #define ADLS_REVID_A0		0
> #define ADLS_REVID_A1		5
>
> #define ADLS_DISP_REVID_A0	0
> #define ADLS_DISP_REVID_B0	5
>
> The actual value is actually the *SoC* revid, regardless the name of the
> macro. Since we already have to use a different macro -
> IS_DISP_REVID() - I don't think this is much worse and would allow us to
> get rid of the table *for ADL-S*, at the expense of having to pass as
> argument the ADLS_DISP_REVID_*.  However this doesn't apply to TGL as TGL
> has a different mapping per sku.
>
>
>>SOC steppings were usually the same as display steppings/GT steppings until TGL and therefore
>>didn't require special mapping cases. But from TGL onwards, we have different combinations of
>>Disp and GT steppings per SOC stepping. Alderlake-S makes this direct mapping even more difficult
>>without the array requiring more macros to deal with SOC -> DISP/GT stepping differences.
>>
>>Will fix the array bound checks but the possibility of SOC revision id from drm struct going
>>out of bounds is minimal. Can only happen if we don't have support for latest SOC -> Disp/GT table
>
> this is very common. It's just a matter of trying to run a slightly old
> kernel in a slightly newer rev of the hardware.

Indeed. All kernels released with the arrays are simply bust for any new
hardware revisions. They'll need a minimal Cc: stable fix.

Here's something I drafted [1] to fix the situation more
generally. There are still some issues to overcome, though they exist
already in the current code.

This could be followed up with converting *all* platforms to the scheme,
making it universal, regardless of whether the revids in the hardware
are consecutive or not.

BR,
Jani.


[1] https://cgit.freedesktop.org/~jani/drm/log/?h=revid-stepping-scheme




>
>>for TGL from Bspec and if we are picking up wrong revision id from drm struct that means the platform
>>information obtained itself is wrong which will be a general platform problem unrelated to Gfx driver.
>
> Nothing else should really be a problem. We don't really use the revid
> much, mostly for WAs. And if other parts of the kernel are trying to use
> the SoC revid, then they are reading that info themselves, not using
> something we read.
>
> We are simply reading the revid from hardware and using that value
> without checking and that needs to change.
>
>
>>
>>>
>>> I'd rather we seek for ways to either nuke the revid arrays altogether,
>>> or encapsulate them within a .c file with static scope.
>>
>>I don't think we should nuke the revid arrays but I agree with finding a more appropriate place to
>>parse the gt/display stepping info. This should be an exercise for a later patch that takes
>>care of kbl,tgl and adl-s mappings.
>>
>>>
>>> And for that .c file... the arrays are now in gt/intel_workarounds.c
>>> which is a really weird place for stuff that's used for generic stepping
>>> info, and particularly for *display* stepping info.
>>
>>I agree and we can change the approach with a different patch later.
>>
>>>
>>> BR,
>>> Jani.
>>>
>>>
>>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

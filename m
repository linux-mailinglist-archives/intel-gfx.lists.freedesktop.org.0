Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9D62C26E2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 14:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0167A6E33F;
	Tue, 24 Nov 2020 13:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E88936E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 13:14:02 +0000 (UTC)
IronPort-SDR: IbWBqMyAQmbPbOCkruiJ6kyJZ6QyDsx3Agfe0FTAd+gOsoiPcyCXnNI/ONRhSl67MuK1N4OK4C
 bwWaB7QbK2SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="190065799"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="190065799"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 05:14:02 -0800
IronPort-SDR: HAyVvlbC03czaPjryy62PUta44kYvAuBn3HFJQ0Mk3VaUe/xL/02zxZa5jlKc4ryYefjb2iCRW
 Br/gWzsNKPYg==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="478492346"
Received: from zhengzha-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.20.151])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 05:14:01 -0800
Date: Tue, 24 Nov 2020 05:14:01 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201124131401.c66nhive3nz3n2rq@ldmartin-desk1>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-3-aditya.swarup@intel.com>
 <20201117193114.ujqf4mgu3z2pzkab@ldmartin-desk1>
 <87mtzfowfj.fsf@intel.com>
 <572c4f61-bd17-0d5c-57e0-73f5896ab6e3@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <572c4f61-bd17-0d5c-57e0-73f5896ab6e3@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 23, 2020 at 05:32:22PM -0800, Aditya Swarup wrote:
>On 11/18/20 1:18 AM, Jani Nikula wrote:
>> On Tue, 17 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Tue, Nov 17, 2020 at 10:50:10AM -0800, Aditya Swarup wrote:
>>>> @@ -1579,9 +1579,9 @@ static inline const struct i915_rev_steppings *
>>>> tgl_revids_get(struct drm_i915_private *dev_priv)
>>>> {
>>>> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>>>> -		return tgl_uy_revids;
>>>> +		return tgl_uy_revids + INTEL_REVID(dev_priv);
>>>
>>> oohh, no. You have to at least check you are not accessing out of
>>> bounds. New HW running on old kernel should not access create invalid
>>> accesses like this.
>>
>> And this is just one reason why exposing arrays directly as an interface
>> to the rest of the driver is a bad idea. Basically I look at *all*
>> externs in the driver with suspicion, and they're all exceptions that
>> should not be repeated. The revid arrays are a direct invitation to keep
>> adding more and more extern arrays. And more ways to go out of bounds.
>
>We definitely need an array table for the SOC -> Display, GT stepping mapping.

the mapping could be very well in the define iff you don't have
different mappings per sku as is the case with TGL. Example:

#define ADLS_REVID_A0		0
#define ADLS_REVID_A1		5

#define ADLS_DISP_REVID_A0	0
#define ADLS_DISP_REVID_B0	5

The actual value is actually the *SoC* revid, regardless the name of the
macro. Since we already have to use a different macro -
IS_DISP_REVID() - I don't think this is much worse and would allow us to
get rid of the table *for ADL-S*, at the expense of having to pass as
argument the ADLS_DISP_REVID_*.  However this doesn't apply to TGL as TGL
has a different mapping per sku.


>SOC steppings were usually the same as display steppings/GT steppings until TGL and therefore
>didn't require special mapping cases. But from TGL onwards, we have different combinations of
>Disp and GT steppings per SOC stepping. Alderlake-S makes this direct mapping even more difficult
>without the array requiring more macros to deal with SOC -> DISP/GT stepping differences.
>
>Will fix the array bound checks but the possibility of SOC revision id from drm struct going
>out of bounds is minimal. Can only happen if we don't have support for latest SOC -> Disp/GT table

this is very common. It's just a matter of trying to run a slightly old
kernel in a slightly newer rev of the hardware.

>for TGL from Bspec and if we are picking up wrong revision id from drm struct that means the platform
>information obtained itself is wrong which will be a general platform problem unrelated to Gfx driver.

Nothing else should really be a problem. We don't really use the revid
much, mostly for WAs. And if other parts of the kernel are trying to use
the SoC revid, then they are reading that info themselves, not using
something we read.

We are simply reading the revid from hardware and using that value
without checking and that needs to change.


>
>>
>> I'd rather we seek for ways to either nuke the revid arrays altogether,
>> or encapsulate them within a .c file with static scope.
>
>I don't think we should nuke the revid arrays but I agree with finding a more appropriate place to
>parse the gt/display stepping info. This should be an exercise for a later patch that takes
>care of kbl,tgl and adl-s mappings.
>
>>
>> And for that .c file... the arrays are now in gt/intel_workarounds.c
>> which is a really weird place for stuff that's used for generic stepping
>> info, and particularly for *display* stepping info.
>
>I agree and we can change the approach with a different patch later.
>
>>
>> BR,
>> Jani.
>>
>>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

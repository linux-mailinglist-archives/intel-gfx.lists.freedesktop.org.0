Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7772C31B3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 21:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F806E040;
	Tue, 24 Nov 2020 20:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E646E040
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 20:11:06 +0000 (UTC)
IronPort-SDR: zDcUHlSAeFgk2fvQeEuGmLdeEXeryyIpoDDSIleQY5Y8TP9ZQvuDYpG3dn/rCS0JWR4dR8k2Ql
 vP3Ux5QDgEug==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256718202"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="256718202"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 12:11:06 -0800
IronPort-SDR: 9UFCsmJppqKY/BvDn1qvz0Giaxgie9kAvoTh1LzFJam3lyarTcRKbzWQgWsI7wjGO2h0z/DtvK
 buKan2fGDPkg==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="312690373"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.72])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 12:11:06 -0800
Date: Tue, 24 Nov 2020 12:11:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201124201105.nff2tzuyqny7atgb@ldmartin-desk1.jf.intel.com>
X-Patchwork-Hint: comment
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-3-aditya.swarup@intel.com>
 <20201117193114.ujqf4mgu3z2pzkab@ldmartin-desk1>
 <87mtzfowfj.fsf@intel.com>
 <572c4f61-bd17-0d5c-57e0-73f5896ab6e3@intel.com>
 <20201124131401.c66nhive3nz3n2rq@ldmartin-desk1>
 <87blfmn8ef.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blfmn8ef.fsf@intel.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Matt Roper, see question in item (3) below

On Tue, Nov 24, 2020 at 04:20:40PM +0200, Jani Nikula wrote:
>On Tue, 24 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Nov 23, 2020 at 05:32:22PM -0800, Aditya Swarup wrote:
>>>On 11/18/20 1:18 AM, Jani Nikula wrote:
>>>> On Tue, 17 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>> On Tue, Nov 17, 2020 at 10:50:10AM -0800, Aditya Swarup wrote:
>>>>>> @@ -1579,9 +1579,9 @@ static inline const struct i915_rev_steppings *
>>>>>> tgl_revids_get(struct drm_i915_private *dev_priv)
>>>>>> {
>>>>>> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>>>>>> -		return tgl_uy_revids;
>>>>>> +		return tgl_uy_revids + INTEL_REVID(dev_priv);
>>>>>
>>>>> oohh, no. You have to at least check you are not accessing out of
>>>>> bounds. New HW running on old kernel should not access create invalid
>>>>> accesses like this.
>>>>
>>>> And this is just one reason why exposing arrays directly as an interface
>>>> to the rest of the driver is a bad idea. Basically I look at *all*
>>>> externs in the driver with suspicion, and they're all exceptions that
>>>> should not be repeated. The revid arrays are a direct invitation to keep
>>>> adding more and more extern arrays. And more ways to go out of bounds.
>>>
>>>We definitely need an array table for the SOC -> Display, GT stepping mapping.
>>
>> the mapping could be very well in the define iff you don't have
>> different mappings per sku as is the case with TGL. Example:
>>
>> #define ADLS_REVID_A0		0
>> #define ADLS_REVID_A1		5
>>
>> #define ADLS_DISP_REVID_A0	0
>> #define ADLS_DISP_REVID_B0	5
>>
>> The actual value is actually the *SoC* revid, regardless the name of the
>> macro. Since we already have to use a different macro -
>> IS_DISP_REVID() - I don't think this is much worse and would allow us to
>> get rid of the table *for ADL-S*, at the expense of having to pass as
>> argument the ADLS_DISP_REVID_*.  However this doesn't apply to TGL as TGL
>> has a different mapping per sku.
>>
>>
>>>SOC steppings were usually the same as display steppings/GT steppings until TGL and therefore
>>>didn't require special mapping cases. But from TGL onwards, we have different combinations of
>>>Disp and GT steppings per SOC stepping. Alderlake-S makes this direct mapping even more difficult
>>>without the array requiring more macros to deal with SOC -> DISP/GT stepping differences.
>>>
>>>Will fix the array bound checks but the possibility of SOC revision id from drm struct going
>>>out of bounds is minimal. Can only happen if we don't have support for latest SOC -> Disp/GT table
>>
>> this is very common. It's just a matter of trying to run a slightly old
>> kernel in a slightly newer rev of the hardware.
>
>Indeed. All kernels released with the arrays are simply bust for any new
>hardware revisions. They'll need a minimal Cc: stable fix.
>
>Here's something I drafted [1] to fix the situation more
>generally. There are still some issues to overcome, though they exist
>already in the current code.
>
>This could be followed up with converting *all* platforms to the scheme,
>making it universal, regardless of whether the revids in the hardware
>are consecutive or not.
>
>BR,
>Jani.
>
>
>[1] https://cgit.freedesktop.org/~jani/drm/log/?h=revid-stepping-scheme

That is looking good.  Some feedback I can give before this series being
sent for review:

1) You need to call the init function from somewhere
2) For the FIXMEs:

+	/*
+	 * FIXME: We should be able to take into account new revids not
+	 * recognized by this kernel version.
+	 */

+	/*
+	 * FIXME: We should be able to handle gaps in revid arrays gracefully,
+	 * and in a way that works sensibly for the range checks. This is true
+	 * for the existing revid range checks; it's fine if a new id pops up in
+	 * the middle.
+	 *
+	 * It's okay for the display stepping to be zero, though in an array all
+	 * or none should be set to non-zero, not a mix.
+	 */

Maybe consider that gt_stepping will never be 0 and in the case it is (or
size > ARRAY_SIZE), just backtrack to use the first one we find with
gt_stepping != 0?  then we probably should add a warning that we are not
actually using the correct one, but it's the best we can do.

3) REVID_BXT_B_LAST

what is that? The only thing that comes to mind is for "matching all B
steps". Matt Roper had a patch to change the way we interpret the WA
ranges so the bounds are [lower, upper) rather than [lower, upper].
Matt, any problem you faced with that patch? It makes  more sense
because we know the stepping in which it's fixed, but we may have
additional revids before that

But I don't see any trace of REVID_BXT_B_LAST in the tree, so not sure
what's this about.

4)

Lastly, I'd still like the simple fix for TGL without all the noise and
without the refactor.  It's the simplest fix we can do for the 5.10
timeframe.


Lucas De Marchi

>
>
>
>
>>
>>>for TGL from Bspec and if we are picking up wrong revision id from drm struct that means the platform
>>>information obtained itself is wrong which will be a general platform problem unrelated to Gfx driver.
>>
>> Nothing else should really be a problem. We don't really use the revid
>> much, mostly for WAs. And if other parts of the kernel are trying to use
>> the SoC revid, then they are reading that info themselves, not using
>> something we read.
>>
>> We are simply reading the revid from hardware and using that value
>> without checking and that needs to change.
>>
>>
>>>
>>>>
>>>> I'd rather we seek for ways to either nuke the revid arrays altogether,
>>>> or encapsulate them within a .c file with static scope.
>>>
>>>I don't think we should nuke the revid arrays but I agree with finding a more appropriate place to
>>>parse the gt/display stepping info. This should be an exercise for a later patch that takes
>>>care of kbl,tgl and adl-s mappings.
>>>
>>>>
>>>> And for that .c file... the arrays are now in gt/intel_workarounds.c
>>>> which is a really weird place for stuff that's used for generic stepping
>>>> info, and particularly for *display* stepping info.
>>>
>>>I agree and we can change the approach with a different patch later.
>>>
>>>>
>>>> BR,
>>>> Jani.
>>>>
>>>>
>>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

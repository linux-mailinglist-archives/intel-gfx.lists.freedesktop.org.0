Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E13EB2C481C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:18:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C366E903;
	Wed, 25 Nov 2020 19:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C11A6E903
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:18:13 +0000 (UTC)
IronPort-SDR: YI6w5QhEYfFuArWrucgUcG/Lo42elGfOKgmdIDWY41Mp9F9w0h++83YUFNxBikQsHWRNv2rbZj
 Dc9KyQl3nbiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="256896701"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="256896701"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:18:12 -0800
IronPort-SDR: +8WvkP5u/6wmmewC61kF6TXZxLNuplmiF1uYvF4O58E5sDlVw0rEkM129UcxdpF7osn5LrGYLU
 mdJE39yATSkQ==
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="365528076"
Received: from sowmyave-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.29.185])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:18:12 -0800
Date: Wed, 25 Nov 2020 11:18:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201125191811.me6ha4kwhchohrez@ldmartin-desk1>
References: <20201125003108.156110-1-aditya.swarup@intel.com>
 <87360xmzgr.fsf@intel.com>
 <160631840326.26272.537878967385128182@build.alporthouse.com>
 <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61248f45-d8f1-edec-656a-6eaddefb3789@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix REVID macros for TGL to
 fetch correct stepping
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 09:51:04AM -0800, Aditya Swarup wrote:
>On 11/25/20 7:33 AM, Chris Wilson wrote:
>> Quoting Jani Nikula (2020-11-25 11:45:56)
>>> On Tue, 24 Nov 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
>>>> Fix TGL REVID macros to fetch correct display/gt stepping based
>>>> on SOC rev id from INTEL_REVID() macro. Previously, we were just
>>>> returning the first element of the revid array instead of using
>>>> the correct index based on SOC rev id.
>>>>
>>>> Also, add array bound checks for TGL REV ID array. Since, there
>>>> might be a possibility of using older kernels on latest platform
>>>> revision, resulting in out of bounds access for rev ID array.
>>>> In this scenario, print message for unsupported rev ID and apply
>>>> settings for latest rev ID available.
>>>>
>>>> Fixes: ("drm/i915/tgl: Fix stepping WA matching")
>>>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/i915_drv.h | 35 +++++++++++++++++++++++++++------
>>>>  1 file changed, 29 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i9=
15_drv.h
>>>> index 15be8debae54..29d55b7017be 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -1572,16 +1572,37 @@ enum {
>>>>       TGL_REVID_D0,
>>>>  };
>>>>
>>>> -extern const struct i915_rev_steppings tgl_uy_revids[];
>>>> -extern const struct i915_rev_steppings tgl_revids[];
>>>> +extern const struct i915_rev_steppings tgl_uy_revids[4];
>>>> +extern const struct i915_rev_steppings tgl_revids[2];
>>>
>>> Just a quick note, the compiler does not check that the size in the
>>> extern declaration matches the size in the array definition. So you
>>> might end up with a mismatch without noticing.
>
>Yes.. We will have to take care of it if we are adding rev id to array tab=
le(which mostly
>should remain a const once we decide to go upstream). Without this declara=
tion, I cannot
>use ARRAY_SIZE() macro with revid arrays as the sizeof() operator complain=
s about not
>knowing the size of the array in question as it is an extern declaration.
>
>So, I don't know what other approach you want to suggest? If we move all t=
he array tables to i915_drv.h(which
>I feel would be a better approach rather than having it in intel_workaroun=
ds.c), Matt
>Roper's KBL patch says that compiler complains about unused variables.

adding the table in the header means that each compilation unit (.o)
will get a copy of the table when it includes the header (it will end up
being trimmed out if not used though). This is not what you want.

As I said in the other reply, sizeof does actually work here:

	$ cat /tmp/a.c
	#include <stdio.h>

	#include "b.h"

	int main(int argc, const char *argv[])
	{
		printf("%zu", sizeof(tgl_uy_revids));
		return 0;
	}

	$ cat /tmp/b.h
	#pragma once

	struct i915_rev_steppings { int a; };
	extern const struct i915_rev_steppings tgl_uy_revids[4];

	$ cat /tmp/b.c
	#include "b.h"

	const struct i915_rev_steppings tgl_uy_revids[] =3D {
		{ 10 },
		{ 20 },
		{ 30 },
		{ 40 },
	};

And compiler also warns if in the *definition* of tgl_uy_revids it goes
over the amount of space of the declaration. For clarity, you may
however want to add a define to tell the size:


-extern const struct i915_rev_steppings tgl_uy_revids[4];
+#define TGL_UY_REVIDS_SIZE 4
+extern const struct i915_rev_steppings tgl_uy_revids[TGL_UY_REVIDS_SIZE];

and do the same in the .c

>
>We are anyhow going to correct the whole thing with your stepping series a=
nyway. This is supposed
>to be a stop gap fix. Revids shouldn't be changing for TGL anymore.
>
>>
>> What surprised me is that this defeated the __must_be_array() check.
>> I thought these were just pointers to C
>>
>>>> +#define TGL_UY_REVID_RANGE(revid) \
>>>> +     ((revid) < ARRAY_SIZE(tgl_uy_revids))
>>>> +
>>>> +#define TGL_REVID_RANGE(revid) \
>>>> +     ((revid) < ARRAY_SIZE(tgl_revids))
>>>>
>>>>  static inline const struct i915_rev_steppings *
>>>>  tgl_revids_get(struct drm_i915_private *dev_priv)
>>>>  {
>>>> -     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>>>> -             return tgl_uy_revids;
>>>> -     else
>>>> -             return tgl_revids;
>>>> +     const u8 revid =3D INTEL_REVID(dev_priv);
>>>> +
>>>> +     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>>>> +             if (TGL_UY_REVID_RANGE(revid)) {
>>>> +                     return tgl_uy_revids + revid;
>>>> +             } else {
>>>> +                     drm_dbg_kms(&dev_priv->drm,
>>>> +                                 "Unsupported SOC stepping found %u, =
using %lu instead\n",
>>>> +                                 revid, ARRAY_SIZE(tgl_uy_revids) - 1=
);
>>
>> Also please don't have a dbg for every single IS_TGL_*_REVID
>> invocation. And this is not _kms, but driver; better yet, don't bother
>> with a drm_dbg_kms here at all.
>>
>> If you want to actually check, add something like
>> intel_detect_preproduction_hw() and warn about unknown future revids.
>> Or include the info when we print the revid in the caps.
>
>So, what you are suggesting is add an info print in that function intel_de=
tect_preproduction_hw() right?
>Or something else?
>
>> -Chris
>>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

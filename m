Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCFE2C1AD7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 02:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178266E182;
	Tue, 24 Nov 2020 01:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6886E182
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 01:32:24 +0000 (UTC)
IronPort-SDR: 8hRmrC9aUOxIAl4K8Y8W0svAaPDJabwST6QlrVeWgGdy2J1554V+x63srVaJmgxdhC8KXE75J7
 AbzumAmklDWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="151133066"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="151133066"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 17:32:24 -0800
IronPort-SDR: soJ7bK+51jWrUgW6W90VxLM9LKj81HnaZ7aLrmlW9/wwMktTcsR0Zw1+U27/InDORGgd7SBTR6
 ph+rNfzc84Xw==
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="534671076"
Received: from egderks-mobl2.amr.corp.intel.com (HELO [10.252.132.120])
 ([10.252.132.120])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 17:32:24 -0800
To: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-3-aditya.swarup@intel.com>
 <20201117193114.ujqf4mgu3z2pzkab@ldmartin-desk1> <87mtzfowfj.fsf@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <572c4f61-bd17-0d5c-57e0-73f5896ab6e3@intel.com>
Date: Mon, 23 Nov 2020 17:32:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87mtzfowfj.fsf@intel.com>
Content-Language: en-US
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

On 11/18/20 1:18 AM, Jani Nikula wrote:
> On Tue, 17 Nov 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Tue, Nov 17, 2020 at 10:50:10AM -0800, Aditya Swarup wrote:
>>> @@ -1579,9 +1579,9 @@ static inline const struct i915_rev_steppings *
>>> tgl_revids_get(struct drm_i915_private *dev_priv)
>>> {
>>> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>>> -		return tgl_uy_revids;
>>> +		return tgl_uy_revids + INTEL_REVID(dev_priv);
>>
>> oohh, no. You have to at least check you are not accessing out of
>> bounds. New HW running on old kernel should not access create invalid
>> accesses like this.
> 
> And this is just one reason why exposing arrays directly as an interface
> to the rest of the driver is a bad idea. Basically I look at *all*
> externs in the driver with suspicion, and they're all exceptions that
> should not be repeated. The revid arrays are a direct invitation to keep
> adding more and more extern arrays. And more ways to go out of bounds.

We definitely need an array table for the SOC -> Display, GT stepping mapping.
SOC steppings were usually the same as display steppings/GT steppings until TGL and therefore
didn't require special mapping cases. But from TGL onwards, we have different combinations of 
Disp and GT steppings per SOC stepping. Alderlake-S makes this direct mapping even more difficult
without the array requiring more macros to deal with SOC -> DISP/GT stepping differences.

Will fix the array bound checks but the possibility of SOC revision id from drm struct going 
out of bounds is minimal. Can only happen if we don't have support for latest SOC -> Disp/GT table
for TGL from Bspec and if we are picking up wrong revision id from drm struct that means the platform
information obtained itself is wrong which will be a general platform problem unrelated to Gfx driver.

> 
> I'd rather we seek for ways to either nuke the revid arrays altogether,
> or encapsulate them within a .c file with static scope.

I don't think we should nuke the revid arrays but I agree with finding a more appropriate place to 
parse the gt/display stepping info. This should be an exercise for a later patch that takes 
care of kbl,tgl and adl-s mappings.

> 
> And for that .c file... the arrays are now in gt/intel_workarounds.c
> which is a really weird place for stuff that's used for generic stepping
> info, and particularly for *display* stepping info.

I agree and we can change the approach with a different patch later.

> 
> BR,
> Jani.
> 
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

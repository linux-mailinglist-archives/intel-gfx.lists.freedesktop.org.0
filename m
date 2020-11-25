Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C42792C485E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 20:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D580E6E906;
	Wed, 25 Nov 2020 19:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F206E906
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 19:29:59 +0000 (UTC)
IronPort-SDR: Cv8ki2h7x/ed+ZJw0DinFccP29Nde0NQc5pHGfTpa3T26qg3XosQ3bNyTASd42gIgXqbza/S/Y
 fvUyqE4HqBvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="159235638"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="159235638"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:29:59 -0800
IronPort-SDR: Hgt9YQchAy1x16aWtVBTQsoOFIpkoWg3Dv8IzTYDc77GjbJj0S7kUeHsk8KTJckblO5tWar3G7
 QOESpMmOXpwA==
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="313765836"
Received: from sowmyave-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.29.185])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 11:29:58 -0800
Date: Wed, 25 Nov 2020 11:29:58 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201125192958.6qmcnjksvavkwq62@ldmartin-desk1>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 09:51:04AM -0800, Aditya Swarup wrote:
>On 11/25/20 7:33 AM, Chris Wilson wrote:
>> Quoting Jani Nikula (2020-11-25 11:45:56)
>>> On Tue, 24 Nov 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
>>>> +     if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>>>> +             if (TGL_UY_REVID_RANGE(revid)) {
>>>> +                     return tgl_uy_revids + revid;
>>>> +             } else {
>>>> +                     drm_dbg_kms(&dev_priv->drm,
>>>> +                                 "Unsupported SOC stepping found %u, using %lu instead\n",
>>>> +                                 revid, ARRAY_SIZE(tgl_uy_revids) - 1);
>>
>> Also please don't have a dbg for every single IS_TGL_*_REVID
>> invocation. And this is not _kms, but driver; better yet, don't bother
>> with a drm_dbg_kms here at all.
>>
>> If you want to actually check, add something like
>> intel_detect_preproduction_hw() and warn about unknown future revids.
>> Or include the info when we print the revid in the caps.
>
>So, what you are suggesting is add an info print in that function intel_detect_preproduction_hw() right?
>Or something else?

since this is all going away soon, just removing the dbg would be ok

And in that case, just doing something like below would be shorter and
clearer IMO (untested):

	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
		arr = tgl_uy_revids;
		size = ARRAY_SIZE(tgl_uy_revids);
	} else {
		arr = tgl_revids;
		size = ARRAY_SIZE(tgl_revids);
	}
		
	revid = min(revid, size - 1);

	return &arr[revid];

That may also be 2 patches:  one adding the revid so we actually apply
the correct workarounds (this needs the "Fixes" tag) and the other to
add the bounds check.

Lucas De Marchi

>
>> -Chris
>>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

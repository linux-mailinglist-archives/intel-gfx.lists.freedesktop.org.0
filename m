Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221F335F13C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 12:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE296E918;
	Wed, 14 Apr 2021 10:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A696E90D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 10:06:49 +0000 (UTC)
IronPort-SDR: hZ8aYPqe+r2VsYB977bXSm/dFRSESdscHp4XQCD5GNufPGZNsY+Vg3PkHxZkzmPvqtpDXnk1hh
 v6gmS3Gw6RBA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174106678"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174106678"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 03:06:49 -0700
IronPort-SDR: GiSOnrSFjFJ2aHiUNHRVkw09JJDA/RYM1UB3uvzDqX9jy2TK2FTlYmYwY9gTBcTbv+kNlSThDe
 r1dxAGLx5vKg==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="418266151"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 03:06:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87v98pffu7.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <87a6q2h57k.fsf@intel.com> <87v98pffu7.fsf@intel.com>
Date: Wed, 14 Apr 2021 13:06:42 +0300
Message-ID: <875z0pfadp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 00/12] drm/i915: Extend GEN renames to
 the rest of the driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 14 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 13 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> Like was done for the display part that parted ways with INTEL_GEN(),
>>> replacing with DISPLAY_VER(), do a similar conversion for the rest of
>>> the driver.
>>>
>>> v1.1: Remove .ko that was incorrectly added as part of patch 11, making it
>>> very big and not going through the mailing list. Sorry for those in CC
>>> who received it.
>>>
>>> v2:
>>>   - Add "drm/i915/display: rename display version macros" to rename
>>>     macro and repurpose it: s/IS_DISPLAY_RANGE/IS_DISPLAY_VER/ and convert
>>>     the current users of IS_DISPLAY_VER to use direct comparison
>>>   - Group display patches to easily apply independently
>>
>> I like the direction here. Even as the version checks diversify, we
>> manage to simplify and reduce the macros.
>>
>> I think we're going to have to queueu this via a topic branch, and merge
>> that to both drm-intel-next and drm-intel-gt-next. The next time the
>> branches can sync up is just too far away at this point, and the
>> conflicts may be really nasty to solve later.
>>
>> That does mean having to solve the conflict with 70bfb30743d5
>> ("drm/i915/display: Eliminate IS_GEN9_{BC,LP}") which is in din but not
>> dign. The topic branch would be based on:
>>
>> $ git merge-base drm-intel/drm-intel-next drm-intel/drm-intel-gt-next
>> 9c0fed84d5750e1eea6c664e073ffa2534a17743
>>
>> There are two (crappy?) ideas to make that easier. 1) revert
>> 70bfb30743d5 from din and add it to the topic branch instead, 2) don't
>> revert it but cherry-pick it to the topic branch also.
>>
>> Cc: Joonas and Daniel for their input on this as well.
>
> I've created the topic branch topic/intel-gen-to-ver where the series
> should be applied.
>
> However, for the reasons above, it does not apply as-is, and the merge
> will conflict slightly.
>
> Also, I think Ville's fixes [1] should land on the topic branch *first*
> because they need to be propagated to drm-intel-next-fixes.

I went ahead and:

* Created the topic branch topic/intel-gen-to-ver with the merge-base
  mentioned above.

* Cherry-picked 70bfb30743d5 on the topic branch to avoid major
  conflicts, as suggested by Daniel on IRC.

* Reviewed and applied Ville's series [1] on the topic branch.

* Reviewed and applied this series on the topic branch.

  - There were a couple of tiny conflicts between patch 3 and Ville's
    series, and I fixed the conflicts while applying.

  - I also fixed my comment nitpicks while applying.

  - I usually refrain from doing any changes while applying, but in this
    case I considered the changes very small, and did not want to delay
    this any further.

Please chime in now if you have issues with this series! Explicit acks
would be much appreciated; they can be added to the topic merge commit.

I hope to send the pull request and get this merged by Thursday, to
avoid creating more conflicts.


BR,
Jani.

>
>
> [1] https://lore.kernel.org/intel-gfx/20210412054607.18133-1-ville.syrjala@linux.intel.com/

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

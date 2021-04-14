Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FD435EF18
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 10:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429DA6E8F1;
	Wed, 14 Apr 2021 08:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC08F6E8F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 08:08:54 +0000 (UTC)
IronPort-SDR: ktvO+W1u0CMy38MYjQ6TeVkpXlRxxLXHHhKR57ZPgAn7SzrTjOx8JXHkl/4WA25LtXF6QxlrPH
 rMnYwSmPbtcw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174697775"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174697775"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 01:08:54 -0700
IronPort-SDR: TMgccS757sE+hy9QjW8AZRA7yshu5a5CeZGuNNN+6kxzt9gxctJRhNBA9SfVCQQaQBqgxA60I5
 vbyJEeNJL70g==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="424616397"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 01:08:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87a6q2h57k.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <87a6q2h57k.fsf@intel.com>
Date: Wed, 14 Apr 2021 11:08:48 +0300
Message-ID: <87v98pffu7.fsf@intel.com>
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

On Tue, 13 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> Like was done for the display part that parted ways with INTEL_GEN(),
>> replacing with DISPLAY_VER(), do a similar conversion for the rest of
>> the driver.
>>
>> v1.1: Remove .ko that was incorrectly added as part of patch 11, making it
>> very big and not going through the mailing list. Sorry for those in CC
>> who received it.
>>
>> v2:
>>   - Add "drm/i915/display: rename display version macros" to rename
>>     macro and repurpose it: s/IS_DISPLAY_RANGE/IS_DISPLAY_VER/ and convert
>>     the current users of IS_DISPLAY_VER to use direct comparison
>>   - Group display patches to easily apply independently
>
> I like the direction here. Even as the version checks diversify, we
> manage to simplify and reduce the macros.
>
> I think we're going to have to queueu this via a topic branch, and merge
> that to both drm-intel-next and drm-intel-gt-next. The next time the
> branches can sync up is just too far away at this point, and the
> conflicts may be really nasty to solve later.
>
> That does mean having to solve the conflict with 70bfb30743d5
> ("drm/i915/display: Eliminate IS_GEN9_{BC,LP}") which is in din but not
> dign. The topic branch would be based on:
>
> $ git merge-base drm-intel/drm-intel-next drm-intel/drm-intel-gt-next
> 9c0fed84d5750e1eea6c664e073ffa2534a17743
>
> There are two (crappy?) ideas to make that easier. 1) revert
> 70bfb30743d5 from din and add it to the topic branch instead, 2) don't
> revert it but cherry-pick it to the topic branch also.
>
> Cc: Joonas and Daniel for their input on this as well.

I've created the topic branch topic/intel-gen-to-ver where the series
should be applied.

However, for the reasons above, it does not apply as-is, and the merge
will conflict slightly.

Also, I think Ville's fixes [1] should land on the topic branch *first*
because they need to be propagated to drm-intel-next-fixes.


BR,
Jani.


[1] https://lore.kernel.org/intel-gfx/20210412054607.18133-1-ville.syrjala@linux.intel.com/

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

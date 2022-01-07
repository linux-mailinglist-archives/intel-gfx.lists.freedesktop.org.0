Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C848A487AA6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 17:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1355310ECD8;
	Fri,  7 Jan 2022 16:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D3B10F6E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 16:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641573967; x=1673109967;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DPf1Fr1FbZLHgo9TYwBo+htkcQP3986wuvJLeIq512U=;
 b=MU5ra78ke8fVQku1i7uDceAuKQRlnzGE4LsyYUR1GVOAu01aHLeMmePf
 Q8KcSAsd4TIQSuTIimc8BxGk7aabWBLbVE9c1teFKkVzBwZgTzYKY8Kxh
 Zw+OFaDPBBJ4BOi0FzDOBPzY/sV//HA2F9i5uEDqx19wbhQrg9pOvNzbA
 3qtoqG+2xN6AFnzjVAX8z0AbF8rqVRTqb88ZOy9J4kMOtc3Z8o1MRvDeR
 qCiB8RGAziHb/eFkjoztHlHO2L61rDcyF8Knx2Rxa6zxqc1PTjL2rNQ+e
 9ozIlPRLEijsNK829AI7j0EICtQFXPveb+Q012jaBkdySYvxGBGEI5Kjk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="329237503"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="329237503"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 08:46:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="527422508"
Received: from msharmak-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.138.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 08:46:05 -0800
Date: Fri, 7 Jan 2022 08:46:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220107164605.bd5t6a2doe227mse@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220106230823.2791203-1-matthew.d.roper@intel.com>
 <20220106230823.2791203-2-matthew.d.roper@intel.com>
 <874k6fn7qf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874k6fn7qf.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Drop unused register
 definitions
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 07, 2022 at 12:46:48PM +0200, Jani Nikula wrote:
>On Thu, 06 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
>> A large percentage (nearly 25%) of the register and bit definitions in
>> i915_reg.h are not used by the i915 driver and are effectively dead
>> code.  There are a few origins for these unused definitions:
>>
>>  * Registers only accessed by workarounds that were either retracted by
>>    the hardware team or that only applied to pre-production steppings
>>    and have been removed from the driver.
>>
>>  * General refactoring of the codebase (e.g., separate definitions of
>>    REG1, REG2, REG3 being replaced by a parameterized REG(n) macro
>>    without the original definitions being dropped.
>>
>>  * In the early days of i915, all registers in an area of the hardware,
>>    or all bits in a given register got documented in i915_reg.h "just in
>>    case" they needed to be used in the future.  With the exploding
>>    complexity of the hardware and huge number of platforms we now
>>    support, mass-documenting everything as #define's doesn't scale.
>>    We'd also generally prefer *not* to have definitions already in the
>>    driver before they're used since we'd rather review them explicitly
>>    alongside new code that is starting to use them.
>
>I still tell people to 1) split out register definitions to separate
>patches, and 2) add macros for the entire feature and full contents for
>each register, even if they remain unused.
>
>One of the main reasons is review economics. It's pretty easy to look at
>a patch adding register contents, review it against the bspec and be
>done with it. And while you have the right bspec page open, it only
>takes a very short time to add and review the entire register, instead
>of having to return to it later. A patch adding just the registers could
>get reviewed and merged at v1. It's one less patch the developer has to
>keep carrying and rebasing, and it's one less portion the reviewer has
>to worry about.

this failed multiple times though, so I'm on the other side of the fence
and think this actually makes things worse. Main reasons is because we
have several registers doing things like:

	#define BLA(idx)	REG_BIT(idx * 2 + 1)

And it's easy to get this wrong when it was not tested. It may be for
example that one phy or port doesn't follow the same logic.
When I review code I prefer reviewing code people actually tested.

It's less of an issue when it's a 1:1 map from bspec, but for a lot of
registers we need just 1 or 2 bits, e.g. for workarounds. Being able to
filter out workarounds we don't need because we don't even define the
register/bit is also another con to defining the complete register in a
separate patch.


So from my POV, the cons outweigtht the pros.

>
>Overall it's about getting the easy stuff done and behind you first. And
>that's a huge part of my whole approach to kernel development, and what
>I try to tell others to follow.
>
>I also think the documentation aspect is still valid, and especially so
>for older hardware. It may be fine to remove some of the accumulated
>cruft, *after* the register macros have been split up to smaller files
>by functionality. But I don't think it should be an indiscriminate mass
>removal of macros. For example, I don't think I want any of the sideband
>or VGA or PCI register macros removed.
>
>Bottom line, I don't mind adding or having unused register macros at
>all. Heck, I'd be on board for switching to auto-generated register
>macros with absolutely everything.

if it can be generated.... Then we'd have some additional headers for
the accessor functions that deal with index math to the to the right
bits or the  right register instance.  

Lucas De Marchi

>
>Of course, this is only about register macros that describe the
>hardware, not so much about driver implementation where I'd toss unused
>code to the curb in a heartbeat.
>
>From a purely pragmatic perspective, please proceed with the
>non-controversial splitting up i915_reg.h to individual files, switching
>to REG_* macros for contents, etc, etc, first. Just please don't start
>with this one because it's going to be a long tedious debate that will
>suck the life force right out of us and make you want to stop doing the
>whole thing. (Remember, get the easy stuff done and behind you first. ;)
>
>
>BR,
>Jani.
>
>
>>
>> Let's start cleaning up the register definition file by removing a bunch
>> of dead code.  I used a cscope database to track down most of these via
>> searches like:
>>
>>    for x in $(grep '^#define' drivers/gpu/drm/i915/i915_reg.h | awk '{ print $2 }' | cut -d'(' -f1); do count=$(cscope -d -R -L0 $x | wc -l); if (($count <= 1)); then echo $x; fi; done
>>
>> although I had to watch out for cases where register/bit names are never
>> referenced directly, but are constructed elsewhere by macro
>> concatenation (e.g., GEN3_IRQ_INIT()).
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center

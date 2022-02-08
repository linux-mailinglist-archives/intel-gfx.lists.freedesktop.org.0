Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 870594AE29B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 21:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6EA10E32B;
	Tue,  8 Feb 2022 20:34:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F0410E226
 for <Intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 20:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644352488; x=1675888488;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R2eHUu9d83vP1zynLXb63+fX35bCGi9ffrHj9XKrdaA=;
 b=CKY4bs7IPePbxEViD3jTcz9J/saazCxvvYb4pBAAUAdtQom/cU+jvwnz
 njlLVYaEFJaudXsclhbUNClPgmQgVO1l5sr4wdod3O0AcVWCCFV3/tjeX
 w+AwjkO1Mbp6zbnTMcOPj3SbZGvN+kZjeaqsCBYJB2kqzIKNkKvPjHoFq
 2RhTr/D1/L0rFkQF6My4Qxf2K5TSlnEz7m6/RFZMgE35mtDIA+faTSbAr
 7cezcgHV/+j7M4xMgBxF66BljhEG4om/bd7uxYqcHdM7vC9ldMjCq2AyQ
 jC9mZJrSX8CXPR6JNDuVbgMTYpiBV4E5orMqzeHrVSqTjhDD6AwoevCwI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="312343283"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="312343283"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 12:34:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="499698695"
Received: from ymtarple-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.231.100])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 12:34:47 -0800
Date: Tue, 8 Feb 2022 12:34:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220208203447.6v5amqo6ul4upana@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
 <20220201165515.xntdympc4n3pdhif@ldmartin-desk2>
 <87o83qtsxx.fsf@intel.com>
 <20220201172820.ckcxkt5g5xstfi5s@ldmartin-desk2>
 <0ef577a8-578e-22dd-c287-5223c21edcb7@linux.intel.com>
 <20220202162621.f4rr2b4li2zzvnvb@ldmartin-desk2>
 <0558be29-979a-0b86-b4c9-f4fb5a3fe08f@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0558be29-979a-0b86-b4c9-f4fb5a3fe08f@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 0/2] Compile out integrated
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
Cc: Jani Nikula <jani.nikula@intel.com>, Intel-gfx@lists.freedesktop.org,
 Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 10:31:10AM +0000, Tvrtko Ursulin wrote:
>
>On 02/02/2022 16:26, Lucas De Marchi wrote:
>>On Wed, Feb 02, 2022 at 10:26:46AM +0000, Tvrtko Ursulin wrote:
>>>
>>>On 01/02/2022 17:28, Lucas De Marchi wrote:
>>>>On Tue, Feb 01, 2022 at 07:09:14PM +0200, Jani Nikula wrote:
>>>>>On Tue, 01 Feb 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>>>On Tue, Feb 01, 2022 at 11:15:31AM +0000, Tvrtko Ursulin wrote:
>>>>>>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>>
>>>>>>>Quicky and dirty hack based on some old ideas. Thought 
>>>>>>>maybe the approach might
>>>>>>>interest the Arm port guys. But with IS_GEN_RANGE removed 
>>>>>>>easy gains are not so
>>>>>>>big so meh.. Maybe some more easy wins with IS_DISPLAY_VER 
>>>>>>>but I haven't looked
>>>>>>>into that side.
>>>>>>>
>>>>>>>3884664  449681    6720 4341065  423d49 i915.ko.tip
>>>>>>>3599989  429034    6688 4035711  3d947f i915.ko.noigp
>>>>>>
>>>>>>By these numbers probably it's hard to justify. Another 
>>>>>>thing to consider
>>>>>>is that it's very common to have on the same system both
>>>>>>integrated and discrete - doing this would remove at compile time any
>>>>>>chance of driving the integrated one.
>>>>>
>>>>>I guess the point was, the arm systems won't have integrated, and it's
>>>>>anyway going to be a separate build.
>>>>
>>>>so probably the focus and argument here should not be about size
>>>>reduction. From patch 1 I see:
>>>>
>>>>+config DRM_I915_INTEGRATED_GPU_SUPPORT
>>>>+       bool "Support integrated GPUs"
>>>>+       default y
>>>>+       depends on DRM_I915
>>>>+       help
>>>>+         Include support for integrated GPUs.
>>>>
>>>>If it's something that depends on arch rather than providing an
>>>>option in menuconfig, then I think it could be some interesting
>>>>investigation. However, I can't see how it would help with removing
>>>>some code paths in the driver (e.g. the clflush() calls we were talking
>>>>about in another patch series) since the code elimination would all
>>>>happen at link time.
>>>
>>>Clflush class of problems is yet another orthogonal set of problems.
>>>
>>>Yes, idea was that the Kconfig option would be selected by Arm, or 
>>>deselected by x86, whatever. But there is also a case for letting 
>>>it be user visible.
>>>
>>>In general, I thought at least, we should look into not 
>>>building/deploying binary code for irrelevant hardware on Arm 
>>>builds. If that is clear and agreeable then I think the approach 
>>>how to get there is really multi-pronged.
>>>
>>>1)
>>>What you are partly doing with "clflush" type series. Make Arm 
>>>relevant code paths actually compile on Arm.
>>
>>to be clear, the goal is to be more architecture independent
>>and this is being tested with arm64.
>>
>>>
>>>2a)
>>>What I sent in this series - it's simple/easy dead code 
>>>elimination from a single compilation unit.
>>>
>>>2b)
>>>*If* we resurrected GRAPHICS_VER check where "ver" is part of the 
>>>macro, eg. not doing "if (GRAPHICS_VER <=> N)" but "if 
>>>(GRAPHICS_VERN)", or "if IS_GRAPHICS_VER(N, FOREVER)", then the 
>>>same approach would be more effective.
>>>
>>>Because if N or range is the macro parameter, we can make it dead 
>>>code based on Kconfig.
>>
>>yes I remember that. But when it was done the IS_GRAPHICS_VER() was
>>already not much used. I doubt the handful places it was used in would
>>change much of the overall picture we had at that point.
>
>Right, I was referring to the time when N is inside the macro. Like 
>before IS_GEN(p, N) was replaced with GRAPHICS_VER, when N went 
>outside the macro.
>
>>>This is what I demonstrated few years ago by being able to compile 
>>>out ~3rd of a driver when selecting only execlists platforms, 
>>>AFAIR.
>>>
>>>And which is why I was a bit unhappy this was getting removed not 
>>>so long ago.
>>>
>>>3)
>>>Complex step is putting LTO into use to allow dead code 
>>>elimination between compilation units. Think:
>>>
>>>file1.c:
>>>RUNTIME_INFO->needs_blah = IS_PLATFORM && blah
>>>
>>>file2.c
>>>if (RUNTIME_INFO->needs_blah)
>>>  ..dead code eliminated by LTO only..
>>>
>>>Few years ago Andi Kleen had a proof of concept of KBuild LTO but 
>>>I don't know what is the status of that. If LTO can be enabled 
>>>then work from steps 2a&b automatically works much much better.
>>>
>>>4)
>>>If LTO is not there yet maybe see how to slightly refactor the 
>>>code so that we can completely drop compilation units from the 
>>>Makefile. Drop files like gt/intel_ring_submission.c, or similar 
>>>if we have or can create candidates.
>>
>>I think this is something we have to do and to go after. I think it's
>>more future-proof to organize the code to have a better separation of
>>platforms, instead of relying on the linker to do the dead code
>>elimination based on user selection.
>
>Yes, definitely high level refactor. I just think it can't be fully 
>done and some dead code elimination is cheap enough to have to handle 
>the remaining parts.
>
>>I'm fine with compiling out stuff on i915 right now because "this can
>>only and will ever (as far as we know) work on x86". I'm more reluctant
>>about adding a build option though. For the same reasons Jani mentioned
>>and that it suddenly may open the doors for a matrix of configuration
>>(e.g.  build with/without display, or rc6, or dsi, or
>>name-the-feature-you-dont-want).
>
>Yeah okay, I was not saying it absolutely needs to be user visible. 
>Just that it could be argued it could be. Think people building custom 
>kernels and selecting AMD CPU and having Intel discrete graphics.

maybe start with the non-user-visible:  make the config selection depend
on arch. Depending how it goes, we then allow it to be configurable
in future.

Lucas De Marchi

>
>Regards,
>
>Tvrtko

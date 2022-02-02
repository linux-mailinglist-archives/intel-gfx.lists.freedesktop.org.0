Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 527CE4A6EAD
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 11:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD2B10E5E1;
	Wed,  2 Feb 2022 10:26:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276ED10E5E2
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643797613; x=1675333613;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=I2sr1vOBikW7GD5dozmrrVvGtCShOzglHn7gq23bLxs=;
 b=ijsoB8+ryP3AwzRNHGHC08Z5VNEUJBu+/6EwJxREhrOFHN7JYSHK8gcz
 FCM6C6OvWhKCW/l68Ld8sNfzfz00DbZpZwltUvsjC9Gl8gkmMSI7lhlgs
 ekzrdXMV02PkkQ0QIByTX2EjneNRmqh72b0FfTPZy648CVF5MJbvcjBz4
 fKh3h+X/Rof0wFwi7hvKGC7zMgq8PlpWE5ksk3UDfXfOdIB6ScZAFSVj/
 B0PyTGVNhfk2CqTinyxAlzx1yNyqyfaZa/YjxibYmfPIYSah6g4xLkNnm
 XGS9cARdWI62g6EzXwie5/VNaQ58n4n3PRfHEBiG+Vspg5aYKOuzZ4jFr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="247656839"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="247656839"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:26:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="565941433"
Received: from dolandox-mobl1.ger.corp.intel.com (HELO [10.213.211.99])
 ([10.213.211.99])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:26:48 -0800
Message-ID: <0ef577a8-578e-22dd-c287-5223c21edcb7@linux.intel.com>
Date: Wed, 2 Feb 2022 10:26:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
 <20220201165515.xntdympc4n3pdhif@ldmartin-desk2> <87o83qtsxx.fsf@intel.com>
 <20220201172820.ckcxkt5g5xstfi5s@ldmartin-desk2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220201172820.ckcxkt5g5xstfi5s@ldmartin-desk2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Intel-gfx@lists.freedesktop.org, Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2022 17:28, Lucas De Marchi wrote:
> On Tue, Feb 01, 2022 at 07:09:14PM +0200, Jani Nikula wrote:
>> On Tue, 01 Feb 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Tue, Feb 01, 2022 at 11:15:31AM +0000, Tvrtko Ursulin wrote:
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> Quicky and dirty hack based on some old ideas. Thought maybe the 
>>>> approach might
>>>> interest the Arm port guys. But with IS_GEN_RANGE removed easy gains 
>>>> are not so
>>>> big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I 
>>>> haven't looked
>>>> into that side.
>>>>
>>>> 3884664  449681    6720 4341065  423d49 i915.ko.tip
>>>> 3599989  429034    6688 4035711  3d947f i915.ko.noigp
>>>
>>> By these numbers probably it's hard to justify. Another thing to 
>>> consider
>>> is that it's very common to have on the same system both
>>> integrated and discrete - doing this would remove at compile time any
>>> chance of driving the integrated one.
>>
>> I guess the point was, the arm systems won't have integrated, and it's
>> anyway going to be a separate build.
> 
> so probably the focus and argument here should not be about size
> reduction. From patch 1 I see:
> 
> +config DRM_I915_INTEGRATED_GPU_SUPPORT
> +       bool "Support integrated GPUs"
> +       default y
> +       depends on DRM_I915
> +       help
> +         Include support for integrated GPUs.
> 
> If it's something that depends on arch rather than providing an
> option in menuconfig, then I think it could be some interesting
> investigation. However, I can't see how it would help with removing
> some code paths in the driver (e.g. the clflush() calls we were talking
> about in another patch series) since the code elimination would all
> happen at link time.

Clflush class of problems is yet another orthogonal set of problems.

Yes, idea was that the Kconfig option would be selected by Arm, or 
deselected by x86, whatever. But there is also a case for letting it be 
user visible.

In general, I thought at least, we should look into not 
building/deploying binary code for irrelevant hardware on Arm builds. If 
that is clear and agreeable then I think the approach how to get there 
is really multi-pronged.

1)
What you are partly doing with "clflush" type series. Make Arm relevant 
code paths actually compile on Arm.

2a)
What I sent in this series - it's simple/easy dead code elimination from 
a single compilation unit.

2b)
*If* we resurrected GRAPHICS_VER check where "ver" is part of the macro, 
eg. not doing "if (GRAPHICS_VER <=> N)" but "if (GRAPHICS_VERN)", or "if 
IS_GRAPHICS_VER(N, FOREVER)", then the same approach would be more 
effective.

Because if N or range is the macro parameter, we can make it dead code 
based on Kconfig.

This is what I demonstrated few years ago by being able to compile out 
~3rd of a driver when selecting only execlists platforms, AFAIR.

And which is why I was a bit unhappy this was getting removed not so 
long ago.

3)
Complex step is putting LTO into use to allow dead code elimination 
between compilation units. Think:

file1.c:
RUNTIME_INFO->needs_blah = IS_PLATFORM && blah

file2.c
if (RUNTIME_INFO->needs_blah)
    ..dead code eliminated by LTO only..

Few years ago Andi Kleen had a proof of concept of KBuild LTO but I 
don't know what is the status of that. If LTO can be enabled then work 
from steps 2a&b automatically works much much better.

4)
If LTO is not there yet maybe see how to slightly refactor the code so 
that we can completely drop compilation units from the Makefile. Drop 
files like gt/intel_ring_submission.c, or similar if we have or can 
create candidates.

Regards,

Tvrtko

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 659424896CD
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 11:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4FB14A2C6;
	Mon, 10 Jan 2022 10:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EEA14A2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 10:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641812143; x=1673348143;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=L6vzz5ZUsix5HNwu0uGa9NzDKXPxz28SfCXyciLc9QA=;
 b=aRzAPGpa11BdQrrE8fc7HGGxweWwHELkiwd3p/PioQs2G6WXBxG+hPSh
 BTNRlEUUdO0jXUvsChczQF5yEnUdUWikcohHdenTG1kmhBrsTs7qq5cVp
 VmgjrI/o3y9aaTFa8GfUbJIVqEvU61dccWIV8nkpuNm6JcBuChBoXiQjv
 PNtBdpRqXiDcIZZ5R4VsKkfYCao5idEPn6S1opHDa2eMjbSAK/8exYw33
 j9vJz5DqS4MMqQSS8T4uaEQ0HF7zP+h+RkDgnnYXTMpGWIGcZR6gWVfjD
 Mdnt3Tt2YyrINDbj79a7yXrSI7W9ztqhg1NwaW3hz+yEHFqjSXl96U7Kv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243153499"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="243153499"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 02:55:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="690537779"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 02:55:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220107164605.bd5t6a2doe227mse@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220106230823.2791203-1-matthew.d.roper@intel.com>
 <20220106230823.2791203-2-matthew.d.roper@intel.com>
 <874k6fn7qf.fsf@intel.com>
 <20220107164605.bd5t6a2doe227mse@ldmartin-desk2>
Date: Mon, 10 Jan 2022 12:55:36 +0200
Message-ID: <871r1fc11z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 07 Jan 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Jan 07, 2022 at 12:46:48PM +0200, Jani Nikula wrote:
>>I still tell people to 1) split out register definitions to separate
>>patches, and 2) add macros for the entire feature and full contents for
>>each register, even if they remain unused.
>>
>>One of the main reasons is review economics. It's pretty easy to look at
>>a patch adding register contents, review it against the bspec and be
>>done with it. And while you have the right bspec page open, it only
>>takes a very short time to add and review the entire register, instead
>>of having to return to it later. A patch adding just the registers could
>>get reviewed and merged at v1. It's one less patch the developer has to
>>keep carrying and rebasing, and it's one less portion the reviewer has
>>to worry about.
>
> this failed multiple times though, so I'm on the other side of the fence
> and think this actually makes things worse. Main reasons is because we
> have several registers doing things like:
>
> 	#define BLA(idx)	REG_BIT(idx * 2 + 1)
>
> And it's easy to get this wrong when it was not tested. It may be for
> example that one phy or port doesn't follow the same logic.
> When I review code I prefer reviewing code people actually tested.
>
> It's less of an issue when it's a 1:1 map from bspec, but for a lot of
> registers we need just 1 or 2 bits, e.g. for workarounds. Being able to
> filter out workarounds we don't need because we don't even define the
> register/bit is also another con to defining the complete register in a
> separate patch.
>
>
> So from my POV, the cons outweigtht the pros.

Okay, let's not forget this part of the conversation, but let's also not
let this block the cleanup. We don't have to do a blanket removal of
unused stuff before splitting the file up, and we don't have to decide
how we how we approach this in the future before that either, i.e. let's
get the uncontroversial stuff merged.

>
>>
>>Overall it's about getting the easy stuff done and behind you first. And
>>that's a huge part of my whole approach to kernel development, and what
>>I try to tell others to follow.
>>
>>I also think the documentation aspect is still valid, and especially so
>>for older hardware. It may be fine to remove some of the accumulated
>>cruft, *after* the register macros have been split up to smaller files
>>by functionality. But I don't think it should be an indiscriminate mass
>>removal of macros. For example, I don't think I want any of the sideband
>>or VGA or PCI register macros removed.
>>
>>Bottom line, I don't mind adding or having unused register macros at
>>all. Heck, I'd be on board for switching to auto-generated register
>>macros with absolutely everything.
>
> if it can be generated.... Then we'd have some additional headers for
> the accessor functions that deal with index math to the to the right
> bits or the  right register instance.

Yeah, it's somewhat of an unicorn I guess.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

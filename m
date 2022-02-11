Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B943C4B24E0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 12:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72E310EAEE;
	Fri, 11 Feb 2022 11:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1879210EA7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 11:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644580509; x=1676116509;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MuekraLPRfOBacL87jW0B9M/97gm7SQRlolycYlVOZg=;
 b=k98Bh3XESIfNukR9OBvddKCG3jupkYnKJdgnF7c5Cw1f0Sy9pZ2sBEzR
 WoscjoVzRh3Ul6m/2nYJdanNCGTlcLvESnaBrnRbHSHQijF48Y49Pez6J
 KLQOOF76u4xPKQ8MDUWpc4Ec75I+iN5TMBGZ+USusDPscarICo/8VE6Ce
 mCFGUyoGdbUBCP7hkAXWp9O0IOsyiEBXUmrn8EuFXgyzgad3pX54QY+vh
 SUamcdA4H/6qPPCUReGrlk4FmWWy0z6HriwCodeYw3asqHTK1jPN8d7GU
 qroar3NZhR0Qg+Es7QC8gNIGvTIyA3K9tYnKW18uDWdB/LIHCs96eh+s8 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="313000214"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="313000214"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 03:55:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="483330711"
Received: from rriverox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.108])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 03:55:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211021510.202602-1-casey.g.bowman@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211021510.202602-1-casey.g.bowman@intel.com>
Date: Fri, 11 Feb 2022 13:55:02 +0200
Message-ID: <87sfsp7h49.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH v2 0/1] Splitting up platform-specific
 calls
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 10 Feb 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
> In this RFC I would like to ask the community their thoughts
> on how we can best handle splitting architecture-specific
> calls.
>
> I would like to address the following:
>
> 1. How do we want to split architecture calls? Different object files
> per platform? Separate function calls within the same object file?
>
> 2. How do we address dummy functions? If we have a function call that is
> used for one or more platforms, but is not used in another, what should
> we do for this case?
>
> I've given an example of splitting an architecture call
> in my patch with run_as_guest() being split into different
> implementations for x86 and arm64 in separate object files, sharing
> a single header.
>
> Another suggestion from Michael (michael.cheng@intel.com) involved
> using a single object file, a single header, and splitting various
> functions calls via ifdefs in the header file.
>
> I would appreciate any input on how we can avoid scaling issues when
> including multiple architectures and multiple functions (as the number
> of function calls will inevitably increase with more architectures).
>
> v2: Revised to use kernel's platform-splitting scheme.

I think this is overengineering.

Just add different implementations of the functions per architecture
next to where they are now, like I suggested before.

If we need to split them better later, it'll be a trivial undertaking,
and we'll be in a better position to do it because we'll know how many
functions there'll be and where they are and what they do.

Adding a bunch of overhead from the start seems like the wrong thing to
do.

BR,
Jani.





>
> Casey Bowman (1):
>   i915/drm: Split out x86 and arm64 functionality
>
>  drivers/gpu/drm/i915/Makefile                         |  3 +++
>  drivers/gpu/drm/i915/i915_drv.h                       |  7 ++-----
>  drivers/gpu/drm/i915/platforms/Makefile               |  8 ++++++++
>  .../arm64/include/platform/i915_hypervisor.h          | 11 +++++++++++
>  .../platforms/x86/include/platform/i915_hypervisor.h  |  9 +++++++++
>  5 files changed, 33 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/platforms/Makefile
>  create mode 100644 drivers/gpu/drm/i915/platforms/arm64/include/platform/i915_hypervisor.h
>  create mode 100644 drivers/gpu/drm/i915/platforms/x86/include/platform/i915_hypervisor.h

-- 
Jani Nikula, Intel Open Source Graphics Center

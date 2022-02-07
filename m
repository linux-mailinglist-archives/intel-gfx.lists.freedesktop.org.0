Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731424ABEC1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 14:02:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7CF10F6CF;
	Mon,  7 Feb 2022 13:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F82510F6C5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 13:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644238961; x=1675774961;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NKvlcDCGMXxSWfklJzx/G0cdtqenpZ+NQI8LvWj3vG0=;
 b=ebIDvKrrsNpX6OjHd0fAdudupnVowei/9c7w3WE6bWFWGRRfsfzmWVun
 YTJNkh/tJmf6PlqDLVZ6eS3G6t6g8/bmoIHrzE+SsHExrpxeWBdS6dfIE
 Ex01CcvtLj2yLJIN4zNh9WB2ClFtGA4I79UiHe8GhiNYknumU/ySIBI3F
 ufM9krYDCJKe7Tt/1Gl2WhcddKO1Hm0VEwlVIObEVsh5t+HUrD5AImf9c
 kw13AWlWSfqBqEw76ub2D4gqrFAC5sVVEk4ByFGFFhS5dhHZLCmJG6S6T
 H/r93LwL+05Cdcyy+OXA2wbd+SS9VxYevSsX7VSiCZwWlwkewul7fQViy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="229357544"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="229357544"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 05:02:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="772771698"
Received: from nbaca1-mobl.ger.corp.intel.com (HELO localhost) ([10.252.18.25])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 05:02:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220120221652.207255-1-casey.g.bowman@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
Date: Mon, 07 Feb 2022 15:02:32 +0200
Message-ID: <87mtj2rfrr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: lucas.demarchi@intel.com, daniel.vetter@intel.com, ville.syrjala@intel.com,
 michael.cheng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Jan 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
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

Personally I think the functionality is best kept organized by, well,
functionality, not by platform. Otherwise the platform files will
contain all sorts of code with the only common denominator being the
platform.

You're also likely to have static platform specific functions, which
would needlessly have to be made non-static if the split was by files.

I'd just put the implementations for different platforms next to each
other:

#if IS_ENABLED(CONFIG_X86)
...
#elif IS_ENABLED(CONFIG_ARM64)
...
#endif

Usually the declarations would be identical and there'd only be one,
without #ifs in the header.


BR,
Jani.

>
> Casey Bowman (1):
>   i915/drm: Split out x86 and arm64 functionality
>
>  drivers/gpu/drm/i915/Makefile              |  4 +++
>  drivers/gpu/drm/i915/i915_drv.h            |  6 +---
>  drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
>  drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
>  5 files changed, 87 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_platform.h
>  create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
>  create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c

-- 
Jani Nikula, Intel Open Source Graphics Center

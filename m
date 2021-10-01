Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B0A41EA37
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 11:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4006C6EDC2;
	Fri,  1 Oct 2021 09:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9212C6EDE1;
 Fri,  1 Oct 2021 09:57:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="247942789"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="247942789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 02:57:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="618989001"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 02:57:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Cc: dri-devel@lists.freedesktop.org, Masahiro Yamada <masahiroy@kernel.org>,
 Steven Price <steven.price@arm.com>, Andrzej Hajda <a.hajda@samsung.com>,
 intel-gfx@lists.freedesktop.org, "Sarvela\, Tomi P" <tomi.p.sarvela@intel.com>
In-Reply-To: <163308055415.8412.14215483004176995847@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211001074041.2076538-1-lucas.demarchi@intel.com>
 <163308055415.8412.14215483004176995847@build.alporthouse.com>
Date: Fri, 01 Oct 2021 12:57:13 +0300
Message-ID: <87bl49t6di.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove IS_ACTIVE
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 01 Oct 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Lucas De Marchi (2021-10-01 08:40:41)
>> When trying to bring IS_ACTIVE to linux/kconfig.h I thought it wouldn't
>> provide much value just encapsulating it in a boolean context. So I also
>> added the support for handling undefined macros as the IS_ENABLED()
>> counterpart. However the feedback received from Masahiro Yamada was that
>> it is too ugly, not providing much value. And just wrapping in a boolean
>> context is too dumb - we could simply open code it.
>> 
>> As detailed in commit babaab2f4738 ("drm/i915: Encapsulate kconfig
>> constant values inside boolean predicates"), the IS_ACTIVE macro was
>> added to workaround a compilation warning. However after checking again
>> our current uses of IS_ACTIVE it turned out there is only
>> 1 case in which it would potentially trigger a warning. All the others
>>   can simply use the shorter version, without wrapping it in any macro.
>> And even that single one didn't trigger any warning in gcc 10.3.
>> 
>> So here I'm dialing all the way back to simply removing the macro. If it
>> triggers warnings in future we may change the few cases to check for > 0
>> or != 0. Another possibility would be to use the great "not not
>> operator" for all positive checks, which would allow us to maintain
>> consistency.  However let's try first the simplest form though, hopefully
>> we don't hit broken compilers spitting a warning:
>
> You didn't prevent the compilation warning this re-introduces.
>
> drivers/gpu/drm/i915/i915_config.c:11 i915_fence_context_timeout() warn: should this be a bitwise op?
> drivers/gpu/drm/i915/i915_request.c:1679 i915_request_wait() warn: should this be a bitwise op?

Looks like that's a Smatch warning. The immediate fix would be to just
add the != 0 in the relevant places. But this is stuff that's just going
to get broken again unless we add Smatch to CI. Most people aren't
running it on a regular basis.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

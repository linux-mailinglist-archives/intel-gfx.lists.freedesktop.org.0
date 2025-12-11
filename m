Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF239CB52A4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 09:47:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09AA110E7AA;
	Thu, 11 Dec 2025 08:47:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VrZZqVhQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DB710E7B4;
 Thu, 11 Dec 2025 08:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765442830; x=1796978830;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kY2fH2Bgz0ibZh/dLPWCyEuuxqeDWxHZfJCi13za8BY=;
 b=VrZZqVhQKm1LPqLh2M5ZnUMdUiP8tx0OMVp00TB2mY4kP1NtrSQ/DiuF
 A2Xz32LFj7D7DY5l0FagVragNLsKOnB9WLAtigkJmxPJPSY1Ez2ePzWF0
 P1t0GGRCWTyHiYvLg/n+qDClHAcf5cQIPa+nWfXOTaSjsFupAJrs2P+Z7
 gn08xHU+opb2DiqILAjV3aeO+U/myycVb3/4zDbBIl98RJtWesGC7eitG
 llIiyfcZb2ls3CNC2UMmYgdhnbNib4f7VQLuqcNocMQ0qpkoR6KKFdgJW
 WRR3ae4fazsUAKXHJvnL0HqnImCNeFtCnpUoWCFw68C3W0YxEfjUU90yn Q==;
X-CSE-ConnectionGUID: /QLkW2H/TZ2C+oasAZiIMA==
X-CSE-MsgGUID: hRDnc4tsS9uK3JXzN1ovmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67307418"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67307418"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:47:09 -0800
X-CSE-ConnectionGUID: cX0YObMLQjqVjo9oM9YaiA==
X-CSE-MsgGUID: +z7CH/T6RvSjMAaJ7bRYUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201223747"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:47:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
In-Reply-To: <cb0c9201-74f9-43c5-8177-5b5b77851973@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209151319.494640-3-dev@lankhorst.se>
 <20251209151319.494640-4-dev@lankhorst.se>
 <f9641fa9298cf52efbde5d41014470f2355e3551@intel.com>
 <cb0c9201-74f9-43c5-8177-5b5b77851973@lankhorst.se>
Date: Thu, 11 Dec 2025 10:47:01 +0200
Message-ID: <e0ba6a112e0150731a23934109e1419d07e526e2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 10 Dec 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> Hey,
>
> Just needs a typo fixed, Matthew Brost also commented that the second I915 here should be PREEMPT-RT instead.

The commit message does not say what is being done here, and why.

"no need for backporting"?

"this is only useful for i915"?

*what* "doesn't compile with PREEMPT-RT enabled"?

Nobody's going to understand what any of this means if a bisect/blame
lands here a couple of years from now, even if it's an apparently simple
change.

BR,
Jani.

>
> Den 2025-12-10 kl. 09:56, skrev Jani Nikula:
>> On Tue, 09 Dec 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
>>> No need for backporting, this is only useful for i915,
>>> and it doesn't compile with I915 enabled.
>> 
>> Please elaborate. There's just riddles here.
>> 
>> BR,
>> Jani.
>> 
>>>
>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>>> index 5b41abe1c64d5..172c0062237eb 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>>> @@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>>>  	if (!HAS_LPE_AUDIO(display))
>>>  		return;
>>>  
>>> -	ret = generic_handle_irq(display->audio.lpe.irq);
>>> +	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>>>  	if (ret)
>>>  		drm_err_ratelimited(display->drm,
>>>  				    "error handling LPE audio irq: %d\n", ret);
>> 
>

-- 
Jani Nikula, Intel

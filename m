Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 762A998F83C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 22:51:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1411910E961;
	Thu,  3 Oct 2024 20:51:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FIpWgpqV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A395010E93A;
 Thu,  3 Oct 2024 20:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727988709; x=1759524709;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=LBkV1igHLjd/QK19AXaB4s6aPxulbol1VLMC252H5Rk=;
 b=FIpWgpqVyhYAVx1qKazhdnYhz+9YJlh9k1cgo6ro17ZszF5Kq8vUe6I9
 8hV3F3nyo3G7r4FqAjlWtQFm/m+Z8XpTKUy3l17+vKIjnTbbB3QJHNwE+
 H+QaSTd6LObudskHWpN/pf/v3R+dSsIkDfEHtp3fW/RS0HLZSawnvW9ov
 JEd4hc6T1DpI0EnnRJy4Hi5tXPghFfrO94wo5AxKQB1/cIzmjbmaltW8N
 odFZCZcysxoouHGS6P/H2bzno4HQ0Pj8OIU9uCgTBoQyfX7LzfLdFvYzC
 UEHXZtYiQJklT7c+HJAcueEUyR1AlN7cSynhRXuYFxRBgJ4AuuaEI9WPu w==;
X-CSE-ConnectionGUID: yeIwrmezSQuUzbeN4JsYQw==
X-CSE-MsgGUID: 2WtNffaHQvu2ciykMhEbfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="14823421"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="14823421"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 13:51:48 -0700
X-CSE-ConnectionGUID: t3W3UMKvQnSmeeaQnuqBPg==
X-CSE-MsgGUID: N/ooMrpWSsq/xomyYlZ1QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="74722059"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 [10.245.245.6]) ([10.245.245.6])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 13:51:47 -0700
Message-ID: <92445a5a-3e00-43e1-916a-8bac9058a7cd@linux.intel.com>
Date: Thu, 3 Oct 2024 22:51:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] drm/i915/display: Use async flip when available
 for initial plane config
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
 <87plohrxez.fsf@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <87plohrxez.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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



Den 2024-10-03 kl. 17:58, skrev Jani Nikula:
> On Thu, 03 Oct 2024, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
>> I'm planning to reorder readout in the Xe sequence in such a way that
>> interrupts will not be available, so just use an async flip.
>>
>> Since the new FB points to the same pages, it will not tear. It also
>> has the benefit of perhaps being slightly faster.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index fdb141cfa4274..73a3624e34098 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2800,7 +2800,7 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
>>   		to_intel_plane_state(plane->base.state);
>>   	enum plane_id plane_id = plane->id;
>>   	enum pipe pipe = crtc->pipe;
>> -	u32 base;
>> +	u32 base, plane_ctl;
>>   
>>   	if (!plane_state->uapi.visible)
>>   		return false;
>> @@ -2814,7 +2814,16 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
>>   	if (plane_config->base == base)
>>   		return false;
>>   
>> +	/* Perform an async flip to the new surface. */
>> +	plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));
>> +	plane_ctl |= PLANE_CTL_ASYNC_FLIP;
>> +
>> +	intel_de_write(i915, PLANE_CTL(pipe, plane_id), plane_ctl);
>>   	intel_de_write(i915, PLANE_SURF(pipe, plane_id), base);
>>   
>> -	return true;
>> +	if (intel_de_wait_custom(i915, PLANE_SURFLIVE(pipe, plane_id), ~0U, base, 0, 40, NULL) < 0)
> 
> Why not just intel_de_wait()?
> 
> BR,
> Jani.
Yes, I overlooked that when I was browsing through intel_de.h :-)

Can respin if we agree on the direction.

Cheers,
~Maarten

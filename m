Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CF16F6839
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 11:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365CA10E408;
	Thu,  4 May 2023 09:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587F110E408
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 09:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683192192; x=1714728192;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KueCf8bme1c/d3kbNWCT+QXQ2TOJcpfW7hdDIFgJ7Kg=;
 b=AMiXhpb7+zvzfFg4YvEtSQX5GL3KseLrxK543WkP5HZlT+4LDtrgHzD5
 ZvGdgRdBKcdHVBzP25qmE3sGyLG3XUgAzEz5QGtbPngXZAJm3hjXOmDyA
 rRb11j/e7oh9dwDTVCpQNGrnTdRB4DOioDc19tgniYYoVA+CNPMKxTa5V
 +svFBQH8ipRZmRAnBgzqL4SFOL72/3L5zAVmzaCRgKvNuoUuA+C16gJ5V
 8VtppNexeJIYa5VnrgqPjj0cUBcee4M7Z7L4WN3ezyzRPapX1fWQV+SV6
 NU/XyByeAMx9DQiwiAg6hktyGTHJGjnb/hGUt42KJLy05La+x/Cp59Hcb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="333254965"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="333254965"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:20:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="727501976"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="727501976"
Received: from tferlin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.212])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:20:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>, mchehab@kernel.org
In-Reply-To: <ZFJuoS3zyrYpWSrQ@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1683041799.git.jani.nikula@intel.com>
 <a2a81f9ee78591def0534c81a63dbc652c44bbd3.1683041799.git.jani.nikula@intel.com>
 <ZFJuoS3zyrYpWSrQ@rdvivi-mobl4>
Date: Thu, 04 May 2023 12:20:41 +0300
Message-ID: <87fs8czc46.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 10/24] drm/i915/gem: fix function pointer
 member kernel-doc
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

On Wed, 03 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Tue, May 02, 2023 at 06:37:27PM +0300, Jani Nikula wrote:
>> You can't document function pointer member as functions.
>>
>> drivers/gpu/drm/i915/gem/i915_gem_region.h:25: warning: Incorrect use of kernel-doc format:          * process_obj - Process the current object
>> drivers/gpu/drm/i915/gem/i915_gem_region.h:35: warning: Function parameter or member 'process_obj' not described in 'i915_gem_apply_to_region_ops'
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_region.h | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.h b/drivers/gpu/drm/i915/gem/i915_gem_region.h
>> index 2dfcc41c0170..8a7650b27cc2 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.h
>> @@ -22,9 +22,7 @@ struct i915_gem_apply_to_region;
>>   */
>>  struct i915_gem_apply_to_region_ops {
>>  	/**
>> -	 * process_obj - Process the current object
>> -	 * @apply: Embed this for private data.
>> -	 * @obj: The current object.
>> +	 * @process_obj: Process the current object
>
> hmm...
> looking to the process_obj itself I wonder if we don't have a better way
> to document these function pointer arguments that could be acceptable
> instead of simply removing them.

The alternative is pretty much to document the parameters in plain text
or some mild rst formatting that's not specifically kernel-doc parameter
documentation.

BR,
Jani.

>
> +Mauro in case he has some idea.
>
> and the declaration for reference:
>
>  int (*process_obj)(struct i915_gem_apply_to_region *apply,
>                            struct drm_i915_gem_object *obj);
>
>>  	 *
>>  	 * Note that if this function is part of a ww transaction, and
>>  	 * if returns -EDEADLK for one of the objects, it may be
>> --
>> 2.39.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center

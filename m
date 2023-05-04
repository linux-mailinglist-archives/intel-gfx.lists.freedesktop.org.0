Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 110E86F785B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 23:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA0910E1D4;
	Thu,  4 May 2023 21:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E171910E1D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 21:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683237214; x=1714773214;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QjvtZgutRTs3bCS7CwcKP0jEVEECk7gGhRIQ4xjKO10=;
 b=E0bo3OUelCsYSqxRzFfH9wAz+eWbnYOLpS880lcdoonFjbQm28yHe6RD
 LQaoooOA0FeVx2o9qW9EE2rI0e1SEcV4A+bDg8B3/boO8R7T96xHUiK1t
 xFFO+/7HOnLk3BE3ypMcKDgAZYlwVsH9S5ebbXJt8uw2JD6sQs7XYPIOX
 2qPJovfBXxdDOnaNwe3NvKFb8V5tlvXTHoYTNJZI8C+pd0XhA9mk5Dyvo
 5KT8zTfXWlC5i7KzFqtO3f05ETDe2dJnVtrpJTpetQaUwTUB8p99KbO8H
 acSxbaZWWupkYGycZZMSZs8kk3KykgTXTQSPmimhPWKyji9/hM3+FAy9h Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="347883730"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="347883730"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:53:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="647522328"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="647522328"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost) ([10.252.60.74])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 14:53:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZFPHUy+rpYXex/2M@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1683041799.git.jani.nikula@intel.com>
 <a2a81f9ee78591def0534c81a63dbc652c44bbd3.1683041799.git.jani.nikula@intel.com>
 <ZFJuoS3zyrYpWSrQ@rdvivi-mobl4> <87fs8czc46.fsf@intel.com>
 <ZFPHUy+rpYXex/2M@rdvivi-mobl4>
Date: Fri, 05 May 2023 00:53:28 +0300
Message-ID: <874jorzrtz.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, mchehab@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 04 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Thu, May 04, 2023 at 12:20:41PM +0300, Jani Nikula wrote:
>> On Wed, 03 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
>> > On Tue, May 02, 2023 at 06:37:27PM +0300, Jani Nikula wrote:
>> >> You can't document function pointer member as functions.
>> >>
>> >> drivers/gpu/drm/i915/gem/i915_gem_region.h:25: warning: Incorrect use of kernel-doc format:          * process_obj - Process the current object
>> >> drivers/gpu/drm/i915/gem/i915_gem_region.h:35: warning: Function parameter or member 'process_obj' not described in 'i915_gem_apply_to_region_ops'
>> >>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/gem/i915_gem_region.h | 4 +---
>> >>  1 file changed, 1 insertion(+), 3 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.h b/drivers/gpu/drm/i915/gem/i915_gem_region.h
>> >> index 2dfcc41c0170..8a7650b27cc2 100644
>> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.h
>> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.h
>> >> @@ -22,9 +22,7 @@ struct i915_gem_apply_to_region;
>> >>   */
>> >>  struct i915_gem_apply_to_region_ops {
>> >>  	/**
>> >> -	 * process_obj - Process the current object
>> >> -	 * @apply: Embed this for private data.
>> >> -	 * @obj: The current object.
>> >> +	 * @process_obj: Process the current object
>> >
>> > hmm...
>> > looking to the process_obj itself I wonder if we don't have a better way
>> > to document these function pointer arguments that could be acceptable
>> > instead of simply removing them.
>> 
>> The alternative is pretty much to document the parameters in plain text
>> or some mild rst formatting that's not specifically kernel-doc parameter
>> documentation.
>
> :( something that could be improved in the overall infra since it is a useful
> info.

I don't disagree per se, but I wouldn't touch kernel-doc the script with
a ten-foot pole anymore.

>
> Anyway, let's move with this then:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks,
Jani.

>
>
>> 
>> BR,
>> Jani.
>> 
>> >
>> > +Mauro in case he has some idea.
>> >
>> > and the declaration for reference:
>> >
>> >  int (*process_obj)(struct i915_gem_apply_to_region *apply,
>> >                            struct drm_i915_gem_object *obj);
>> >
>> >>  	 *
>> >>  	 * Note that if this function is part of a ww transaction, and
>> >>  	 * if returns -EDEADLK for one of the objects, it may be
>> >> --
>> >> 2.39.2
>> >>
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center

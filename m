Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9F313C27E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 14:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A1516E9D5;
	Wed, 15 Jan 2020 13:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8604E6E9D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 13:20:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 05:13:04 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="226080148"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 05:13:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87sgkhj96b.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1575560168.git.jani.nikula@intel.com>
 <600101c8433e7caf9303663fc85a9972fa1f05e7.1575560168.git.jani.nikula@intel.com>
 <157908269569.5559.17250369129638651910@skylake-alporthouse-com>
 <87sgkhj96b.fsf@intel.com>
Date: Wed, 15 Jan 2020 15:12:59 +0200
Message-ID: <87imlckgmc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/params: add i915 parameters to
 debugfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Jan 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 15 Jan 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> Quoting Jani Nikula (2019-12-05 15:43:40)
>>> Add a debugfs subdirectory i915_params with all the i915 module
>>> parameters. This is a first step, with lots of boilerplate, and not much
>>> benefit yet.
>>
>> Right, creates a mirror [more or less] of /sys/module/i915/parameters. I
>> probably would have used parameters/ rather than i915_params/, but that
>> is immaterial.
>
> I guess I used i915_ because it's sort of a shared namespace with drm
> core, which in itself is, IMO, a historical mistake. Perhaps there
> should've been a driver/ debugfs directory for driver specific debug
> files.
>
> What if someone wanted to add a drm core level parameters/ file or
> directory? Would be kind of embarrassing to say, don't do that, i915
> already uses it...
>
>>> 
>>> This will result in a new device specific debugfs directory at
>>> /sys/kernel/debug/dri/<N>/i915_params duplicating the module specific
>>> sysfs directory at /sys/module/i915/parameters/. Going forward, all
>>> users of the parameters should use the debugfs, with the module
>>> parameters being phased out.
>>> 
>>> Add debugfs permissions to I915_PARAMS_FOR_EACH(). This duplicates the
>>> mode with module parameter sysfs, but the goal is to make the module
>>> parameters read-only initial values for device specific parameters.
>>> 
>>> 0 mode will bypass debugfs creation. Use it for verbose_state_checks
>>> which will need special attention in follow-up work.
>>
>> The patch does what you say, hopefully a local entropy maxima.
>> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
>
> Many thanks,
> Jani.

And pushed both to dinq, thanks again for the review.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

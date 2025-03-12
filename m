Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D804CA5DAA9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 11:43:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C06710E769;
	Wed, 12 Mar 2025 10:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGC8P7Xo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34FD10E765;
 Wed, 12 Mar 2025 10:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741776228; x=1773312228;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C/gtcDUlbD+U1LyUt9QcjQY4uW5EP2eaLvrXFN3keqE=;
 b=kGC8P7XoUC93loXHTbSLEqN+0vazfYv20wQfcGrMPDsBzwuWyx4QIkU8
 shCCdqT0KuHfF4nNIND2lH9AVdTL9u4GVu4Me1+W382KZ5ux3B1XiR7DR
 wotQX678v1dcBLYHxOvISWBlo+4EZSBm2C7J90zmchjX8qZ81NiMN/o9t
 zpuzCkShA7GYiJsUIIgXrYjf0mjlUhAY4xj8BFzDI9YFpxa5CdauOwNJ1
 TGwa5o/VEyBm12I6D6Dz+tvxc11gRuIEPLRqYUVBGpuHV2y8gMKY3eEem
 Se1h2BRXDqi8eMgAlawlAgrfX3uAQIZ2ovfXVqVdJ4HmLlN3xwBFsd7zJ w==;
X-CSE-ConnectionGUID: sUX6XjkWQRycsV6rZdtIvw==
X-CSE-MsgGUID: jho2KktyRJC8ZfbF+9fA0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53472769"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53472769"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 03:43:47 -0700
X-CSE-ConnectionGUID: XpkSL1gwRvOcZ913SIYcWQ==
X-CSE-MsgGUID: vxMj3dNcSD2H7Ynzn9rB/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="125664955"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.23])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 03:43:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 4/6] drm/i915/display: convert to display runtime PM
 interfaces
In-Reply-To: <Z9CghEcsFEmCPipt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1741694400.git.jani.nikula@intel.com>
 <9888586a1e2b479ddef6519818bdb170f7b037d2.1741694400.git.jani.nikula@intel.com>
 <Z9CghEcsFEmCPipt@intel.com>
Date: Wed, 12 Mar 2025 12:43:42 +0200
Message-ID: <87msdqfs0x.fsf@intel.com>
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

On Tue, 11 Mar 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Mar 11, 2025 at 02:05:38PM +0200, Jani Nikula wrote:
>> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> -	is_enabled = intel_display_power_well_is_enabled(display,
>> -							 power_well_id);
>> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>> +	with_intel_display_rpm(display)
>> +		is_enabled = intel_display_power_well_is_enabled(display,
>> +								 power_well_id);
>>  
>
> looking this here... I really dislike the 'with_' macro...
> I really prefer the explicit get and put, even with the ref_tracker
> declaration.

We might consider defining our own guard classes for runtime PM and
other things, and use scoped_guard() and guard() with them.

Something like:

DEFINE_GUARD(display_rpm, struct intel_display *, intel_display_rpm_get(_T), intel_display_rpm_put(_T))

And the above code would become:

	scoped_guard(display_rpm, display) {
		// ...
	}

which is already gaining a lot of traction in kernel:

$ git grep scoped_guard | wc -l
527

It's still magic, but at least it's kernel common magic, not our own.

Additionally, you could use:

	guard(display_rpm)(display);

which automatically releases the reference when going out of scope.

I'm not quite sure how to plug that into the ref_tracker, though, so
need to give it some more thought.

I sent an RFC about using guard() and scoped_guard() for HDCP mutexes
[1] to demonstrate this with the pre-defined mutex guard class.

[1] https://lore.kernel.org/r/20250224101428.204519-1-jani.nikula@intel.com

> But well, not a blocker:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks,
Jani.


-- 
Jani Nikula, Intel

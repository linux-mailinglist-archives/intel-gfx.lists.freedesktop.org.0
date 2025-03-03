Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48705A4BE83
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D8D10E3CD;
	Mon,  3 Mar 2025 11:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nAQVISJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ADD08908B;
 Mon,  3 Mar 2025 11:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001348; x=1772537348;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KUiKU/RPTj3hqYDr80Ff+w8pTMDfmBqEHmeMnI4ClD0=;
 b=nAQVISJR8TQiMhIdU+BRkHdV3ip9vLMXl1jUoStNAOS0OEKkZLIl0ZPY
 sh8Tj5PWA2H3+CRL7H4+LJ2Tcy4nnc0cra1/2KUWYrMlIraYNgRNMk+az
 IOYbz6i7TgyJbUgRtmSaZBRV0ooKTbgepGA6UDPL7A00gYBqmIvZHduBu
 pC/KnrNYANEruoqeWIG/8JyJFhI8/vr4wsTk5HTu8wdbK6bXpmsBRukS8
 eDtu8Ft72Rnz4zQqnXJoXS/wsU6gscn3V3MM1CUZ2hYne0CTAsCopYd3a
 E+8MKDclb96nd0AfWZTiGunFKTkqyisy3H2G2yyWShUkwY0MC///caw8y A==;
X-CSE-ConnectionGUID: xLtDv952TuO+dIHWQmHi0g==
X-CSE-MsgGUID: QX9Zd8PHQiupv1w3VGRXbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41725300"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41725300"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:29:07 -0800
X-CSE-ConnectionGUID: /DWXHT4ISLSFIET8FMtDAg==
X-CSE-MsgGUID: zuqJFAmvQ4unZ8efHY4c1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118679851"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:29:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 6/8] drm/i915/reset: move gt related stuff out of
 display reset
In-Reply-To: <20250226234611.GO4460@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1740481927.git.jani.nikula@intel.com>
 <3af6452fb882a17279018c1f1516545634136139.1740481927.git.jani.nikula@intel.com>
 <20250225203512.GK4460@mdroper-desk1.amr.corp.intel.com>
 <87seo13s9b.fsf@intel.com>
 <20250226234611.GO4460@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 03 Mar 2025 13:29:02 +0200
Message-ID: <87bjui1hfl.fsf@intel.com>
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

On Wed, 26 Feb 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Wed, Feb 26, 2025 at 12:38:40PM +0200, Jani Nikula wrote:
>> On Tue, 25 Feb 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
>> > On Tue, Feb 25, 2025 at 01:14:20PM +0200, Jani Nikula wrote:
>> >> Move the checks for whether display reset is needed as well as
>> >> I915_RESET_MODESET flag handling to gt side of things.
>> >> 
>> >> Cc: Matt Roper <matthew.d.roper@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  .../drm/i915/display/intel_display_reset.c    | 15 --------------
>> >>  drivers/gpu/drm/i915/gt/intel_reset.c         | 20 +++++++++++++++++++
>> >>  2 files changed, 20 insertions(+), 15 deletions(-)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
>> >> index b7962f90c21c..362436cd280f 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
>> >> @@ -37,15 +37,6 @@ void intel_display_reset_prepare(struct intel_display *display)
>> >>  	if (!HAS_DISPLAY(display))
>> >>  		return;
>> >>  
>> >> -	/* reset doesn't touch the display */
>> >> -	if (!intel_display_reset_test(display) &&
>> >> -	    !gpu_reset_clobbers_display(display))
>> >> -		return;
>> >> -
>> >> -	/* We have a modeset vs reset deadlock, defensively unbreak it. */
>> >
>> > Doesn't this comment more accurately apply to the 'if' condition below
>> > rather than to the flag updates and wakeup we do before that?  Assuming
>> > I'm understanding correctly, it seems like the comment should stay here
>> > and not move to the other file --- saying "We have a ... deadlock" is
>> > only true if we still have a pending pin after we've done that other
>> > stuff.  The unbreaking part (by wedging) is still located here too.
>> 
>> I'm... not sure.
>> 
>> Commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead
>> of i915_sw_fence") seems relevant. We no longer have anyone waiting on
>> I915_RESET_MODESET, and I think we could probably remove the bit from
>> reset flags altogether, and handle this locally in
>> intel_gt_reset_global(). Right?
>
> Yeah, I believe you're right.

So I modified the approach again [1]. Sorry, and thanks for bearing with
me!

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1741001054.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel

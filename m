Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0E190D494
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 646DB10E6A7;
	Tue, 18 Jun 2024 14:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fPiY35GU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B2510E6A7;
 Tue, 18 Jun 2024 14:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720584; x=1750256584;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DDNP4QXQZtfYniMBUu0lKauH0P4hOOaP2bIwKgoJFeA=;
 b=fPiY35GUGF3q75csbfp7P6PeUV0IzfpPXGvvA9+RZ4SrDBQdSOEgKBDb
 ii+91KbMQbDO7bSktuYRetbB3R2ueJbpTjqyfRH3cFCV1pgcqECG6VNJE
 1FC8gnu4LgQ1BX0GEHBmwuW+zlQWiyKJ6Eox/ZQNkAYsqY199fs1FItE9
 GrH2cQfP3IUYoxhD+h4qPZZJHVmegllo30XMpBGU0b9m2T9SAd6E+qQBq
 9i1rKJ/SRB71kXDad9NzkumdL55CtQIhKZ8uOA9V8cn6inTU4ZqycxV2P
 lrN6rjGYYBdZLcoZBQY0G0MWLoXLuHGDcm8SfsGvi9GHxktvoYvvEvGm/ w==;
X-CSE-ConnectionGUID: YqyjmcypTHymN2hYTMRlMQ==
X-CSE-MsgGUID: VlNjfz+IR1mKRVTqN/JFpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15365249"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15365249"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:03 -0700
X-CSE-ConnectionGUID: jZZ/T5vUS/mE/9+Z6Naubw==
X-CSE-MsgGUID: 4vTHfwzVS+yI9HHMVjIllA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41495443"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 0/6] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Date: Tue, 18 Jun 2024 17:22:50 +0300
Message-Id: <cover.1718719962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Long story short, we'll need to identify platforms in display code using
some other way than i915 core IS_<PLATFORM>() macros if we ever want to
make a strict separation between the display and non-display parts.

I tossed some ideas around (see the bottom of this mail), Lucas liked
something similar to what I have here. Essentially with this, you can
replace platform checks like IS_TIGERLAKE(i915) with
display->is.TIGERLAKE and subplatform checks like IS_RAPTORLAKE_S(i915)
with display->is.ALDERLAKE_S_RAPTORLAKE_S.

It would be possible to drop the ALDERLAKE_S or "parent" platform part
there, but I think it's useful in many cases to be explicit it's a
subplatform we're talking about.

It's also possible to convert all of this to lowercase if desired,
i.e. display->is.tigerlake and display->is.alderlake_s_raptorlake_s.

There's one more wrinkle I didn't address; currently IS_HASWELL_ULT()
and IS_BROADWELL_ULT() also match the ULX variants. This is not the case
here yet.

Thoughts?

BR,
Jani.


void foo(void)
{
	/*
	 * Examples with a platform check (Tigerlake) and a subplatform check
	 * (Alderlake S subplatform Raptorlake S).
	 */

	/*
	 * is_<platform>(display). Same as i915 core, but lowercase.
	 *
	 * Pros:
	 * - Easy to convert
	 * - Short
	 *
	 * Cons:
	 * - Need to keep defining new macros for new platfoms and subplatforms
	 */
	if (is_tigerlake(display) || is_alderlake_s_raptorlake_s(display)) {
	}

	/*
	 * is_platform(display, <platform>) check.
	 *
	 * Alternatively is_plat() or is_display() or something else?
	 *
	 * Pros:
	 * - Can be made to handle both platforms and subplatforms by
	 *   renumbering subplatforms enum
	 * - No need to define new macros for new platforms
	 *
	 * Cons:
	 * - A bit long
	 */
	if (is_platform(display, INTEL_DISPLAY_TIGERLAKE) ||
	    is_platform(display, INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S)) {
	}

	/*
	 * An is_platform() with a macro wrapper to abbreviate param.
	 *
	 * Pros:
	 * - Shorter
	 *
	 * Cons:
	 * - Throws off cscope and gnu global
	 */
	if (is_platform(display, TIGERLAKE) ||
	    is_platform(display, ALDERLAKE_S_RAPTORLAKE_S)) {
	}

	/*
	 * Functions to return platform/subplatforms.
	 *
	 * Pros:
	 * - No need to define new macros for new platforms
	 *
	 * Cons:
	 * - Long
	 * - Need separate checks for platform/subplatform
	 */
	if (intel_platform(display) == INTEL_DISPLAY_TIGERLAKE ||
	    intel_subplatform(display) == INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S) {
	}

	/*
	 * Initialize bitfields in display according to platform/subplatform
	 *
	 * Pros:
	 * - Really short
	 * - Does not pollute namespace with is_something
	 *
	 * Cons:
	 * - Pollutes top level struct intel_display
	 * - Kind of belongs in display device or runtime info, but that would
	 *   again be too long to be helpful
	 */
	if (display->is_tigerlake || display->alderlake_s_raptorlake_s) {
	}
}


Jani Nikula (6):
  drm/i915/display: use a macro to initialize subplatforms
  drm/i915/display: use a macro to define platform enumerations
  drm/i915/display: join the platform and subplatform macros
  drm/i915/display: add "display is" structure with platform members
  drm/i915/display: add "is" member to struct intel_display
  drm/i915/display: remove the display platform enum as unnecessary

 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   |  79 ++++++---
 .../drm/i915/display/intel_display_device.h   | 165 +++++++++---------
 3 files changed, 136 insertions(+), 111 deletions(-)

-- 
2.39.2


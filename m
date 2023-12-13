Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 155A4810DC5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC8410E25D;
	Wed, 13 Dec 2023 09:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2BB410E25D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702461493; x=1733997493;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=yfAB34sglpR6EU8P0Ia7CUvAPf/kvPkwikYlbDxa6vY=;
 b=C18POIwxaz8IE1ZHMdTGSmoYhC4CqZwR4SpfTQEffxKu6NOeQT1xoYwY
 B8qIUb8GQvO4MEQvUMPD//aorQtGYFeSoCYh8Mactz0cfepAJGlPiuEnD
 Q+m/6nkvHsgewRawNBrJjavtFzKEJ9cMv9o7C6/nJ37x7i9UhfD1RLjOz
 h5rCO6LkDC0wqQyYnHXPJlO21Lb1T5pQ5y0wmXhI+ygkoTuJ25Yci/TSw
 63vRGiHy718LYgsmnbxLv0ueeMvjWJ0C7o7CzsvQF2MoGvZybVXdCGv8X
 yzFtj1/xUEk0vodIdji6qnj6nI3F8LrubZUepelZ1TVfLnXg7dVd04Fan A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="426066146"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="426066146"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:58:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897271633"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="897271633"
Received: from oostoia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.15])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:58:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 0/2] Enable Darkscreen Feature
In-Reply-To: <20231213090641.1153030-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231213090641.1153030-1-nemesa.garg@intel.com>
Date: Wed, 13 Dec 2023 11:58:08 +0200
Message-ID: <87sf46whjj.fsf@intel.com>
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

On Wed, 13 Dec 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
> The logic checks for any black screen at pipe level and
> upon such detection prints error. Darkscreen compares the
> pixels with the compare value(0x00 - black) for the detection
> purpose. This feature can be enables/disabled through debugfs.

This does not address the feedback I've given previously. Alas, it
wasn't on intel-gfx, so I'm copy-pasting it here:

> IGT patches https://patchwork.freedesktop.org/series/125880/ .
> Kernel patches https://patchwork.freedesktop.org/series/125563/ .

The current IGT implementation proposal does this:

 + igt_set_dark_screen_detection(data.drm_fd, pipe, true);
 + test_read_crc(&data, pipe, output, tests[i].flags);
 + igt_set_dark_screen_detection(data.drm_fd, pipe, false);

It *looks* nice. But the dark screen detection is *not* reported during
or after test_read_crc(). With the current kernel implementation, only
the dark screen enable checks if there's a dark screen during enable,
and that's it. The above checks what the state was before.

The kernel and the IGT parts don't work together. You need to come up
with a plan how the hardware feature can be used to our benefit. This
falls short, even for the first phase.

The detection is sticky, so you could fathom enabling it, and checking
later if dark screen has happened during testing. But if you enable it
before you have something on screen, you'll surely flag a dark screen
detection before you've even started the test. Right?

You need to have an idea how it's going to be used in a test case where
everything is disabled in the beginning.


BR,
Jani.


>
> Nemesa Garg (2):
>   drm/i915/display: Add support for darskscreen detection
>   drm/i915/display: Add darkscreen debugfs entry under crtc
>
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 131 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   |  26 ++++
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/i915_reg.h               |   8 ++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  7 files changed, 171 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

-- 
Jani Nikula, Intel

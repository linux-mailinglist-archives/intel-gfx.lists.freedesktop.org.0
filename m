Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4241FC4C38E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 09:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF29D10E4FB;
	Tue, 11 Nov 2025 08:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EPb8J3vV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00CF310E504;
 Tue, 11 Nov 2025 08:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762848079; x=1794384079;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ndt2VmTsrdZBqIE5PPd67OOZK7+vS6hKkjpnv+QczYU=;
 b=EPb8J3vVVHXX6isYc7H4Di0UNsEJYEpGFQ0iRNdc72jzWdXRQBPmu/Bi
 Wi9ks1yAMKpbzFA0KKyrquzreMCOzWqXmSpKIU6jNCMCnOeUTuJoQ0Ita
 fWZo6wbAyE2sEORHA7odxBmUIzeZ5AoUGJ1wJYTe0Or74jsNwrOIG4Fmd
 nnMIfX34XwiJ6LRF62fT1QfEZlm45YCA2WCgQWD6aGvkFvcQjeskzd3MD
 XhOGN1c5nJJV3ft5TUUTOiWfRUOBLXuqBX8nbjlQ+tSDfWb13NU7yUx0f
 kXqBaTA9W5b6hiIODAo9yT5ZAjBjRthOx+8MMNnyq0Tl1szSTKeneZmjY A==;
X-CSE-ConnectionGUID: fUwcqb4/QPOc06WlSMTuHQ==
X-CSE-MsgGUID: 6u4TCQbnQ2qSQw9bmG1yIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64823294"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64823294"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 00:01:18 -0800
X-CSE-ConnectionGUID: ZZUsAlGLTvmqN8kCsaz9fw==
X-CSE-MsgGUID: DYTr7gYxTWuKEH64iuStXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193282768"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 00:01:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/16] drm/i915/de: Register polling cleanup
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
Date: Tue, 11 Nov 2025 10:01:14 +0200
Message-ID: <72502cbc1d1587e3a2671a8f84bae8a441b67908@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 10 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Clean up the register polling stuff:
> - rename the current wait stuff to
>   intel_de_wait_{,for_set,for_clear}_ms()
> - introduce intel_de_wait_{,for_set,for_clear}_us()
> - nuke intel_de_wait_custom()
> - change the wakelock stuff to use _fw() instead of
>   hand rolling yet another level of register accessors
> - a few other minor cleanups
>
> After this it should be fairly easy to switch over to
> poll_timeout_us().

Overall the series looks fine.

Acked-by: Jani Nikula <jani.nikula@intel.com>

since Suraj already did the detailed review.

One questions remains unanswered, and I guess I'll have to wait for
follow-up to see the answer. I really *really* dislike how the i915
variants are somewhat ambiguously atomic, i.e. atomic when slow timeout
is 0, and the xe wrappers replicate that behaviour. xe_mmio_wait32() has
atomic as parameter.

I would like the atomic variants to be explicit, and separate. Similar
to poll_timeout_us() and poll_timeout_us_atomic(). You immediately know
from the call whether you're doing the right thing or not. And that
really should not directly depend on the timeout length. Since you plan
on using the generic poll helpers, I presume this will propagate to the
register polling helpers.

Since we do a lot of non-atomic millisecond waits, I guess it's worth
having the _ms variants, although like I said before, I'd kind of like
going for _us all over the place. But no big deal, in the end the _ms
variants can be trivial wrappers on the non-atomic _us ones.

BR,
Jani.

>
> Ville Syrj=C3=A4l=C3=A4 (16):
>   drm/i915/de: Implement register waits one way
>   drm/i915/de: Have intel_de_wait() hand out the final register value
>   drm/i915/de: Include units in intel_de_wait*() function names
>   drm/i915/de: Introduce intel_de_wait_us()
>   drm/i915/de: Use intel_de_wait_us()
>   drm/i915/de: Use intel_de_wait_ms() for the obvious cases
>   drm/i915/de: Nuke intel_de_wait_custom()
>   drm/i915/de: Introduce intel_de_wait_for_{set,clear}_us()
>   drm/i915/de: Use intel_de_wait_for_{set,clear}_us()
>   drm/i915/de: Use intel_de_wait_for_{set,clear}_ms()
>   drm/1915/dpio: Stop using intel_de_wait_fw_ms()
>   drm/u195/de: Replace __intel_de_rmw_nowl() with intel_de_rmw_fw()
>   drm/i915/de: Nuke wakelocks from intel_de_wait_fw_ms()
>   drm/i915/de: Replace __intel_de_wait_for_register_nowl() with
>     intel_de_wait_fw_us_atomic()
>   drm/i915/power: Use the intel_de_wait_ms() out value
>   drm/i915/dpio: Use the intel_de_wait_ms() out value
>
>  drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  35 +++---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  30 +++--
>  drivers/gpu/drm/i915/display/intel_crt.c      |  16 +--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  98 ++++++++--------
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  34 +++---
>  drivers/gpu/drm/i915/display/intel_de.h       | 107 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>  .../drm/i915/display/intel_display_power.c    |  14 +--
>  .../i915/display/intel_display_power_well.c   |  42 +++----
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  25 ++--
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   6 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  14 +--
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |  10 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  27 +++--
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_flipq.c    |   8 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  49 ++++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |  57 +++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  12 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  10 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  18 +--
>  drivers/gpu/drm/i915/display/intel_psr.c      |  10 +-
>  drivers/gpu/drm/i915/display/intel_sbi.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   8 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |   8 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      |   6 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  54 ++++-----
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   8 +-
>  .../drm/xe/compat-i915-headers/intel_uncore.h |  31 ++---
>  34 files changed, 369 insertions(+), 402 deletions(-)

--=20
Jani Nikula, Intel

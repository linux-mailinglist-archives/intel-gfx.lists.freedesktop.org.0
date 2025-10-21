Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24501BF5364
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 10:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE3310E590;
	Tue, 21 Oct 2025 08:21:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HarUu05p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167A010E2D9;
 Tue, 21 Oct 2025 08:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761034871; x=1792570871;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dWQ5wX4jW59QVu+Z7rCXg2+Ge1j3hh5SrQ3xkJkLDdk=;
 b=HarUu05pgBBg9NoFoZy2yNP4KG4v3s44CFGwIwfI/uS8re8MKA1KejtI
 DdcRlKKhYftZ0RAuqS98nhosM1qBKsWjicldW4zAjX2KUvgVXQnMVUcIc
 f6R1BJQJzjlewNEjgcRV4pnyCrzqlLFNXdlMGGrK4OT8+kPR+7Jo1FzJ4
 95KF9aVb3/VjggByMQVrF1nMf8QA1RQZ71wdAaVXwz0W0Oo8uDHpFfOOB
 FNPqtnAw6q6OJ2UIeWMFH2WF5WnqDbbxDBxQh6If6UIvcBZaTl6vMxBlv
 rOy5hhAoIZOMVpFX0BvelEZJXgpQG4PnnWHYDtW1lMyiq2IKQ687zsLk+ g==;
X-CSE-ConnectionGUID: eUppJmAeRVCww6riZI9Rjg==
X-CSE-MsgGUID: qHtlFTDSQrWS1UyfhcyxjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63305110"
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="63305110"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 01:21:10 -0700
X-CSE-ConnectionGUID: MXK0LqEVTtuXoM2TtW5Edw==
X-CSE-MsgGUID: aVb4j9YlSui4oUqEM8a1Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="183478741"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 01:21:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/22] drm/i915/vrr: A few fixes and a bunch of cleanup
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
Date: Tue, 21 Oct 2025 11:21:05 +0300
Message-ID: <878cb8bc97f731da60ae11cfadf69ab603a2e940@intel.com>
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

On Mon, 20 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> With all the recent work on the VRR code we've accumulated quite
> a few slightly rough corners. Try to clean things up a bit.
>
> While testing the cleanups I noticed a few real issues, fixes
> for which are included at the start of the series.

I quickly eyeballed through this, looks good, but would Ankit be up for
detailed review considering the recent contributions in the area?

BR,
Jani.


>
> Ville Syrj=C3=A4l=C3=A4 (22):
>   drm/i915/vrr: Fix intel_vrr_always_use_vrr_tg()=3D=3Dtrue on TGL
>   drm/i915/lrr: Include SCL in lrr_params_changed()
>   drm/i915: Remove the "vblank delay" state dump
>   drm/i915/vrr: Compute fixed refresh rate timings the sam way as CMRR
>     timings
>   drm/i915/vrr: Reorganize intel_vrr_compute_cmrr_timings() a bit
>   drm/i195/vrr: Move crtc_state->vrr.{vmin,vmax} update into
>     intel_vrr_compute_vrr_timings()
>   drm/i915/vrr: Move compute_fixed_rr_timings()
>   drm/i915/vrr: Extract intel_vrr_set_vrr_timings()
>   drm/i915/vrr: Avoid redundant TRANS_PUSH write in intel_vrr_enable()
>   drm/i915/vrr: Move EMP_AS_SDP_TL write into
>     intel_vrr_set_transcoder_timings()
>   drm/i915/vrr: Use trans_vrr_ctl() in intel_vrr_transcoder_disable()
>   drm/i915/vrr: Extract intel_vrr_tg_disable()
>   drm/i915/vrr: Extract intel_vrr_tg_enable()
>   drm/i915/vrr: Disable VRR TG in intel_vrr_transcoder_disable() only on
>     always use_vrr_tg() platforms
>   drm/i915/vrr: Always write TRANS_VRR_CTL in
>     intel_vrr_set_transcoder_timings() on !always_use_vrr_tg()
>   drm/i915/vrr: Remove redundant HAS_VRR() checks
>   drm/i915/vrr: Move HAS_VRR() check into
>     intel_vrr_set_transcoder_timings()
>   drm/i915/vrr: s/crtc_state/old_crtc_state/ in
>     intel_vrr_transcoder_disable()
>   drm/i915/vrr: Nuke intel_vrr_vblank_exit_length()
>   drm/i915/vrr: Nuke intel_vrr_vmin_flipline()
>   drm/i915/vrr: Update the intel_vrr_extra_vblank_delay() comment
>   drm/i915/vrr: Check HAS_VRR() first in intel_vrr_is_capable()
>
>  .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  22 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 212 ++++++++----------
>  3 files changed, 113 insertions(+), 125 deletions(-)

--=20
Jani Nikula, Intel

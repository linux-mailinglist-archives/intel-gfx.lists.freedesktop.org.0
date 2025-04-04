Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6257A7BD15
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 14:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0A910E064;
	Fri,  4 Apr 2025 12:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YyMqofkA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C3610EBAD;
 Fri,  4 Apr 2025 12:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743771549; x=1775307549;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HzuJgAhp6xb5f4iWmcafZdf+ts4K/alGc5waq1yfxK8=;
 b=YyMqofkA05U4Yv71wLTgyCr8oeNLolYvJfcgSLIn65j265uehy4WsnyI
 9qcsPpV8zRzf32lZONoq3serwTfchOc8jmlW3W0Iaolrekf3JYtpCENEU
 RS7D8G2u5m4/43dDDyCwXKkO/WeK5bL42Ny9oH6ITa7VcAt8V8JIy5JHw
 JGkSdmAvjdgZNZf28tIiVGZex4mb/TLbNIHl9VnVVlkIuvkUKZUADbe74
 W9i89cjv/vQ9qq28wG3UupC9s59gaYiOXhQhf07nRl4UP1deSnzIDJVtA
 NcAIOz+t0u+ORw5yUgqEt4IOP11qeFyKGtJcG0Wk/1NonkkJy10vVMOX4 w==;
X-CSE-ConnectionGUID: TOwPaIcqR3qRz0r5xT6fOg==
X-CSE-MsgGUID: SKtsAOodTQiIUbF4CFmAwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="45096246"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="45096246"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 05:59:09 -0700
X-CSE-ConnectionGUID: 1H0DkshjRz+KkE8CjlrE4g==
X-CSE-MsgGUID: chMvh6v2TEiO6I1W7EDIrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127067684"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 05:59:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/14] drm/i915: sagv/bw cleanup
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
Date: Fri, 04 Apr 2025 15:59:04 +0300
Message-ID: <87ldsgytev.fsf@intel.com>
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

On Wed, 26 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Continue improving the code around sagv/bw vs.
> watermarks. A lot of the details get better encapsulated
> within intel_bw.c and the complicated interactions between
> different parts of the code are somewhat reduced.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

with the caveat that my understanding of all the subtle bw stuff details
in patches 6-14 is admittedly weak. The patches make sense, and I didn't
spot anything obviously wrong, but there may well be cases that I just
couldn't think of.

BR,
Jani.


>
> v2: Rebase due to intel_display conversions
>
> Ville Syrj=C3=A4l=C3=A4 (14):
>   drm/i915: Drop the cached per-pipe min_cdclk[] from bw state
>   drm/i915: s/intel_crtc_bw/intel_dbuf_bw/
>   drm/i915: Extract intel_dbuf_bw_changed()
>   drm/i915: Pass intel_dbuf_bw to skl_*_calc_dbuf_bw() explicitly
>   drm/i915: Avoid triggering unwanted cdclk changes due to dbuf
>     bandwidth changes
>   drm/i915: Do more bw readout
>   drm/i915: Flag even inactive crtcs as "inherited"
>   drm/i915: Drop force_check_qgv
>   drm/i915: Extract intel_bw_modeset_checks()
>   drm/i915: Extract intel_bw_check_sagv_mask()
>   drm/i915: Make intel_bw_check_sagv_mask() internal to intel_bw.c
>   drm/i915: Make intel_bw_modeset_checks() internal to
>     intel_bw_atomic_check()
>   drm/i915: Skip bw stuff if per-crtc sagv state doesn't change
>   drm/i915: Eliminate intel_compute_sagv_mask()
>
>  drivers/gpu/drm/i915/display/intel_bw.c       | 187 ++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_bw.h       |   9 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   4 +
>  drivers/gpu/drm/i915/display/intel_display.c  |   5 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  22 +--
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 112 ++++-------
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   1 +
>  7 files changed, 202 insertions(+), 138 deletions(-)

--=20
Jani Nikula, Intel

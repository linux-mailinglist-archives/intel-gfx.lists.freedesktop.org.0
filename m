Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EDD4463D8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 14:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A5D6E4F3;
	Fri,  5 Nov 2021 13:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C496E4FE
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 13:08:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231737614"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="231737614"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 06:08:41 -0700
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="450565370"
Received: from jprisaca-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.70])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 06:08:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
Date: Fri, 05 Nov 2021 15:08:37 +0200
Message-ID: <87v91692cq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/17] drm/i915/fbc: Prep work for multiple
 FBC instances
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

On Thu, 04 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Bunch of refactoring and cleanups, mainly as prep work
> for introducing multiple FBC instances in the future.

Eyeballed through the series, and I like all of it. Really nice.

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (17):
>   drm/i915/fbc: Exract snb_fbc_program_fence()
>   drm/i915/fbc: Extract {skl,glk}_fbc_program_cfb_stride()
>   drm/i915/fbc: Just use params->fence_y_offset always
>   drm/i915/fbc: Introduce intel_fbc_is_compressing()
>   drm/i915/fbc: Extract helpers to compute FBC control register values
>   drm/i915/fbc: Introduce intel_fbc_funcs
>   drm/i915/fbc: Introduce .nuke() vfunc
>   drm/i915/fbc: s/gen7/ivb/
>   drm/i915/fbc: Introduce .program_cfb() vfunc
>   drm/i915/fbc: Introduce intel_fbc_set_false_color()
>   drm/i915/fbc: Nuke BDW_FBC_COMP_SEG_MASK
>   drm/i915/fbc: Clean up all register defines
>   drm/i915/fbc: Finish polishing FBC1 registers
>   drm/i915: Relocate FBC_LLC_READ_CTRL
>   drm/i915/fbc: s/dev_priv/i915/
>   drm/i915/fbc: Start passing around intel_fbc
>   drm/1915/fbc: Replace plane->has_fbc with a pointer to the fbc
>     instance
>
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  10 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  43 +-
>  .../drm/i915/display/intel_display_types.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 996 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  11 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
>  .../drm/i915/display/skl_universal_plane.c    |  10 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   4 +
>  drivers/gpu/drm/i915/i915_reg.h               | 154 +--
>  drivers/gpu/drm/i915/intel_pm.c               |  16 +-
>  11 files changed, 695 insertions(+), 559 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center

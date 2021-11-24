Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A23E045C926
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 16:48:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7C56E114;
	Wed, 24 Nov 2021 15:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4DB6E114
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 15:48:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="298705352"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="298705352"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 07:48:37 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="538658443"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 07:48:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Date: Wed, 24 Nov 2021 17:48:33 +0200
Message-ID: <87mtltlfla.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/20] drm/i915/fbc: More FBC refactoring
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

On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Continue refactoring the FBC code towards multiple FBC
> instances and more flexible plane<->FBC assignment.

There's a lot to like here. I haven't done detailed review, but apart
from the comment on the debugfs split, the series is

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (20):
>   drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage
>   drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()
>   drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache
>   drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()
>   drm/i915/fbc: Nuke more FBC state
>   drm/i915/fbc: Reuse the same struct for the cache and params
>   drm/i915/fbc: Pass around FBC instance instead of crtc
>   drm/i915/fbc: Track FBC usage per-plane
>   drm/i915/fbc: Flatten __intel_fbc_pre_update()
>   drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff
>   drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c
>   drm/i915/fbc: Introduce intel_fbc_add_plane()
>   drm/i915/fbc: Allocate intel_fbc dynamically
>   drm/i915/fbc: Move stuff from intel_fbc_can_enable() into
>     intel_fbc_check_plane()
>   drm/i915/fbc: Disable FBC fully on FIFO underrun
>   drm/i915/fbc: Nuke state_cache
>   drm/i915/fbc: Move plane pointer into intel_fbc_state
>   drm/i915/fbc: s/parms/fbc_state/
>   drm/i915/fbc: No FBC+double wide pipe
>   drm/i915/fbc: Pimp the FBC debugfs output
>
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |   15 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |    5 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   54 +-
>  .../drm/i915/display/intel_display_types.h    |    4 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 1231 +++++++++--------
>  drivers/gpu/drm/i915/display/intel_fbc.h      |   13 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |    2 +-
>  .../drm/i915/display/skl_universal_plane.c    |   15 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  101 +-
>  drivers/gpu/drm/i915/i915_trace.h             |   18 +-
>  drivers/gpu/drm/i915/intel_pm.c               |    9 +-
>  11 files changed, 690 insertions(+), 777 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A867A3F7152
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 10:53:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB25B6E162;
	Wed, 25 Aug 2021 08:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E78F6E162
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 08:53:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204616955"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="204616955"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 01:53:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="527139310"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 01:53:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
Date: Wed, 25 Aug 2021 11:53:35 +0300
Message-ID: <878s0pgb1s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/13] drm/i915: Clean up DPLL stuff
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

On Thu, 15 Jul 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> A bunch of cleanups to the DPLL code.

There were a couple of nitpicks to be made, but meh. Overall nice
cleanups.

One of the patches needed git am -C 0 to apply, please double check the
result if you resort to that while applying.

The series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (13):
>   drm/i915: Set output_types to EDP for vlv/chv DPLL forcing
>   drm/i915: Clean up gen2 DPLL readout
>   drm/i915: Extract ilk_update_pll_dividers()
>   drm/i915: Constify struct dpll all over
>   drm/i915: Clean dpll calling convention
>   drm/i915: Clean up variable names in old dpll functions
>   drm/i915: Remove the 'reg' local variable
>   drm/i915: Program DPLL P1 dividers consistently
>   drm/i915: Call {vlv,chv}_prepare_pll() from {vlv,chv}_enable_pll()
>   drm/i915: Reuse ilk_needs_fb_cb_tune() for the reduced clock as well
>   drm/i915: Fold i9xx_set_pll_dividers() into i9xx_enable_pll()
>   drm/i915: Fold ibx_pch_dpll_prepare() into ibx_pch_dpll_enable()
>   drm/i915: Nuke intel_prepare_shared_dpll()
>
>  drivers/gpu/drm/i915/display/intel_display.c  |  42 +-
>  .../drm/i915/display/intel_display_types.h    |   5 -
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 567 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll.h     |  23 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  41 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  11 -
>  drivers/gpu/drm/i915/i915_drv.h               |   3 +-
>  7 files changed, 315 insertions(+), 377 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center

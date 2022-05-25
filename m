Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAEE5338C2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 10:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0993310E57C;
	Wed, 25 May 2022 08:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC9F10E57C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 08:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653468436; x=1685004436;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=gUWFJW2IHA7erYIlaHE9L25B/PEMkNoM1ONQNIesj9I=;
 b=HO2BLVO4ZCAn/vLwgn/D0+ik0lL5UQ72qrNjzpb1HFwGHAMiHklxEs5Y
 9pPs8Qxql0UkX/Gb0NAaf+7pb95m1mlV9l7/BM/ggOagqvxR29cmTVqRa
 zxlaZQs4BEGYjaKGNFfUZoDJksj0Akw4BwS5CmsL3HJXH84GNdHdLN22C
 KZ/qag89VIg2QFcLkAUwfUQxSQWQG9e65gdRjpJ6Kml+KzjKah3w7r/0g
 BAZjiYnrX31DiqLdFONL4GYzKS05tWIYrZfCWP6j2DZ8402neMWo9KRYH
 kdByCreXfGMQgC/Sr2VfGR3TRg2e/2eDwaCMPMi4/V1JFmE1WDJf9Nnxn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="336811531"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336811531"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:47:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="601787902"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 01:47:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 11:47:11 +0300
Message-ID: <87mtf6uhgw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 00/15] drm/i915/bios: PNPID->panel_type
 matching
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

On Tue, 10 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Handle VBT panel_type=3D0xff, ie. extract the panel PNPID from
> the EDID and match it againts the VBT panel PNPIDs to determine
> the actual panel_type.
>
> We need to massage the PPS init code a bit to make sure it
> works sensible without having access to the VBT power
> sequencing delays until the end of the eDP probe.
>
> I also started on the path to split the per-panel data from
> i915->vbt into its own thing. So should get us one step closer
> to supporting multiple internal panels.

There was one drrs type check removal in patch 12 that needs explaining,
maybe there were some things I could've nitpicked about here and there,
but meh, series is,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (15):
>   drm/i915: Pass intel_connector to intel_vrr_is_capable()
>   drm/i915: Extract intel_edp_fixup_vbt_bpp()
>   drm/i915/pps: Split pps_init_delays() into distinct parts
>   drm/i915/pps: Introduce pps_delays_valid()
>   drm/i915/pps: Don't apply quirks/etc. to the VBT PPS delays if they
>     haven't been initialized
>   drm/i915/pps: Stash away original BIOS programmed PPS delays
>   drm/i915/pps: Split PPS init+sanitize in two
>   drm/i915/pps: Reinit PPS delays after VBT has been fully parsed
>   drm/i915/pps: Keep VDD enabled during eDP probe
>   drm/i915/bios: Split parse_driver_features() into two parts
>   drm/i915/bios: Split VBT parsing to global vs. panel specific parts
>   drm/i915/bios: Split VBT data into per-panel vs. global parts
>   drm/i915/bios: Determine panel type via PNPID match
>   drm/edid: Extract drm_edid_decode_mfg_id()
>   drm/i915/bios: Dump PNPID and panel name
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  22 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
>  .../gpu/drm/i915/display/intel_backlight.c    |  23 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 496 +++++++++++-------
>  drivers/gpu/drm/i915/display/intel_bios.h     |   6 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  22 +-
>  .../drm/i915/display/intel_ddi_buf_trans.c    |   9 +-
>  .../drm/i915/display/intel_display_types.h    |  71 +++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  45 +-
>  drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
>  .../drm/i915/display/intel_dp_aux_backlight.c |   6 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c     |   3 -
>  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
>  .../i915/display/intel_dsi_dcs_backlight.c    |   9 +-
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  56 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   7 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  13 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      | 129 ++++-
>  drivers/gpu/drm/i915/display/intel_pps.h      |   1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      |  30 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  14 +-
>  drivers/gpu/drm/i915/display/intel_vrr.h      |   4 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  14 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  63 ---
>  include/drm/drm_edid.h                        |  21 +-
>  26 files changed, 672 insertions(+), 410 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center

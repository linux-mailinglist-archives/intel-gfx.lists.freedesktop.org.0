Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 287062FBF9E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 19:59:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73516E0FB;
	Tue, 19 Jan 2021 18:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E796E0FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 18:59:45 +0000 (UTC)
IronPort-SDR: RhyRSOqhmaYuxsdV7ncPf8Q4xi678srGrsyfXKAphyqo9n20zkgEKICOhPPn3qcQtV7GMDxlU6
 UwTwM3GCeuRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="178202178"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="178202178"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 10:59:44 -0800
IronPort-SDR: 958/bYEs8dDQOpAWQX54PvnQBnCakjRgj5lz/zEFYTlYEnjftNtbPI7sMHPRChTOoN2Q+hkxgE
 s1b/DDzZUeBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="365963735"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Jan 2021 10:59:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Jan 2021 20:59:41 +0200
Date: Tue, 19 Jan 2021 20:59:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YAcsHeudU0Xqx7ky@intel.com>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 00/18] VRR/Adaptive Sync Enabling on
 DP/eDP for TGL+
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 13, 2021 at 02:09:17PM -0800, Manasi Navare wrote:
> This series address review comments from Ville
> and incorporates some suggested fixes plus his
> patches.
> =

> Aditya Swarup (1):
>   drm/i915/display/dp: Attach and set drm connector VRR property
> =

> Manasi Navare (8):
>   drm/i915/display/vrr: Create VRR file and add VRR capability check
>   drm/i915/display/dp: Compute VRR state in atomic_check
>   drm/i915/display/dp: Do not enable PSR if VRR is enabled
>   drm/i915/display/vrr: Configure and enable VRR in modeset enable
>   drm/i915/display/vrr: Send VRR push to flip the frame
>   drm/i915/display/vrr: Disable VRR in modeset disable path
>   drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
>   drm/i915/display: Add HW state readout for VRR

All of the above is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Ville Syrj=E4l=E4 (9):
>   drm/i915: Store framestart_delay in dev_priv
>   drm/i915: Extract intel_mode_vblank_start()
>   drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()
>   drm/i915/display: VRR + DRRS cannot be enabled together
>   drm/i915: Rename VRR_CTL reg fields
>   drm/i915/display: Helpers for VRR vblank min and max start
>   drm/i915: Add vrr state dump
>   drm/i915: Fix vblank timestamps with VRR
>   drm/i915: Fix vblank evasion with vrr
> =

>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  24 ++
>  drivers/gpu/drm/i915/display/intel_display.c  |  58 +++--
>  .../drm/i915/display/intel_display_types.h    |  11 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  12 +
>  .../drm/i915/display/intel_dp_link_training.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   7 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 209 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h      |  33 +++
>  drivers/gpu/drm/i915/i915_drv.h               |   4 +
>  drivers/gpu/drm/i915/i915_irq.c               |  53 +++--
>  drivers/gpu/drm/i915/i915_reg.h               |  14 +-
>  13 files changed, 408 insertions(+), 41 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vrr.h
> =

> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC3D2B850B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 20:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA236E446;
	Wed, 18 Nov 2020 19:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BD66E446
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 19:46:53 +0000 (UTC)
IronPort-SDR: a2GySrZdND5gke0cjQvo+9wqJjPeC6zIaSDCIZTCgP3xUaVZASjyghwhDFYIP+f3qO/DuIQ8Yv
 SXbnQS2d1qRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="189255951"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="189255951"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 11:46:52 -0800
IronPort-SDR: TB4VcBwGo83uxzG+ysDqNPrlWHUFEAK1P5S/Qhn+6lgXwnhV6shibfVEybPy1mArSaF4sywK1A
 3lkurUIYCsAw==
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="359624955"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 11:46:52 -0800
Date: Wed, 18 Nov 2020 11:49:25 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201118194925.GA18513@labuser-Z97X-UD5H>
References: <20201117194718.11462-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117194718.11462-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [CI 00/15] Rebased remaining big joiner series
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Series pushed to dinq

Manasi

On Tue, Nov 17, 2020 at 11:47:03AM -0800, Manasi Navare wrote:
> =

> =

> Maarten Lankhorst (4):
>   drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.
>   drm/i915: Try to make bigjoiner work in atomic check
>   drm/i915: Add bigjoiner aware plane clipping checks
>   drm/i915: Add debugfs dumping for bigjoiner, v3.
> =

> Manasi Navare (3):
>   drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave
>   drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner
>   drm/i915: HW state readout for Bigjoiner case
> =

> Ville Syrj=E4l=E4 (8):
>   drm/i915: Copy the plane hw state directly for Y planes
>   drm/i915: Add crtcs affected by bigjoiner to the state
>   drm/i915: Add planes affected by bigjoiner to the state
>   drm/i915: Get the uapi state from the correct plane when bigjoiner is
>     used
>   drm/i915: Disable legacy cursor fastpath for bigjoiner
>   drm/i915: Fix cursor src/dst rectangle with bigjoiner
>   drm/i915: Add bigjoiner state dump
>   drm/i915: Enable bigjoiner
> =

>  drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 131 +++-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |   9 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  69 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 696 ++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h  |   3 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  25 +-
>  .../drm/i915/display/intel_display_types.h    |  10 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 100 ++-
>  drivers/gpu/drm/i915/display/intel_dp.h       |   1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 201 ++---
>  drivers/gpu/drm/i915/display/intel_vdsc.h     |   6 +-
>  16 files changed, 953 insertions(+), 327 deletions(-)
> =

> -- =

> 2.19.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

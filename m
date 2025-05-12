Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98452AB3B8C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 17:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED6710E087;
	Mon, 12 May 2025 15:00:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kz2dPIGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BAD610E087;
 Mon, 12 May 2025 15:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747062046; x=1778598046;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JEcmvvCADlaEsg5ATL4ZmF74q9jxj0zE/b5dTZIfdhA=;
 b=Kz2dPIGaNxTxek00A8U8mdMbs9P9v8aOeO2b6S8eNuXVO6Cd/5o1gIRV
 b05jeRe8UpIHLdBATsxSn2pOZvjn03PI52T8LN5kn0oBoouHkiJCI38+K
 GgWdM6Er8+/VHXyk1NpU0uJ7suLd8MrkjmxAy/7da44iR+VRO1eBpSPWm
 NzgjKdPx22Zmn4pM6nUab1lzaGIePVzhf3CfG15EjzwqAF6gbmdJpv9sK
 ZuAyZjTiaPtTLpER9ULg9Dq5pic6xNBRPmaf8XcY+rL3BWhTRGEeqR1ip
 LuiAAstHN7gKOTBAP8x4jdkM2kIRRFbgBhVIMuPDAtysmqpSgxATJ55LP A==;
X-CSE-ConnectionGUID: haMDL0gSSJaEg/zRwEUlMQ==
X-CSE-MsgGUID: ZAdlQfrxShSlA5bjUuH7OQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="52670640"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="52670640"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 08:00:46 -0700
X-CSE-ConnectionGUID: /7FTOV7fQTiHMD9ESsud4A==
X-CSE-MsgGUID: 33A3bZfKRHmeSituXZ9OFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137325262"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.186])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 08:00:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 0/8] drm/i915: refactor VLV IOSF SB for display usage
In-Reply-To: <aCIB_8mCmOG1w1QW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1746698410.git.jani.nikula@intel.com>
 <aCIB_8mCmOG1w1QW@intel.com>
Date: Mon, 12 May 2025 18:00:41 +0300
Message-ID: <8734d9kh5y.fsf@intel.com>
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

On Mon, 12 May 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, May 08, 2025 at 01:03:34PM +0300, Jani Nikula wrote:
>> This is v2 of [1] fixing a pretty bad goof-up in patch 4, adding the
>> last two patches to clean up style and ensure such goof-ups don't occur
>> in the future, and a couple of checkpatch fixes.
>>=20
>> BR,
>> Jani.
>>=20
>> [1] https://lore.kernel.org/r/cover.1745587049.git.jani.nikula@intel.com
>>=20
>>=20
>> Jani Nikula (8):
>>   drm/i915: rename vlv_sideband*.[ch] to vlv_iosf_sb*.[ch]
>>   drm/i915: add generic read/write functions for VLV IOSF SB
>>   drm/i915: rewrite VLV IOSF SB unit specific read/write functions
>>   drm/i915: switch i915 core to generic VLV IOSF SB functions
>>   drm/i915: move VLV IOSF SB unit specific helpers under display
>>   drm/i915: convert VLV IOSF SB interface to struct drm_device
>>   drm/i915: rename VLV IOSF SB ports parameter to unit_mask
>>   drm/i915: ensure correct VLV IOSF SB units have been get/put
>
> Didn't look too hard but looked all right to me. For the series
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

CI caught another mistake in what was supposed to be a sanity
check. vlv_dpio_get/put only gets/puts DPIO 1, but then the read/write
uses either DPIO 1 or 2 depending on the PHY, and the sanity check
complains when DPIO 2 is accessed but only DPIO 1 is locked.

I addressed this by having vlv_dpio_get/put cover both DPIO 1 and 2:


@@ -75,7 +75,7 @@ static inline void vlv_ccu_put(struct drm_device *drm)
=20
 static inline void vlv_dpio_get(struct drm_device *drm)
 {
-       vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO));
+       vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2=
));
 }
=20
 #ifdef I915
@@ -95,7 +95,7 @@ static inline void vlv_dpio_write(struct drm_device *drm,
=20
 static inline void vlv_dpio_put(struct drm_device *drm)
 {
-       vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO));
+       vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2=
));
 }
=20
 static inline void vlv_flisdsi_get(struct drm_device *drm)


v3 sent.

> AFAICS we have two warts left related to vlv/chv clocks:
> dev_priv->hpll_freq and dev_priv->czclk
>
> Not quite sure what to do about those. I suppose they are similar to
> fsb_freq and mem_freq where we either have to have a central place for
> them, or we try to duplicate the readout on both sides of fence (which
> would perhaps simplify the interface between the drivers, but would be
> annoying in other ways).

Yeah, I've been thinking about these, but decided I wanted to get this
merged first to not accummulate too many dependent series in progress.

BR,
Jani.


>
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |   5 +-
>>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  35 ++-
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  47 ++---
>>  drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
>>  drivers/gpu/drm/i915/display/intel_display.h  |   7 +-
>>  .../drm/i915/display/intel_display_power.c    |   7 +-
>>  .../i915/display/intel_display_power_map.c    |   2 +-
>>  .../i915/display/intel_display_power_well.c   |  71 +++----
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 199 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_dpll.c     | 135 ++++++------
>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  26 ++-
>>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  46 ++--
>>  drivers/gpu/drm/i915/display/vlv_sideband.c   |  50 +++++
>>  drivers/gpu/drm/i915/display/vlv_sideband.h   | 156 ++++++++++++++
>>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   8 +-
>>  drivers/gpu/drm/i915/gt/intel_rps.c           |  58 ++---
>>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>>  drivers/gpu/drm/i915/i915_drv.h               |   1 +
>>  drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
>>  drivers/gpu/drm/i915/soc/intel_dram.c         |  14 +-
>>  .../i915/{vlv_sideband.c =3D> vlv_iosf_sb.c}    | 176 ++++++----------
>>  drivers/gpu/drm/i915/vlv_iosf_sb.h            |  37 ++++
>>  .../{vlv_sideband_reg.h =3D> vlv_iosf_sb_reg.h} |   6 +-
>>  drivers/gpu/drm/i915/vlv_sideband.h           | 125 -----------
>>  .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  42 ++++
>>  .../{vlv_sideband_reg.h =3D> vlv_iosf_sb_reg.h} |   2 +-
>>  .../drm/xe/compat-i915-headers/vlv_sideband.h | 132 ------------
>>  27 files changed, 689 insertions(+), 725 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.c
>>  create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.h
>>  rename drivers/gpu/drm/i915/{vlv_sideband.c =3D> vlv_iosf_sb.c} (55%)
>>  create mode 100644 drivers/gpu/drm/i915/vlv_iosf_sb.h
>>  rename drivers/gpu/drm/i915/{vlv_sideband_reg.h =3D> vlv_iosf_sb_reg.h}=
 (98%)
>>  delete mode 100644 drivers/gpu/drm/i915/vlv_sideband.h
>>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
>>  rename drivers/gpu/drm/xe/compat-i915-headers/{vlv_sideband_reg.h =3D> =
vlv_iosf_sb_reg.h} (66%)
>>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h
>>=20
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel

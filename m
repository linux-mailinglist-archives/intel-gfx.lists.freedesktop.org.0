Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F051BD69
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 12:45:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7811F10EBE0;
	Thu,  5 May 2022 10:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F75710EBE0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 10:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651747540; x=1683283540;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rLe4LmPP5y1SN27uavTwH4zH2aZIqKM2Zwkj8Rm+zeg=;
 b=WGty47RnD3QPIPHsb2htS0o4PRZFh6ykgGY8D/fsP4C2TbMwh5bUd44s
 Q729/NFToZ0QuScQ+i5YSe8WwQfAtCVHiLDjj6R1ryTXNsXoRndDNwCGs
 prl/Trocj9tdvV8u/2CAqDrqrtnW6layjJhYvdVwOjicPLgZk8p0rzc37
 0oVJ/9WrT07/UP7BX3dOzEaFAJoaOZawCIougPQ2EpYpBDCHqeEhGNjIM
 kUrq3MxpEeSfTOYs6m5wPcG1ez7RcJthwZR4DN67j1bVigKZl/YoxqhAu
 59VEu1l6M315jHfT+h33KgTv+K7fg4uaP426D0HpmxO+qA7a0rfZe5jjT A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267667695"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="267667695"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:45:39 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="537282854"
Received: from mstepka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:45:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220504190756.466270-1-jose.souza@intel.com>
Date: Thu, 05 May 2022 13:45:32 +0300
Message-ID: <87sfpol0kz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Drop IPC from display 13
 and newer
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 04 May 2022, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> This feature is supported from display 9 to display 12 and was
> incorrectly being applied to DG2 and Alderlake-P.
>
> While at is also taking the oportunity to drop it from
> intel_device_info struct as a display check is more simple
> and less prone to be left enabled in future platforms.

Lacking a cover letter, I'll just reply here for the entire series.

We don't really have any rules for when to add a flag and when not. It's
basically been up to whoever has added each HAS_* macro to decide how to
implement it.

Indicators for when to add a flag would be:

- The are no clear cut boundaries for platform versions that have or
  don't have a feature.

- There may be a need to disable a feature for single platforms during
  development or enabling or debugging.

- It would be useful to have the flag show up in dmesg, debugfs or gpu
  error (see intel_device_info_print_static() calls).

- The platform comparison would be complicated.

Indicators for when to add a platform check:

- It's a clear cut platform version check, not a complex boolean
  condition.

- It's obvious for anyone debugging the platform whether the feature is
  there or not based on dmesg, without a dedicated logged flag.

- The feature only exists on legacy platforms and is not coming back,
  i.e. the platform check is pretty much fixed.

With that in mind, I think perhaps the following should remain a flag:

- has_dsb - expected to be adjusted for future platforms
- has_rc6p - complicated
- has_psr_hw_tracking - complicated

Another angle is, do we want to keep all the HAS_* macros in i915_drv.h?
For example, HAS_PSR_HW_TRACKING() could be a platform check localized
at the top of intel_psr.c. I think it's more acceptable to have
complicated platform checks if their use is not wide. This could promote
mode widespread use of HAS_* macros for things where we actually have
(possibly duplicated) inline platform checks, and it would be
self-documenting.

Finally, the main functional change in the series is dropping the
feature from the debug prints, and that's not mentioned anywhere.


BR,
Jani.


>
> BSpec: 50039
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 2dddc27a1b0ed..695b35cd6b5e4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1344,7 +1344,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_=
pt)
>=20=20
> -#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
> +#define HAS_IPC(dev_priv)		 (DISPLAY_VER(dev_priv) >=3D 9 && \
> +					  DISPLAY_VER(dev_priv) <=3D 12)
>=20=20
>  #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
>  #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 498708b33924f..c4f9c805cffd1 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -646,7 +646,6 @@ static const struct intel_device_info chv_info =3D {
>  	.display.has_dmc =3D 1, \
>  	.has_gt_uc =3D 1, \
>  	.display.has_hdcp =3D 1, \
> -	.display.has_ipc =3D 1, \
>  	.display.has_psr =3D 1, \
>  	.display.has_psr_hw_tracking =3D 1, \
>  	.dbuf.size =3D 896 - 4, /* 4 blocks for bypass path allocation */ \
> @@ -712,7 +711,6 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>  	.has_reset_engine =3D 1, \
>  	.has_snoop =3D true, \
>  	.has_coherent_ggtt =3D false, \
> -	.display.has_ipc =3D 1, \
>  	HSW_PIPE_OFFSETS, \
>  	IVB_CURSOR_OFFSETS, \
>  	IVB_COLORS, \
> @@ -955,7 +953,6 @@ static const struct intel_device_info adl_s_info =3D {
>  	.display.has_fpga_dbg =3D 1,						\
>  	.display.has_hdcp =3D 1,							\
>  	.display.has_hotplug =3D 1,						\
> -	.display.has_ipc =3D 1,							\
>  	.display.has_psr =3D 1,							\
>  	.display.ver =3D 13,							\
>  	.display.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PI=
PE_D),	\
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index e7d2cf7d65c85..c9660b4282d9e 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -180,7 +180,6 @@ enum intel_ppgtt_type {
>  	func(has_hdcp); \
>  	func(has_hotplug); \
>  	func(has_hti); \
> -	func(has_ipc); \
>  	func(has_modular_fia); \
>  	func(has_overlay); \
>  	func(has_psr); \

--=20
Jani Nikula, Intel Open Source Graphics Center

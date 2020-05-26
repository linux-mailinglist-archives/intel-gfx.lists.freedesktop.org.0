Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8851E296C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 19:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8275F6E228;
	Tue, 26 May 2020 17:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F9C6E227
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 17:51:18 +0000 (UTC)
IronPort-SDR: GQ3ZYraZz/E4LcqC1glQ45ruuSkTgUrPNwm7M9Q36StRTP0hykSp8k+iSXmJK3fqSGNpkxNsvA
 SSniemCs5Eqg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 10:51:17 -0700
IronPort-SDR: PqcwkRvych0GQAJ+zPcSbe3ce/UCGtC2admhHx5Qox9ZWAJ2Mn1osNFdi7icD/e6PtJHE3sz+F
 YexWgw1vqCCQ==
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="291282903"
Received: from shivagup-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.227.40])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 10:51:07 -0700
Date: Tue, 26 May 2020 10:51:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200526175107.lonqbwk35dmijaqo@ldmartin-desk1>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-12-lucas.demarchi@intel.com>
 <e9d5b255a23fe057b6fba0c02545dbda7bc46b97.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9d5b255a23fe057b6fba0c02545dbda7bc46b97.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 11/37] drm/i915/dg1: add initial DG-1
 definitions
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 26, 2020 at 10:34:47AM -0700, Jose Souza wrote:
>On Wed, 2020-05-20 at 17:37 -0700, Lucas De Marchi wrote:
>> From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
>>
>> Bspec: 33617, 33617
>>
>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Stuart Summers <stuart.summers@intel.com>
>> Cc: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          |  7 +++++++
>>  drivers/gpu/drm/i915/i915_pci.c          | 12 ++++++++++++
>>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>>  4 files changed, 21 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index a9846205a5e2..382703a6c17d 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1421,6 +1421,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define IS_ELKHARTLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ELKHARTLAK=
E)
>>  #define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_TIGERLAKE)
>>  #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
>> +#define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
>>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>>  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D 0x0C00)
>>  #define IS_BDW_ULT(dev_priv) \
>> @@ -1541,6 +1542,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i91=
5,
>>  #define IS_RKL_REVID(p, since, until) \
>>  	(IS_ROCKETLAKE(p) && IS_REVID(p, since, until))
>>
>> +#define DG1_REVID_A0		0x0
>> +#define DG1_REVID_B0		0x1
>> +
>> +#define IS_DG1_REVID(p, since, until) \
>> +	(IS_DG1(p) && IS_REVID(p, since, until))
>> +
>>  #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
>>  #define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) && IS_LP(dev_priv))
>>  #define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) && !IS_LP(dev_priv))
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index be52d1b76b2e..e5a851a2dfe7 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -874,9 +874,21 @@ static const struct intel_device_info rkl_info =3D {
>>
>>  #define GEN12_DGFX_FEATURES \
>>  	GEN12_FEATURES, \
>> +	.memory_regions =3D REGION_SMEM | REGION_LMEM, \
>
>REGION_LMEM should be left here for all GEN12 platforms?

no, this define is GEN12_DGFX_FEATURES. For dgfx, yes... we should leave
lmem region there.

Lucas De Marchi

>I guess it will be detected in runtime that TGL and RKL don't have it but =
would be better to not have it in all GEN12 but will let memory experts to
>shine in, other than LGTM.
>
>
>>  	.is_dgfx =3D 1, \
>> +	.has_master_unit_irq =3D 1, \
>>  	.has_snoop_pcie =3D 1
>>
>> +static const struct intel_device_info intel_dg1_info =3D {
>> +	GEN12_DGFX_FEATURES,
>> +	PLATFORM(INTEL_DG1),
>> +	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
>> +	.require_force_probe =3D 1,
>> +	.engine_mask =3D
>> +		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
>> +		BIT(VCS0) | BIT(VCS2),
>> +};
>> +
>>  #undef GEN
>>  #undef PLATFORM
>>
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/=
i915/intel_device_info.c
>> index c245c10c9bee..207244b9a852 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -62,6 +62,7 @@ static const char * const platform_names[] =3D {
>>  	PLATFORM_NAME(ELKHARTLAKE),
>>  	PLATFORM_NAME(TIGERLAKE),
>>  	PLATFORM_NAME(ROCKETLAKE),
>> +	PLATFORM_NAME(DG1),
>>  };
>>  #undef PLATFORM_NAME
>>
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/=
i915/intel_device_info.h
>> index 4bcaa0d6a9e6..64260faac006 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -81,6 +81,7 @@ enum intel_platform {
>>  	/* gen12 */
>>  	INTEL_TIGERLAKE,
>>  	INTEL_ROCKETLAKE,
>> +	INTEL_DG1,
>>  	INTEL_MAX_PLATFORMS
>>  };
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

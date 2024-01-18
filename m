Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005F08315F6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 10:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C6910E76E;
	Thu, 18 Jan 2024 09:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3207F10E76E
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 09:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705570607; x=1737106607;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6hjPdVC/Q0IM/Qsq2TrEkFN9YdnD2zh/SsXjcIjJosI=;
 b=kU6K13W00NVr2pHEXey6shmZ4Ao87QhzoYagV3RVNPu1E21sqmhgy89L
 jM7X8yLS+8z4NJZDJqF5z20JDjnMNFfnnC/DHjuC6xFBsoJ3EW2zeJWUt
 BvxfzkezT2tSpxKOCxTyLAVkLlTZfvROOKoLTsyzewuMNk+Ups1IPUA91
 bD+U54fg2SfclEAR2GUeZlpHaKFrbGfkkvNwu+vwZqqzc5eFfQh58BZEO
 jfS/J8aPn1uOnClwSbpU+4LpAwT+jwJLMpoHuyt7ogb8FPj1yQr9yKYmM
 TIlNLcakzUVP9v/pcnLDx3ccc7DvqEhgiy0Oc5pdTs1frAGoQJptM2rZI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="390849519"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="390849519"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 01:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="313682"
Received: from amilburn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.18])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 01:36:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/opregion: remove unused lid_state
In-Reply-To: <ZafMMXiOlr3H30o4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240117122546.1551400-1-jani.nikula@intel.com>
 <ZafMMXiOlr3H30o4@intel.com>
Date: Thu, 18 Jan 2024 11:36:42 +0200
Message-ID: <87jzo7oudx.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Jan 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jan 17, 2024 at 02:25:46PM +0200, Jani Nikula wrote:
>> Not sure if lid_state has ever been used, but at least not for a long
>> time. Remove it.
>
> It was probably used when we had that disgusting lid notifier
> thing, but that got killed some years ago.
>
>>=20
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_opregion.c | 2 --
>>  1 file changed, 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu=
/drm/i915/display/intel_opregion.c
>> index 3f5a20f9153e..f242bb320610 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> @@ -266,7 +266,6 @@ struct intel_opregion {
>>  	void *vbt_firmware;
>>  	const void *vbt;
>>  	u32 vbt_size;
>> -	u32 *lid_state;
>>  	struct work_struct asle_work;
>>  	struct notifier_block acpi_notifier;
>>  };
>> @@ -958,7 +957,6 @@ int intel_opregion_setup(struct drm_i915_private *de=
v_priv)
>>  		goto err_out;
>>  	}
>>  	opregion->header =3D base;
>> -	opregion->lid_state =3D base + ACPI_CLID;
>>=20=20
>>  	drm_dbg(&dev_priv->drm, "ACPI OpRegion version %u.%u.%u\n",
>>  		opregion->header->over.major,
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel

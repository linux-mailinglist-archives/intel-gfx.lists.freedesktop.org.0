Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18854886A0D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F0E10F195;
	Fri, 22 Mar 2024 10:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hfpbn3fD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0997310F195
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711102657; x=1742638657;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=g2rc/KuG6RUX8Z8N30cTNW+Q6SJQeZ6uFGEjQ/B0yRw=;
 b=hfpbn3fDcstKkxNjK4po0NKp3kTnX6+mkP5z7hyRqDwRX0GgaZcPKk+5
 DOK8pOpGJOR/Sea9NXGQigMvO5UeCHl6EwPGv8zvlFsptJ7HFObryvFBS
 EolEHOOlHBgQVzKeQvzgFHWEu7Jx+6GqeixQ3+fletQnPOYUHPnOgfTKz
 vAYeinK9eGV6RQ9vm9pHWyDi4qd89F2q/wXcLiOGlkjLHYC6/kdoMIByT
 KkGnvDg43gx9FfzhLYbEkH5Jz6IamEfLux8Nfyo1E1kbLA8sMsXny05/3
 vLF6fNaGAk16E8D0KR/92MlYr2nBY7XZmbGKaJTc1+H34L9t8XVzvJD1Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6269542"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="6269542"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:17:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="45970462"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.6])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:17:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/5] drm/i915/bios: Update VBT driver feature block
 version numbers
In-Reply-To: <20240321161806.31714-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
 <20240321161806.31714-3-ville.syrjala@linux.intel.com>
Date: Fri, 22 Mar 2024 12:17:29 +0200
Message-ID: <87bk76lgee.fsf@intel.com>
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

On Thu, 21 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> While the spec does claim that most of the driver feature flags
> start from BDB version 165, reality and some VBIOS code disagrees.
> The VBIOS code says it sart from version 159, and my ILK

*start

> with version 162 definitely has these things already in its
> VBT. Update the version number comments to say 159+ for all
> the bits that seem relevant for pre-hsw hardware.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index f2506b0be790..24583b455f2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -603,22 +603,22 @@ struct bdb_driver_features {
>  	u8 custom_vbt_version;					/* 155+ */
>=20=20
>  	/* Driver Feature Flags */
> -	u16 rmpm_enabled:1;					/* 165+ */
> -	u16 s2ddt_enabled:1;					/* 165+ */
> -	u16 dpst_enabled:1;					/* 165-227 */
> -	u16 bltclt_enabled:1;					/* 165+ */
> -	u16 adb_enabled:1;					/* 165-227 */
> -	u16 drrs_enabled:1;					/* 165-227 */
> -	u16 grs_enabled:1;					/* 165+ */
> -	u16 gpmt_enabled:1;					/* 165+ */
> -	u16 tbt_enabled:1;					/* 165+ */
> +	u16 rmpm_enabled:1;					/* 159+ */
> +	u16 s2ddt_enabled:1;					/* 159+ */
> +	u16 dpst_enabled:1;					/* 159-227 */
> +	u16 bltclt_enabled:1;					/* 159+ */
> +	u16 adb_enabled:1;					/* 159-227 */
> +	u16 drrs_enabled:1;					/* 159-227 */
> +	u16 grs_enabled:1;					/* 159+ */
> +	u16 gpmt_enabled:1;					/* 159+ */
> +	u16 tbt_enabled:1;					/* 159+ */
>  	u16 psr_enabled:1;					/* 165-227 */
>  	u16 ips_enabled:1;					/* 165+ */
>  	u16 dfps_enabled:1;					/* 165+ */
>  	u16 dmrrs_enabled:1;					/* 174-227 */
>  	u16 adt_enabled:1;					/* ???-228 */
>  	u16 hpd_wake:1;						/* 201-240 */
> -	u16 pc_feature_valid:1;
> +	u16 pc_feature_valid:1;					/* 159+ */
>  } __packed;
>=20=20
>  /*

--=20
Jani Nikula, Intel

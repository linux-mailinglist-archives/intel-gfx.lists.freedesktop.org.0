Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 876E64F86B6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59EF10EC14;
	Thu,  7 Apr 2022 17:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACDDC10EC14
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649354215; x=1680890215;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=mdUjz1gbz0ihigpnivkRwB6QBTdJqzgcNvnd+dqYk2k=;
 b=BanLoU858GD5S5Cpztc3a92EPeNHXukNn4L2QVQiUY8SeuVIkf+Tzxb2
 ilVmSh2gWQyrRR6WXFQaw1Lq+yVJSFIJC4JRtHckgi06gXWGc2FR2h175
 3cFKa9N+UFBDDArBx4YRIm2AN2XED19rCN7NvqReXH/pJGZiZqrtakyKP
 9qppnLAdnLav7BEPB1jDJJgJ9Xo3FXhVtTFsKIIZ379V2bDR/baZ481fs
 dGpHbvz/+DG41NMRqXXX6FUIu3cusX9q2ZdEaEDqYvaObFgWW/Qb6xfUi
 PLfe4DGVrCd264ULc77Qhz/j8zc7wJhgz41JFpLY6egSCMUgEt4MPOJUw A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="324558854"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="324558854"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:56:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571160601"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:56:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-20-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-20-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:56:50 +0300
Message-ID: <87zgkw3hgd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 19/22] drm/i915/bios: Parse the seamless
 DRRS min refresh rate
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the seamless DRRS min refresh rate from the VBT.
>
> v2: Do a version check
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 9 ++++++++-
>  drivers/gpu/drm/i915/i915_drv.h           | 1 +
>  2 files changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index cfdfe91d4ccf..d561551d6324 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -802,6 +802,7 @@ parse_lfp_data(struct drm_i915_private *i915)
>  	const struct bdb_lvds_lfp_data *data;
>  	const struct bdb_lvds_lfp_data_tail *tail;
>  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> +	int panel_type =3D i915->vbt.panel_type;
>=20=20
>  	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
>  	if (!ptrs)
> @@ -818,7 +819,13 @@ parse_lfp_data(struct drm_i915_private *i915)
>  	if (!tail)
>  		return;
>=20=20
> -	(void)tail;
> +	if (i915->vbt.version >=3D 188) {
> +		i915->vbt.seamless_drrs_min_refresh_rate =3D
> +			tail->seamless_drrs_min_refresh_rate[panel_type];
> +		drm_dbg_kms(&i915->drm,
> +			    "Seamless DRRS min refresh rate: %d Hz\n",
> +			    i915->vbt.seamless_drrs_min_refresh_rate);
> +	}
>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 9274417cd87a..7b6858651420 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -327,6 +327,7 @@ struct intel_vbt_data {
>  	bool override_afc_startup;
>  	u8 override_afc_startup_val;
>=20=20
> +	u8 seamless_drrs_min_refresh_rate;
>  	enum drrs_type drrs_type;
>=20=20
>  	struct {

--=20
Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6329A575C8E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 09:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3130310FC46;
	Fri, 15 Jul 2022 07:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236CD10FDD6
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 07:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657871049; x=1689407049;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YKPGh4UUVAonPOE9jzAXCCgf3rEZNTrHcA22QfGdouc=;
 b=YD7c1ZLgFGpUogbCDq+sit29k2+YwkXZtHNxiU3LH2P2/BnwE8/NzASt
 xirb0nfDS7lhZ9isGYYvR7aWXdeaCDlALCSu9FrMpY0h+NRzLk131hCMi
 HLnNGQ/iMmWJInzuWj/tTFMFg+AZelVndLnsHyT+kdYduuZ+XN+u5ZZRv
 NlnccAOW4+JObDDEMrjUs12siD+6/NSVrPSxsiX1KnKyFoEWiPMiFSj8t
 Ymbo7k7c55nldUKLeOkMSSWTabRsQThCJciGc9ABemP6/RPQ/tLpKyTxO
 Ve+R+5wWvCf1+A14uVqbKz9WBYmkYJLNUm5vEt/+RjTTtzexiIiV/euY5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="311389791"
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="311389791"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 00:44:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="772892000"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 15 Jul 2022 00:44:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 00:44:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 00:44:07 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 15 Jul 2022 00:44:07 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for scaler
 filter
Thread-Index: AQHYkSI3yoW6Urf1sEaD4hFDsbKDyK1/Gruw
Date: Fri, 15 Jul 2022 07:44:06 +0000
Message-ID: <ad04a68cc2954918a7fa2caf7d505445@intel.com>
References: <20220706102240.21414-1-swati2.sharma@intel.com>
In-Reply-To: <20220706102240.21414-1-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for
 scaler filter
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sw=
ati
> Sharma
> Sent: Wednesday, July 6, 2022 3:53 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for scaler=
 filter
>=20
> Add debug print statement to print scaler filter property value. Since pr=
operty can be
> set as either default or integer scaler; its good if we can get debug pri=
nt for the same
> in dmesg log.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 +++++----
> drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
>  2 files changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 4ca6e9493ff2..e9212f69c360 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -134,8 +134,8 @@ static void intel_dump_plane_state(const struct
> intel_plane_state *plane_state)
>  		    plane->base.base.id, plane->base.name,
>  		    fb->base.id, fb->width, fb->height, &fb->format->format,
>  		    fb->modifier, str_yes_no(plane_state->uapi.visible));
> -	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
> -		    plane_state->hw.rotation, plane_state->scaler_id);
> +	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d, scaling_filter:
> %d\n",
> +		    plane_state->hw.rotation, plane_state->scaler_id,
> +plane_state->hw.scaling_filter);
>  	if (plane_state->uapi.visible)
>  		drm_dbg_kms(&i915->drm,
>  			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT
> "\n", @@ -262,10 +262,11 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
>=20
>  	if (DISPLAY_VER(i915) >=3D 9)
>  		drm_dbg_kms(&i915->drm,
> -			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
> +			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d,
> +scaling_filter: %d\n",
>  			    crtc->num_scalers,
>  			    pipe_config->scaler_state.scaler_users,
> -			    pipe_config->scaler_state.scaler_id);
> +			    pipe_config->scaler_state.scaler_id,
> +			    pipe_config->hw.scaling_filter);
>=20
>  	if (HAS_GMCH(i915))
>  		drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 6c3954479047..225b6bfc783c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -722,10 +722,11 @@ static void intel_scaler_info(struct seq_file *m, s=
truct
> intel_crtc *crtc)
>=20
>  	/* Not all platformas have a scaler */
>  	if (num_scalers) {
> -		seq_printf(m, "\tnum_scalers=3D%d, scaler_users=3D%x scaler_id=3D%d",
> +		seq_printf(m, "\tnum_scalers=3D%d, scaler_users=3D%x scaler_id=3D%d
> +scaling_filter=3D%d",
>  			   num_scalers,
>  			   crtc_state->scaler_state.scaler_users,
> -			   crtc_state->scaler_state.scaler_id);
> +			   crtc_state->scaler_state.scaler_id,
> +			   crtc_state->hw.scaling_filter);
>=20
>  		for (i =3D 0; i < num_scalers; i++) {
>  			const struct intel_scaler *sc =3D
> --
> 2.25.1


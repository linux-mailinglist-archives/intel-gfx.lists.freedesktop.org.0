Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C73390E74E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 11:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB6710E1FE;
	Wed, 19 Jun 2024 09:51:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QRPFwlDL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D45210E1FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 09:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718790693; x=1750326693;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Pa50Qq7nC8O+kD2DYXJkkSLDai/oClBcTVbx+G1msPo=;
 b=QRPFwlDLUJ9piiusnvEbofYJf15WBPmFio6HT/G359tM9Zz0cm5n7zcp
 1soMzsOrHhYiSljsgXCdkZR9/iJJaCo4ybeR5Ysc33p+DyZMYfYajYcal
 Ai6a2uYbDZDA/sjK+t7sLhX5d5CLADd1ZKfc9CpcTg4RUgYY8Vyk6H5hJ
 6pb9df+owbswT0ZDksWahohG8Q+vF9SaNDOff++sOHarUxnycTK40gdWT
 p1NtSoC+gG2UoAAHFUH+yyqJ1ZX8ouSDTupOdc9MnSbqtwRKapUlanlyH
 H576LHLYyJdmjv2OkwEs/VXGy9tPOQOctxKBFO5Mv0nYyCeI/3Wk/gowA g==;
X-CSE-ConnectionGUID: kKMGHHtGSX6K8X2eMpOVGg==
X-CSE-MsgGUID: FlFJtCCmSqSYEhHfXdCeFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27134272"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="27134272"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 02:51:33 -0700
X-CSE-ConnectionGUID: xaZVzhhiTk6BkR4HS5GgiQ==
X-CSE-MsgGUID: EdDwgDVlQRGNgZHhCdLkXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="79337837"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 02:51:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com, Jouni =?utf-8?Q?H?=
 =?utf-8?Q?=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 2/9] drm/i915/display: Wa 16021440873 is writing wrong
 register
In-Reply-To: <20240618053026.3268759-3-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-3-jouni.hogander@intel.com>
Date: Wed, 19 Jun 2024 12:51:27 +0300
Message-ID: <87iky5feg0.fsf@intel.com>
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

On Tue, 18 Jun 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Wa 16021440873 is writing wrong register. Instead of PIPE_SRCSZ_ERLY_TPT
> write CURPOS_ERLY_TPT.

I know this is merged already... but the commit message fails to explain
the changes to psr2_pipe_srcsz_early_tpt_calc().

BR,
Jani.


>
> v2: use right offset as well
>
> Fixes: 29cdef8539c3 ("drm/i915/display: Implement Wa_16021440873")
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_psr.c    | 12 +++---------
>  2 files changed, 5 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 7f7fc710350c..66436e526021 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -524,8 +524,8 @@ static void wa_16021440873(struct intel_plane *plane,
>=20=20
>  	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
>=20=20
> -	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
> -		       PIPESRC_HEIGHT(et_y_position));
> +	intel_de_write(dev_priv, CURPOS_ERLY_TPT(dev_priv, pipe),
> +		       CURSOR_POS_Y(et_y_position));
>  }
>=20=20
>  static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 3f36b94020ff..2a33e35ceeff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2164,19 +2164,14 @@ static void psr2_man_trk_ctl_calc(struct intel_cr=
tc_state *crtc_state,
>  	crtc_state->psr2_man_track_ctl =3D val;
>  }
>=20=20
> -static u32
> -psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
> -			       bool full_update, bool cursor_in_su_area)
> +static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_=
state,
> +					  bool full_update)
>  {
>  	int width, height;
>=20=20
>  	if (!crtc_state->enable_psr2_su_region_et || full_update)
>  		return 0;
>=20=20
> -	if (!cursor_in_su_area)
> -		return PIPESRC_WIDTH(0) |
> -			PIPESRC_HEIGHT(drm_rect_height(&crtc_state->pipe_src));
> -
>  	width =3D drm_rect_width(&crtc_state->psr2_su_area);
>  	height =3D drm_rect_height(&crtc_state->psr2_su_area);
>=20=20
> @@ -2485,8 +2480,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic=
_state *state,
>  skip_sel_fetch_set_loop:
>  	psr2_man_trk_ctl_calc(crtc_state, full_update);
>  	crtc_state->pipe_srcsz_early_tpt =3D
> -		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update,
> -					       cursor_in_su_area);
> +		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
>  	return 0;
>  }

--=20
Jani Nikula, Intel

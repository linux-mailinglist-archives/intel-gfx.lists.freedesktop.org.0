Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C64B2DBA1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 13:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6966D10E70B;
	Wed, 20 Aug 2025 11:49:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsAXc6gx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEAD110E70C;
 Wed, 20 Aug 2025 11:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755690547; x=1787226547;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xd96NDCKpQQudfCsok3iSexJ8anDcxgS6+SodlKhGNY=;
 b=AsAXc6gxBozYDyO0Q9yTGEJlRPCPfa1jn7ZnAyEgqpwVVpKcCIq4PJU3
 gZP5amL0CdDOo/qDaz7hqEbFTM/0MyaaskZ759xjbLKcSXkmqYLUzhqP3
 ff61QsTU3vlp8/kQK3Th2ceSV/n+0mbROmhw2q8XFfjXxufndS7wzeuPz
 sn2Kwp2ZtkhMx6n9g51QuNKauOIKxZrc4GE1IGZ9D5fC7UWRPYBQIIDP1
 0Zm/XliDLjGT9Hq+K+sZ0SylwISYy1bR3M7LY7BiZQHmirPQcci+/ZwOk
 k4IuiwHB5j2LUUTAIrkuLGmOGakllB4AeNjj08jBX2xvLMKLJSm34ZmXz g==;
X-CSE-ConnectionGUID: 7xx7laKuRjyi5o1aiJ+BwA==
X-CSE-MsgGUID: tjC2POyzQ7iRGZW4vtcF3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="83377692"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="83377692"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 04:49:06 -0700
X-CSE-ConnectionGUID: TNmF1wulQkaUgWYfTK7ILg==
X-CSE-MsgGUID: /PcrUwisTNeMiRPpEBIn6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="205267823"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 04:49:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value
 on PSR dpcd init
In-Reply-To: <20250820095334.3849458-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250820095334.3849458-1-jouni.hogander@intel.com>
Date: Wed, 20 Aug 2025 14:49:02 +0300
Message-ID: <e028c20865cabbbf2e6f0123c78e95e882b95832@intel.com>
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

On Wed, 20 Aug 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently we are ignoriong drm_dp_dpcd_read return values when reading PSR
> and Panel Replay capability DPCD register. Rework intel_psr_dpcd a bit to
> take care of checking the return value.

Please switch to drm_dp_dpcd_read_data() while at it to be able to just
check for ret < 0.

BR,
Jani.

>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++++++++--------
>  1 file changed, 21 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 609df53f1ef1..68eb02127f47 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -580,6 +580,16 @@ static void intel_dp_get_su_granularity(struct intel=
_dp *intel_dp)
>  static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	int ret;
> +
> +	ret =3D drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
> +			       &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
> +	if (ret !=3D sizeof(intel_dp->pr_dpcd))
> +		return;
> +
> +	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT=
)] &
> +	      DP_PANEL_REPLAY_SUPPORT))
> +		return;
>=20=20
>  	if (intel_dp_is_edp(intel_dp)) {
>  		if (!intel_alpm_aux_less_wake_supported(intel_dp)) {
> @@ -611,6 +621,15 @@ static void _panel_replay_init_dpcd(struct intel_dp =
*intel_dp)
>  static void _psr_init_dpcd(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	int ret;
> +
> +	ret =3D drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_=
dpcd,
> +			       sizeof(intel_dp->psr_dpcd));
> +	if (ret !=3D sizeof(intel_dp->psr_dpcd))
> +		return;
> +
> +	if (!intel_dp->psr_dpcd[0])
> +		return;
>=20=20
>  	drm_dbg_kms(display->drm, "eDP panel supports PSR version %x\n",
>  		    intel_dp->psr_dpcd[0]);
> @@ -656,18 +675,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
>=20=20
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp)
>  {
> -	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
> -			 sizeof(intel_dp->psr_dpcd));
> -
> -	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
> -			 &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
> -
> -	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)]=
 &
> -	    DP_PANEL_REPLAY_SUPPORT)
> -		_panel_replay_init_dpcd(intel_dp);
> +	_psr_init_dpcd(intel_dp);
>=20=20
> -	if (intel_dp->psr_dpcd[0])
> -		_psr_init_dpcd(intel_dp);
> +	_panel_replay_init_dpcd(intel_dp);
>=20=20
>  	if (intel_dp->psr.sink_psr2_support ||
>  	    intel_dp->psr.sink_panel_replay_su_support)

--=20
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D920AB2EFE9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 09:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B59810E897;
	Thu, 21 Aug 2025 07:42:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVqOZ/a4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F24510E896;
 Thu, 21 Aug 2025 07:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755762137; x=1787298137;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Ws4QC1HA4IdoL4+aQqpJoaK97E3vD8nE73dIrdurmqw=;
 b=AVqOZ/a4ABwyyotiQxWMQFq1s+hdWyaCQWhQ1Iy1wQSVIH3Qg81z3MoR
 4naMJ+3HElZmR5W08kX7+T3BkzqeFgLmtAmIPIlCJ+WhDzCkgjbEYL7Wi
 SBhEmbi2zDJIzo5o+qWfsiSuJnA5+uRq4o7q6j4206bVErg8BVb0NYi5n
 H4yUNaBPFK1cSxnB2D5gHfOmHBP9ehzDtgmntJ5qWyvhG/kj9uXR9Gc/F
 QsEZf87Nz8BMQVQ9L0w3pc+WhXBf2jk5hCxK9mkjL/eh56os9Fqg7F8AS
 crhcqArZGN5FOunMvpNPO7hxtRuiw7S+jjYdLdvZLQzdqIx/LT3xf1t8S Q==;
X-CSE-ConnectionGUID: A+X6noajSiq0rBLpk5bbNQ==
X-CSE-MsgGUID: vUX0Vs3bTf6AWW20Y1B4FA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="61855536"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="61855536"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 00:42:17 -0700
X-CSE-ConnectionGUID: lxZNSgmiQ/aM8E5eKdI9lA==
X-CSE-MsgGUID: 2lcha3LzRE+KSuFLhAngWw==
X-ExtLoop1: 1
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.126])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 00:42:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/psr: Check drm_dp_dpcd_read return
 value on PSR dpcd init
In-Reply-To: <20250821045918.17757-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250821045918.17757-1-jouni.hogander@intel.com>
Date: Thu, 21 Aug 2025 10:42:12 +0300
Message-ID: <53e3d526cd41f74c906377cf8fb9add6d7dd441b@intel.com>
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

On Thu, 21 Aug 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently we are ignoriong drm_dp_dpcd_read return values when reading PSR
> and Panel Replay capability DPCD register. Rework intel_psr_dpcd a bit to
> take care of checking the return value.
>
> v2: use drm_dp_dpcd_read_data
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++++++++--------
>  1 file changed, 21 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 609df53f1ef1..5addde63168e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -580,6 +580,16 @@ static void intel_dp_get_su_granularity(struct intel=
_dp *intel_dp)
>  static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> +	int ret;
> +
> +	ret =3D drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPO=
RT,
> +				    &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
> +	if (ret < 0)
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
> +	ret =3D drm_dp_dpcd_read_data(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp-=
>psr_dpcd,
> +				    sizeof(intel_dp->psr_dpcd));
> +	if (ret < 0)
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

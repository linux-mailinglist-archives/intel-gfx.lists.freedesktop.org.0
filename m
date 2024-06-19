Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6597290E680
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 11:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF74E10E18A;
	Wed, 19 Jun 2024 09:06:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJrMBQRV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C1D10E18A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 09:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718788004; x=1750324004;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=37xRqGI0IDiVwYa2A3SIBiRsGxG3RfpQmU8UxEKk+to=;
 b=LJrMBQRV/PtXozQRdxd690l3le/pE/RbU+dck9mglW5HG1rjy98JovGn
 gM0PpyHh2FYDju1VGwX7+6l4JRPIASm8mAM6UUCPMhJEZMohXIXVLKcGA
 ca+xeGL+ABkv1ojTfmKe8G6Cm/596VW3gg22782hWJtz/YXt2whcL6a5u
 Y8v/XPmr4OyQ7O0PmTtAiLUnJY0lnw+9KOr3qc8iAL+IAAUTy2DLomW1Y
 D5FYT9XN0autlW78np8mFiTIDbp/mORaOmlNRi8V9jrjrh7/7x1fMp422
 sDX7GRaG+swKYTti03mkw5hdwceLsr6ca+CrYQhLnqG1zpmzXZ7XbWZ0a w==;
X-CSE-ConnectionGUID: N/0gTIV4Rl+hy6nkwuyvHw==
X-CSE-MsgGUID: 3tBT2ng+QUio19X7X4uhJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27120674"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="27120674"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 02:06:43 -0700
X-CSE-ConnectionGUID: tMAUk15GSY2LBhF61ZAcjg==
X-CSE-MsgGUID: Ho2qPvCHSXOt32ZEj1941g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41757772"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.249])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 02:06:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com, Jouni =?utf-8?Q?H?=
 =?utf-8?Q?=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH v9 01/11] drm/i915/psr: Check panel ALPM capability for
 eDP Panel Replay
In-Reply-To: <20240619062131.4021196-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
 <20240619062131.4021196-2-jouni.hogander@intel.com>
Date: Wed, 19 Jun 2024 12:06:37 +0300
Message-ID: <87le31fgiq.fsf@intel.com>
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

On Wed, 19 Jun 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Our HW doesn't support Panel Replay without AUX_LESS ALPM on eDP. Check
> panel support for this and prevent eDP panel replay if it doesn't exits.
>
> Bspec: 68920
>
> v2: use intel_alpm_aux_less_wake_supported
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index a9d9383e4ee5..20e6717a5215 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -571,6 +571,13 @@ static void _panel_replay_init_dpcd(struct intel_dp =
*intel_dp)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>=20=20
> +	if (intel_dp_is_edp(intel_dp) &&
> +	    (!intel_alpm_aux_less_wake_supported(intel_dp))) {

Drive-by comment, excessive parens there.

> +		drm_dbg_kms(&i915->drm,
> +			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possib=
le\n");
> +		return;
> +	}
> +
>  	intel_dp->psr.sink_panel_replay_support =3D true;
>=20=20
>  	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)

--=20
Jani Nikula, Intel

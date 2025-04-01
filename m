Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B5AA777A9
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 11:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A35810E525;
	Tue,  1 Apr 2025 09:26:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igAtX80g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E805D10E525;
 Tue,  1 Apr 2025 09:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743499559; x=1775035559;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UGFXOToh6lfrPiPPb90VuHeAZQFaVEXIK7NGG0GjVCM=;
 b=igAtX80gZggpVxCyvJI1iQkfQ2TLa+fCM+Ouwb3EA03lIEdxBUTxRqKk
 0ibVEykHmrADsaPphS7JU9rFaceERR4AFiwXF8cHnswSKuZTjHdjL1S6U
 PEhm6ha901j/Tr4TNnXKLYKO5bvNpZCZIYW1579BxHpdxVASQuSpXl2kJ
 bDMDtmfTWxKTNjqvb/B2+2EzR3kNL+xzOr3EkWMvI80e5lu4CG37pTyqW
 RUzUgEHWqxnG7mSE05Tbno+xP6fYL0vkEdxm2u2CpnjSjiR1XSX4PKsGb
 oSExNaRMKHqxoLEcr5PszMiIxP6B9Kd5k5W7RsaNRMRBxtf3VGeDbqXy0 g==;
X-CSE-ConnectionGUID: 1/Ah8te9QJWgyIVfcFvLSw==
X-CSE-MsgGUID: wdlwcASqT5+rvRTSwCZdKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="32411046"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="32411046"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 02:25:56 -0700
X-CSE-ConnectionGUID: 3RM/SkxCShOsKKMWggYaFw==
X-CSE-MsgGUID: KMq0UoMJToy0VxrQN2RF2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="126327679"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 02:25:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Prevent DP Panel Replay as well when CRC
 is enable
In-Reply-To: <20250331090747.2964028-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250331090747.2964028-1-jouni.hogander@intel.com>
Date: Tue, 01 Apr 2025 12:25:51 +0300
Message-ID: <87wmc42py8.fsf@intel.com>
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

On Mon, 31 Mar 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We are seeing timeouts in opening CRC fd when testing on setup where DP
> Panel Replay can be enabled. Fix these by checking if CRC is enabled for =
DP
> Panel Replay as well.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index c4be3f46511f7..c8cfa27fb043d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1595,6 +1595,12 @@ _panel_replay_compute_config(struct intel_dp *inte=
l_dp,
>  		return false;
>  	}
>=20=20
> +	if (crtc_state->crc_enabled) {
> +		drm_dbg_kms(display->drm,
> +			    "Panel Replay not enabled because it would inhibit pipe CRC calcu=
lation\n");
> +		return false;
> +	}
> +
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
>=20=20
> @@ -1625,12 +1631,6 @@ _panel_replay_compute_config(struct intel_dp *inte=
l_dp,
>  	if (!alpm_config_valid(intel_dp, crtc_state, true))
>  		return false;
>=20=20
> -	if (crtc_state->crc_enabled) {
> -		drm_dbg_kms(display->drm,
> -			    "Panel Replay not enabled because it would inhibit pipe CRC calcu=
lation\n");
> -		return false;
> -	}
> -
>  	return true;
>  }

--=20
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0BEAA6DE9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8839D10E8D5;
	Fri,  2 May 2025 09:19:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L9hrnpGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689B710E8D5;
 Fri,  2 May 2025 09:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746177588; x=1777713588;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8UY/sAAXxkEML/iviN2JsYVKh8RkYfPY4mh2ewgK4k0=;
 b=L9hrnpGDZbFatAkgLJELHrukeNuNZ31k/8FYrl/jxEWlCxQHupgEK5Fp
 yxYX5v7k/B8sC68q2uB9kRtY5bH/iw+z+h9vbKRH96IyDg6IjUYOJQkf+
 eu1lNR7rL0gG/GcKeuyaQwxZSiIdTDX7CQDsOrb8xKefv9wbmYg9LannG
 0Hw7Q5rtSKXNVoo6sRiqr9ZAyVzKMOP6zaZcSbK4tHAbU5teEu6afsekU
 KwYlJBt682QcY6f0P/E8UBh+z/gkjxOO2Io9BTWB9Mz57dI1rvjNKftGx
 nPnjlJ1rWBt+ucxcQdInAEuEjuLfJq/o38OtZ0dv8EXy76IS4iPfbDlty w==;
X-CSE-ConnectionGUID: kfUBqDhxTyWTFTzXxqPf+A==
X-CSE-MsgGUID: Z8vaVmZUSqWB535/beCjaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="51675138"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="51675138"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:19:47 -0700
X-CSE-ConnectionGUID: bE+oCn7RQOuGwbP2gRRu4A==
X-CSE-MsgGUID: tL+LUS9eT0ekUXKjPOkxEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139594143"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:19:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from
 DP2.1 specification
In-Reply-To: <20250502085902.154740-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-2-jouni.hogander@intel.com>
Date: Fri, 02 May 2025 12:19:42 +0300
Message-ID: <87tt63wes1.fsf@intel.com>
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

On Fri, 02 May 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Add PANEL REPLAY CAPABILITY register (0xb1) bits.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  include/drm/display/drm_dp.h | 10 ++++++++--

Needs Cc: dri-devel too.

>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 3001c0b6e7bb3..47e7d55e2803f 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -552,8 +552,14 @@
>  # define DP_PANEL_REPLAY_SU_SUPPORT			(1 << 1)
>  # define DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT	(1 << 2) /* eDP 1.5 */
>=20=20
> -#define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1
> -# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
> +#define DP_PANEL_PANEL_REPLAY_CAPABILITY					0xb1
> +# define DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_SHIFT			1 /* DP 2.1=
 */
> +# define DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK			(3 << 1)
> +# define DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR			(1 << =
3)
> +# define DP_PANEL_REPLAY_DSC_CRC_OF_MULTIPLE_SUS_SUPPORTED			(1 << 4)
> +# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED				(1 << 5)
> +# define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_CAPABILITY_SUPPORTED	=
	(1 << 6)
> +# define DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SD=
P	(1 << 7)
>=20=20
>  #define DP_PANEL_PANEL_REPLAY_X_GRANULARITY		0xb2
>  #define DP_PANEL_PANEL_REPLAY_Y_GRANULARITY		0xb4

--=20
Jani Nikula, Intel

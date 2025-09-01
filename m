Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F9B3E001
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Sep 2025 12:21:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 925C510E413;
	Mon,  1 Sep 2025 10:21:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVAtBJnq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBB410E40D;
 Mon,  1 Sep 2025 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756722087; x=1788258087;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wvZ/8kpw7lZjYQYGNXH2RAmF9kM0JdANm9gQujy9Dpw=;
 b=iVAtBJnq6m4Xmz5c58M//4F39hO+loWV1DD0VNN82V6PhuD0eEGTsUW/
 FSF72vM4eJup9GEwAxghefalN1Qv5Pzbr9bFCM/4l0jQQPrez3h7ZUodW
 0u0yn25XEUY+JMrrTOItgFLuH84/FsByv53Nq3Zq9jwPtmE6QLrcgDT6u
 oKHtHUvDss+baXncNBffIwCkT+YcwdgPatTaDuEl1JB9tUByM2hBD1JsN
 ZpzNcReZp0Q+3MTUL397jPQAd/pHoAvjCLxHD/eEysM7PVKEr4+NnUL+p
 GXQOmhjACgCGMrhPVZvCB7iQachf/dL/t0QnQEyKkBayvTSHDJ/BWzOLf g==;
X-CSE-ConnectionGUID: iNvm4mTcSayjkqU9aw50Mg==
X-CSE-MsgGUID: bC4eLr6iRW6M4F2F8dgDQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="70081034"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="70081034"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 03:21:26 -0700
X-CSE-ConnectionGUID: haHk2W0GSiymdejs+lDq0g==
X-CSE-MsgGUID: UGsM8mocTzujRxn3K78guQ==
X-ExtLoop1: 1
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 03:21:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/bios: Remove unnecessary checks of PSR idle
 frames in VBT binary
In-Reply-To: <20250901101033.4176277-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250901101033.4176277-1-jouni.hogander@intel.com>
Date: Mon, 01 Sep 2025 13:21:20 +0300
Message-ID: <ffb7d264934868be9ca40d782cf496cac1d10a58@intel.com>
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

On Mon, 01 Sep 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> PSR idle frames in VBT binary is a 4 bits wide bitfield. Checking if it's
> below 0 or over 15 doesn't make sense. Remove these checks.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 7d7193a05d88..3596dce84c28 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1567,10 +1567,7 @@ parse_psr(struct intel_display *display,
>=20=20
>  	panel->vbt.psr.full_link =3D psr_table->full_link;
>  	panel->vbt.psr.require_aux_wakeup =3D psr_table->require_aux_to_wakeup;
> -
> -	/* Allowed VBT values goes from 0 to 15 */
> -	panel->vbt.psr.idle_frames =3D psr_table->idle_frames < 0 ? 0 :
> -		psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;
> +	panel->vbt.psr.idle_frames =3D psr_table->idle_frames;
>=20=20
>  	/*
>  	 * New psr options 0=3D500us, 1=3D100us, 2=3D2500us, 3=3D0us

--=20
Jani Nikula, Intel

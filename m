Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 403ED8733E4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 11:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87EE0112864;
	Wed,  6 Mar 2024 10:19:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="elLu8Z2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701C210EC55
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 10:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709720387; x=1741256387;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=D/N2qwe7LgqnWfvfKhms7lA9ZvsoZAf7a2FJQVa1TVs=;
 b=elLu8Z2Ry3mwDtQByzdxy3m2RRk6t2/v5+MajxBB2bCl0WmX4DtKQSPd
 50vQBHIp32QKHPT6MYeKznvDr+yKi94B5S2Ha+RO2XNVd3Sa18JEh3gNX
 /Awo0hgSbZFSUWlsaRN97JXTeoucbKqbMcKKKxBe9yMCZXFxEVyHrduUs
 rr3NNCWUSvlO7CWD/9jP3Ctl+fw9+SW4Qq4fhFHpf6sY7YOiQV8AZA7eV
 JscVddymBs9vN/Hvdxy1Ise8y5znLlyeeg2MGw72NnSxuGmbRPlDeceBi
 tmEK2QgitKpQnqDxam/c1hJ1nqacj/hgAi6KNblydJqYqaBcvASGEdg9s A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4906977"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4906977"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:19:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="10113089"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:19:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: Re: [PATCH] drm/i915/display: Fixed a screen flickering when
 turning on display from off
In-Reply-To: <20240306031348.1344034-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240306031348.1344034-1-gareth.yu@intel.com>
Date: Wed, 06 Mar 2024 12:19:42 +0200
Message-ID: <87il1zzmpt.fsf@intel.com>
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

On Wed, 06 Mar 2024, gareth.yu@intel.com wrote:
> From: Gareth Yu <gareth.yu@intel.com>
>
> Turn on the panel from zero brightness of the last state, the panel was s=
et
> a maximum PWM in the flow. Once the panel initialization is completed, the
> backlight is restored to zero brightness. There is a flckering generated.

Please be more precise in describing what exactly happens and
when. Driver probe? Modeset? What restores backlight to zero brightness?

Better yet, please file a bug at fdo gitlab, attach full dmesg with
debugs, etc.

Before we had the concept of minimum brightness, the minimum was always
0. And the check was:

	if (level =3D=3D 0)
		level =3D max;

Historically, the point was, if you're enabling the display and
backlight, you don't want it to be at 0 brightness, because for most
displays that means a black screen.

BR,
Jani.


> Set the brightness to the minimum value when the brightness is less or eq=
ual
> to the minimum value to fix this flickering
>
> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index 3f3cd944a1c5..855d6ead905c 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -762,7 +762,7 @@ static void __intel_backlight_enable(const struct int=
el_crtc_state *crtc_state,
>  	WARN_ON(panel->backlight.max =3D=3D 0);
>=20=20
>  	if (panel->backlight.level <=3D panel->backlight.min) {
> -		panel->backlight.level =3D panel->backlight.max;
> +		panel->backlight.level =3D panel->backlight.min;
>  		if (panel->backlight.device)
>  			panel->backlight.device->props.brightness =3D
>  				scale_hw_to_user(connector,

--=20
Jani Nikula, Intel

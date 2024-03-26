Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCC588C30F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 14:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A4010EF7B;
	Tue, 26 Mar 2024 13:11:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PcE6qegU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE2E10EF7B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 13:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711458698; x=1742994698;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RPIgoVLq7zo0+1Sz/AJHPyGIY4vyRImMYMHQ36ivp+I=;
 b=PcE6qegUU2VAQewUXFhZeQ3ncFNv4MlzgmRE9oIh0EqOb7eFws3gJPsX
 CnmuFHTIDxg1Feo7geTz8xvzGzMCL17qK/SONdBJJ45VtWMnpZeuULVJc
 3vxYCheOhTVbHC0bizs8nVI+Y5ppyHuk+r4AJqWxAp8AM/ovDuEkC+p19
 i1b1NW3iUNHp3IOFJg/du+jgV9rY0FukNJaNwX9RKT4xd8AIcMzOFgGe7
 dABD2ycJ32+YyQ06Iw6jC6DP0O+nHyfwbFx3mtDKOWAWm1DZbt2rVOK39
 C2B4zY8r06lTEAe2lGFVlM9fJAtJrqCzSxQ8HKA1EzATsQcK+BOtToIFR g==;
X-CSE-ConnectionGUID: Wk8LW+YkSjCzwlH3DlKTEw==
X-CSE-MsgGUID: ON20XWNXSaWxtyyftowm6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6374102"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6374102"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 06:11:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="15993347"
Received: from eldobson-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 06:11:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Fixed a screen flickering when
 turning on display from off
In-Reply-To: <20240321045311.2124111-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240306031348.1344034-1-gareth.yu@intel.com>
 <20240321045311.2124111-1-gareth.yu@intel.com>
Date: Tue, 26 Mar 2024 15:11:33 +0200
Message-ID: <87plvhgmt6.fsf@intel.com>
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

On Thu, 21 Mar 2024, gareth.yu@intel.com wrote:
> From: Gareth Yu <gareth.yu@intel.com>
>
> Turn on the panel from zero brightness of the last state, the panel was
> set a maximum PWM in the flow. Once the panel initialization is completed,
> the backlight is restored to xero brightness. There is a flckering
> generated. This flicker happens in "Screen dimming and power off" of
> Google's design and resume from sleep. The sample of DMESG is below.
>
> (suspend)
> [53949.248875] i915 0000:00:02.0: [drm:intel_edp_backlight_off]
> [53949.452046] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level] set=
 backlight PWM =3D 0
>
> (wakeup)
> [53986.067356] i915 0000:00:02.0: [drm:intel_edp_backlight_on]
> [53986.067367] i915 0000:00:02.0: [drm:intel_backlight_enable] pipe A
> [53986.067476] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level] set=
 backlight PWM =3D 96000
> [53986.119766] backlight intel_backlight: PM: calling backlight_resume+0x=
0/0x7a @ 4916, parent: card0-eDP-1
> [53986.119781] backlight intel_backlight: PM: backlight_resume+0x0/0x7a r=
eturned 0 after 0 usecs
> [53986.220068] [drm:intel_backlight_device_update_status] updating intel_=
backlight, brightness=3D26321/96000
> [53986.220086] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlight=
] set backlight level =3D 27961
>
> Set the brightness to the minimum value when the new brightness is less
> or equal to the minimum value to mitigate this flickering.

Thanks for the patch. I've pushed this to drm-intel-next, but took the
liberty to rewrite the commit message:

commit 92714006eb4d10ddfaa0eca41c81e6b483e02f93
Author: Gareth Yu <gareth.yu@intel.com>
Date:   Thu Mar 21 12:53:11 2024 +0800

    drm/i915/backlight: Do not bump min brightness to max on enable
=20=20=20=20
    Historically the expectation was to set brightness to max on enable, if
    it was zero. However, the policy should be to preserve brightness across
    disable/enable, for example the userspace might want to dim the
    brightness before disable (e.g. on suspend) and gradually bring it back
    up after enable (e.g. on resume). If the brightness gets bumped to max
    at enable, this causes flicker as the userspace expects the brightness
    to have been preserved across disable/enable.
=20=20=20=20
    For example:
=20=20=20=20
    (suspend)
    [53949.248875] i915 0000:00:02.0: [drm:intel_edp_backlight_off]
    [53949.452046] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level] s=
et backlight PWM =3D 0
=20=20=20=20
    (wakeup)
    [53986.067356] i915 0000:00:02.0: [drm:intel_edp_backlight_on]
    [53986.067367] i915 0000:00:02.0: [drm:intel_backlight_enable] pipe A
    [53986.067476] i915 0000:00:02.0: [drm:intel_backlight_set_pwm_level] s=
et backlight PWM =3D 96000
    [53986.119766] backlight intel_backlight: PM: calling backlight_resume+=
0x0/0x7a @ 4916, parent: card0-eDP-1
    [53986.119781] backlight intel_backlight: PM: backlight_resume+0x0/0x7a=
 returned 0 after 0 usecs
    [53986.220068] [drm:intel_backlight_device_update_status] updating inte=
l_backlight, brightness=3D26321/96000
    [53986.220086] i915 0000:00:02.0: [drm:intel_panel_actually_set_backlig=
ht] set backlight level =3D 27961
=20=20=20=20
    Reduce the check to respecting the minimum brightness, and avoid bumping
    min brightness to max on enable.
=20=20=20=20
    Note: It's possible there's still userspace out there that relies on the
    old behaviour. It would be unfortunate, but there's really only one way
    to find out.

Fingers crossed, let's hope nothing regresses.

BR,
Jani.


>
> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index 3f3cd944a1c5..23fd011b6bfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -761,8 +761,8 @@ static void __intel_backlight_enable(const struct int=
el_crtc_state *crtc_state,
>=20=20
>  	WARN_ON(panel->backlight.max =3D=3D 0);
>=20=20
> -	if (panel->backlight.level <=3D panel->backlight.min) {
> -		panel->backlight.level =3D panel->backlight.max;
> +	if (panel->backlight.level < panel->backlight.min) {
> +		panel->backlight.level =3D panel->backlight.min;
>  		if (panel->backlight.device)
>  			panel->backlight.device->props.brightness =3D
>  				scale_hw_to_user(connector,

--=20
Jani Nikula, Intel

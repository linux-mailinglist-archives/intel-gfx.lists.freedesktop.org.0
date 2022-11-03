Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBABA617B33
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 12:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB1810E5DB;
	Thu,  3 Nov 2022 11:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1281A10E26E
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 11:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667473211; x=1699009211;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=OivtWlnHBBMW6mgVKQQ5aFQQLq/ez45a4040iNbNU50=;
 b=O9TGs4fBN4sx+KRRVPWPbFYbsPzj1IeNdj8OMsxmxh0QP0VmfIr4A/iA
 HwWJLG8TC4NSDFh2VyI9hzz/gYavWTSGxFtN+gAuUhZHnDi532V8p/QUE
 Z+k/xlX+iA6DEEWFL8qIU1ZWOUymKtLKSb5hvE9cvNVr8x4DDBH356ioE
 nXnqbw93XtxWaRSX4uhuXXRb/EcFXvjYPISs3UicAPbvoOQ/EDWX2srJe
 kXNCSUpHmtV4BDbgz+J1SmRiVn0Sx32z5Y2LLHzFlj9PJE/ByaH00JD8i
 5tjfg0PUGb2A1bD7V3yJ+f1IuFiP26FROuiv1ed09GfAOjR41O4gcFeuS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308367699"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="308367699"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:00:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="963892000"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="963892000"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:00:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221103004006.24904-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221103004006.24904-1-shawn.c.lee@intel.com>
Date: Thu, 03 Nov 2022 13:00:05 +0200
Message-ID: <87sfj0b8wa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [v3] drm/i915/pps: improve eDP power on flow
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

On Thu, 03 Nov 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> After i915 dirver initialized, a panel power off cycle delay
> always append before turn eDP on. If eDP display did not
> power on before. With this change, power off duration might
> longer than power cycle delay. So driver can save power cycle
> delay to speed up driver initialization time.
>
> v2: fix commit messages
> v3: refine panel_power_off_time default value and modify
>     commit messages
>
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 21944f5bf3a8..a394bb1c92d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1098,7 +1098,7 @@ bool intel_pps_have_panel_power_or_vdd(struct intel=
_dp *intel_dp)
>=20=20
>  static void pps_init_timestamps(struct intel_dp *intel_dp)
>  {
> -	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
> +	intel_dp->pps.panel_power_off_time =3D 0;

So this is just copy-paste from [1] where we discuss the problems with
this approach, specifically module reload ignoring the power off
time. Why would you post this without even mentioning the problem?


BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/issues/7417#note_1619118

>  	intel_dp->pps.last_power_on =3D jiffies;
>  	intel_dp->pps.last_backlight_off =3D jiffies;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center

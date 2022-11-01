Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C82614744
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 10:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCB310E345;
	Tue,  1 Nov 2022 09:53:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D0C10E345
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 09:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667296400; x=1698832400;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=snO54Z6Gn7p4R5y8NBUW5FLOeEKtNIo02Wn7O15oDG8=;
 b=THUazMT0JdRzVYN0LdxDrXR3jjpozrY0g23TlGyzySVTVmFca5sqxruT
 Jh1z0Zlpk/Xq4BfBU4W0HVyXcCw91rtGj/9zhfAkemsfFJVhBOmmv4pgG
 rFk8eI468lJaAg1BoxDKyCdJAcvY4lhGsOuJAN85kZaA/3OikHsHA6sGI
 sTPLcwiWZ3BFBXXHxeH/1Ntk1CQMcAotqODqGwKiMcGs8DrKmtEEb5zXy
 KnM5eC6c7cGTB5n2U3bdkZpI0F1W+Hn7jAtaldYqQRCQ2HCeDimTzv3Yb
 /m4+2Cq4dzcoxfDS5RplKGIdEEtRPpFjtyvx6ZkdEB3dmAuUzW5GU5S6n g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="289494171"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="289494171"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 02:53:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="879044326"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="879044326"
Received: from rsimofi-mobl.ger.corp.intel.com (HELO localhost) ([10.252.30.2])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 02:53:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221024140607.25271-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com>
Date: Tue, 01 Nov 2022 11:53:16 +0200
Message-ID: <87sfj380hf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [v2] drm/i915/pps: improve eDP power on flow
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

On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> A panel power off cycle delay always append before turn eDP on.
> Driver should check last_power_on and last_backlight_off before
> insert this delay. If these values are the same, it means eDP
> was off until now and driver can bypass power off cycle delay
> to save some times to speed up eDP power on sequence.
>
> v2: fix commit messages

There are more changes here than what the changelog says, but the
previous review comments were not answered [1].


BR,
Jani.


[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com

>
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 21944f5bf3a8..290473ec70d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_dp *=
intel_dp)
>  	ktime_t panel_power_on_time;
>  	s64 panel_power_off_duration;
>=20=20
> +	/* When last_power_on equal to last_backlight_off, it means driver did =
not
> +	 * turn on or off eDP panel so far. So we can bypass power cycle delay =
to
> +	 * save some times here.
> +	 */
> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight_off)
> +		return;
> +
>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>=20=20
>  	/* take the difference of current time and panel power off time
> @@ -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp *in=
tel_dp)
>  {
>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>  	intel_dp->pps.last_power_on =3D jiffies;
> -	intel_dp->pps.last_backlight_off =3D jiffies;
> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>  }
>=20=20
>  static void

--=20
Jani Nikula, Intel Open Source Graphics Center

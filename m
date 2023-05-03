Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9091B6F53A5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A8410E20A;
	Wed,  3 May 2023 08:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8821F10E20A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683103798; x=1714639798;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LDgwRdC6MSH1GDv5jLfiqkQObJM4S1LeuVa0ZaObkRE=;
 b=Qua+LoPM7fPO4tBmcu41SFFeO+XzvGZUMJTCq7BqQ3UzXZN7txr7t3n0
 3ppV+syPbOod25ke8rgJt6+kP8cZMqCBtCRjfvDyCDGoIIDKJFSJOc60P
 SUZdZtpb4v313E6D9oPppLnIZZVglQn0AF9e/Ej3I1RamxxLiAEgdyOuh
 2ZX7gevcL1HCnRqVRbRqnswen52fFSzcqzyHdFO0Y3yt+Usxm5ZRsCx9V
 2I0H0KbI4V4S8lqZBKHJhrUeGZy/IOGd8hy+Bw9Uemu32831E+pVR2GA5
 ZRpOvlLr5jBWcU/9vbBOpDgp9yN/LzZaJHi4vXcHnyVE2+PejAlqMuj/2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="414060246"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="414060246"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:49:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="761417017"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="761417017"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:49:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230425105450.18441-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
 <20230425105450.18441-4-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:49:53 +0300
Message-ID: <877ctp240e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/dsi: Always do panel power
 up delay on icl+
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

On Tue, 25 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Windows doesn't try any tricks to optimize out the DSI panel power
> delays. Let's follow suit since anything else is entirely untested
> behaviour. Why would the VBT even specify a power on delay if we're
> not supposed to use it?
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Redundant after c8c2969bfcba ("drm/i915/dsi: Use unconditional msleep()
instead of intel_dsi_msleep()").

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 97b889f2b0e2..b35b69227e6f 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1152,7 +1152,7 @@ static void gen11_dsi_pre_pll_enable(struct intel_a=
tomic_state *state,
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>=20=20
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
> -	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
> +	msleep(intel_dsi->panel_on_delay);
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
>=20=20
>  	/* step2: enable IO power */

--=20
Jani Nikula, Intel Open Source Graphics Center

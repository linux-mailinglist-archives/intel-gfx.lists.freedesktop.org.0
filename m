Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A04633C80
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC22210E0CD;
	Tue, 22 Nov 2022 12:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97BA110E0CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120354; x=1700656354;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=V7AoCJpIuJdhPHfP+u197xS1B5ifhQa+nqg3XhXjIDQ=;
 b=MOXLtbdE0Pe+6GfbuFm8mG9tRP4s80AMYiI96IPU0LQzSuUGseJd46Zr
 lVPPA+q3LdGBcqtpnX0MCo5CMbdirpyW1cRmDL4EE4gGPpCArQ4raH8ta
 M/ME0PIUojnYfjVm3gQJB1RmwStGexYOc+DUwBLGhy7NBtElxYLFI0Dib
 +ha0sxBn7kZM4klRTYqbIaQJl5Uzi/feVEfWXgsJ0SWf3qPLolaPOC2kS
 DAfIn4S+7DkLspoSF7ke5Ynkbb56MlkYHSWZUcFV+2G3CPHf9Jclc36Pm
 uZzIX2ZKGTRyIZONo2Ob+f4YuNOHGb31rVBwDG1ymfPiGp8pT1Tu3g60Z w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313833222"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="313833222"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:32:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="816087329"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="816087329"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:32:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-3-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:32:11 +0200
Message-ID: <871qpvyxtg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/dvo/sil164: Nuke pointless
 return statements
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Drop the pointless return statements at the end of void
> functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/dvo_sil164.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/=
i915/display/dvo_sil164.c
> index 0dfa0a0209ff..32dd3b969946 100644
> --- a/drivers/gpu/drm/i915/display/dvo_sil164.c
> +++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
> @@ -205,7 +205,6 @@ static void sil164_mode_set(struct intel_dvo_device *=
dvo,
>  	  sil164_writeb(sil, 0x0c, 0x89);
>  	  sil164_writeb(sil, 0x08, 0x31);*/
>  	/* don't do much */
> -	return;
>  }
>=20=20
>  /* set the SIL164 power state */
> @@ -224,7 +223,6 @@ static void sil164_dpms(struct intel_dvo_device *dvo,=
 bool enable)
>  		ch &=3D ~SIL164_8_PD;
>=20=20
>  	sil164_writeb(dvo, SIL164_REG8, ch);
> -	return;
>  }
>=20=20
>  static bool sil164_get_hw_state(struct intel_dvo_device *dvo)

--=20
Jani Nikula, Intel Open Source Graphics Center

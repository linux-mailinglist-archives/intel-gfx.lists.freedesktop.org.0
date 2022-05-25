Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F1E533BC5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19EF110ECA7;
	Wed, 25 May 2022 11:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB1210ECA7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653478260; x=1685014260;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6MOhYqtaoLQVrSuYzbOZUjwHHaDdwC/3Jb72LpRrtVM=;
 b=IkPSn3gMTuTMOFWZjOh2LObgTZThDxH8lT+NZ6n0m7r3iB66rmvF6PoB
 Pi3WWC5+jRqyorzljWXJmRBnh2zcLuNystmBIF3caeO0S79dlWCsW1Cv6
 lIGl3Hv801DbjWGhCKpx2mJB/tipKSuJaedHX4HoA/p3WhhazsMzhbYkQ
 EDW8/1iE7LET5e6LX/Yskltf0t4+iQu9VnvVgMpXQPmTKIw+99CASe6MC
 PmMf5Uq5kXKsrrHpCtTrUdL4lOQ+0PhXcVqThZ6wc0sLfUeEgcqHkgTOq
 BlncSzCLt3n/ezidmQ63BN0o8AbOK+Ma/rVuwjREYqf+678IHznKxaYt+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="336841032"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336841032"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:30:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="601862533"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:30:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-24-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-24-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:30:55 +0300
Message-ID: <87fskxu9w0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 23/26] drm/i915: Require an exact DP link
 freq match for the DG2 PLL
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No idea why the DG2 PLL DP link frequency calculation is allowing
> a non-exact match. That makes no sense so get rid of it.

Cc: Matt.

This also makes the hdmi link rate check in the same function redundant.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/=
drm/i915/display/intel_snps_phy.c
> index 0dd4775e8195..877f9a4bd7a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -597,7 +597,7 @@ int intel_mpllb_calc_state(struct intel_crtc_state *c=
rtc_state,
>  		return -EINVAL;
>=20=20
>  	for (i =3D 0; tables[i]; i++) {
> -		if (crtc_state->port_clock <=3D tables[i]->clock) {
> +		if (crtc_state->port_clock =3D=3D tables[i]->clock) {
>  			crtc_state->mpllb_state =3D *tables[i];
>  			return 0;
>  		}

--=20
Jani Nikula, Intel Open Source Graphics Center

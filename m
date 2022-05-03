Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D8E518373
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 13:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F0B10F534;
	Tue,  3 May 2022 11:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8435C10F534
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 11:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651578400; x=1683114400;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=D4oxStzuGGvhJ+5L+gluEb1cQNnrNry0I8bTKJyxk4I=;
 b=clKb10V9EO8EAeXCY7y7M3PgkKjY/VxoyBMX1brTkr5xEle2wD5NSdIj
 /xecSZwJJ0DriFNyK1hEUkkZjzjqiyYP24FYofbOkwroAuTVVlcYqYOFJ
 qQ9Tqwy0zk39IKPrOysUzlTJWdD9qQW7DHAcvxV9FktCzmS/Zkjshb/b0
 U90DwoYhBeNWLLhN3aiPpBo34H4R9wPMPdjU8IdmvxchYxLom147tCg0F
 xI66bViY9xF79ZUksELUTJVTHoF72gnXBKKGPz8+heulBJJfXGThbnOJJ
 9sOtD4DgkiE5MJ7YZ+b4TGF2hzaO6kxcI20ldCwg3JsuaHHJE1ZjQqplN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="266300954"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="266300954"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 04:46:40 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="584165999"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 04:46:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220426193222.3422-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-11-ville.syrjala@linux.intel.com>
Date: Tue, 03 May 2022 14:46:35 +0300
Message-ID: <878rrirg84.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 10/18] drm/i915/pps: Reinit PPS delays
 after VBT has been fully parsed
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

On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> During the eDP probe we may not yet know the panel_type used
> to index the VBT panel tables. So the initial eDP probe will have
> to be done without that, and thus we won't yet have the PPS delays
> from the VBT. Once the VBT has been fully parse we should reinit
> the PPS delays to make sure it's fully accounted for.
>
> TODO: I wonder if we should do the eDP probe with some super safe
> PPS delayes (eg. max of all VBT PPS delays) just to make sure we
> don't violate the timings. Though typically the VBIOS/GOP do leave
> VDD enabled after boot in which case we don't actually have to care
> about the delays at all.

The trouble here is that the first init writes the registers, and the
second init reads them back as "bios set values", and never goes lower
than them. The late init can only increase the values based on VBT data.

So I'm holding off on the r-b on both the PPS changes for now because I
think this will need some kind of a redesign. Maybe we'll need to keep
track of the origins of the values at each step, and choose the right
ones at late init and skip the register writes if there are no
changes. I don't know.

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 0ae2be5c5318..15cbdc465a86 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1396,6 +1396,11 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
>  	intel_wakeref_t wakeref;
>=20=20
>  	with_intel_pps_lock(intel_dp, wakeref) {
> +		/* Reinit delays after per-panel info has been parsed from VBT */
> +		memset(&intel_dp->pps.pps_delays, 0, sizeof(intel_dp->pps.pps_delays));
> +		pps_init_delays(intel_dp);
> +		pps_init_registers(intel_dp, false);
> +
>  		if (edp_have_panel_vdd(intel_dp))
>  			edp_panel_vdd_schedule_off(intel_dp);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center

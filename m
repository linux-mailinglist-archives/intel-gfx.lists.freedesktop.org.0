Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D81C7A7A7E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 13:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C1810E48E;
	Wed, 20 Sep 2023 11:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2DAF10E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 11:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695209713; x=1726745713;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3STPOeMeSvM8IKTJJi6209HOpyzwlAoshRcT48U9ZpM=;
 b=Mi+cSjbPn99+Cjci78I02lAFaD5hsSXh593MCjplqZMe6xfuL8CN8rUB
 f6BeN9kUNXdOibW655g0tHVBNSaglXwn8t1wOiyiX/yv1cnWFT7Dzkf30
 fkwcSgLTe0ztZI2nekv2xR3/BTh7sTdsfIewUNgqZeKkEbdfC2qg/wXrI
 eIXHWw9VgpSRpovA1BWEWFvmOfJHBzv7fqtx3b0OhLViIzVWqUX7aGsSW
 W6pszL2rm+Y402C1qb3klVRUOBhViL1f/O6sUv8LSumHqVRG1q2282qbg
 GsLN+hwvsVc6tneNBspjpvUGmkOiPOwXPpsGSPKDENK4VIvNYJulBUl14 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="377502135"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="377502135"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="812112535"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="812112535"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:35:07 -0700
Date: Wed, 20 Sep 2023 14:35:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZQrZAPqERRrpechw@ideak-desk.fi.intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-18-imre.deak@intel.com>
 <ZQrQY60YmL3UDzsS@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQrQY60YmL3UDzsS@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 17/25] drm/i915/dp_mst: Fix PBN
 calculation with FEC overhead
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 01:58:43PM +0300, Ville Syrjälä wrote:
> On Thu, Sep 14, 2023 at 10:26:51PM +0300, Imre Deak wrote:
> > On 8b/10b MST links the PBN value for DSC streams must be calculated
> > accounting for the FEC overhead. The same applies to 8b/10b non-DSC
> > streams if there is another DSC stream on the same link. Fix up the PBN
> > calculation accordingly.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 01291bbb44693..c1fea894d3774 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -110,7 +110,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >  
> >  		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
> >  						       bpp << 4,
> > -						       false);
> > +						       (dsc || crtc_state->fec_enable) &&
> > +							!intel_dp_is_uhbr(crtc_state));
> 
> Why is this not simply 'fec_enable'?

For DSC it's enabled only after the link configuration is computed. I
can move that enabling from intel_dp_dsc_compute_config() earlier
instead.

> >  
> >  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
> >  						      connector->port,
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel

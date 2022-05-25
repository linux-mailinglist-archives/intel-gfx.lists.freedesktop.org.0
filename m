Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD02B5342C7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCF810E14C;
	Wed, 25 May 2022 18:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE82910E14C
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 18:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653502562; x=1685038562;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=p17Z0XUIrG2aUgZKGuZ5DddsTTjgRvX9z4LVGcS4Pro=;
 b=KfLZYDBvGV7X7uWZkbQnB2lXoMBe02cfuq1pn+Y+KYeTJsbMiSXjYTO2
 dHth4Gj3tRNcbNgUtwEGjmjEk8BP0MlNsmhUrvSSfI4AP5XXJr6xmUmsE
 7GT7rzcsMpbsuTZGgj123hIzf01TF2Nfir/Pc5PGNcrQr3rz9cyub352Y
 IdBXibBh11VMa2Caa1zgGdlN/oUCz2h607H9PGRH9DbiIrIqk/zg2bxeO
 7+QqFExGFa9TBjW/8yMq4UEJQC3tEL2+6Wd0DLooVc84kjbWuPiZiP84g
 wLZXtR463jp8rIrTR0X6AEd1G7bn5YaGW+c962irMM92tctOf3k7Rn3yp Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="255961137"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="255961137"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:16:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="745865305"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:16:02 -0700
Date: Wed, 25 May 2022 11:16:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yo5yYEtyYe4tyZiw@mdroper-desk1.amr.corp.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-24-ville.syrjala@linux.intel.com>
 <87fskxu9w0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fskxu9w0.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 25, 2022 at 02:30:55PM +0300, Jani Nikula wrote:
> On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > No idea why the DG2 PLL DP link frequency calculation is allowing
> > a non-exact match. That makes no sense so get rid of it.
> 
> Cc: Matt.
> 
> This also makes the hdmi link rate check in the same function redundant.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 

I don't remember any specific reason the code was written this way, so
the change looks okay to me.

Acked-by: Matt Roper <matthew.d.roper@intel.com>

> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > index 0dd4775e8195..877f9a4bd7a5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > @@ -597,7 +597,7 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
> >  		return -EINVAL;
> >  
> >  	for (i = 0; tables[i]; i++) {
> > -		if (crtc_state->port_clock <= tables[i]->clock) {
> > +		if (crtc_state->port_clock == tables[i]->clock) {
> >  			crtc_state->mpllb_state = *tables[i];
> >  			return 0;
> >  		}
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation

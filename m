Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 938D14333BD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 12:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB876EB83;
	Tue, 19 Oct 2021 10:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA7FE6EB83
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 10:41:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="215642607"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="215642607"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 03:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="566876228"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 19 Oct 2021 03:41:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 13:41:50 +0300
Date: Tue, 19 Oct 2021 13:41:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org, imre.deak@intel.com,
 matthew.d.roper@intel.com
Message-ID: <YW6g7rTv9bw50lIE@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-2-vandita.kulkarni@intel.com>
 <875ytts527.fsf@intel.com> <YW6arFCYguwWoQm3@intel.com>
 <87r1chqpfp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r1chqpfp.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi/xelpd: Fix the bit mask
 for wakeup GB
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

On Tue, Oct 19, 2021 at 01:28:10PM +0300, Jani Nikula wrote:
> On Tue, 19 Oct 2021, Ville Syrj�l� <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Oct 19, 2021 at 01:05:20PM +0300, Jani Nikula wrote:
> >> On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> >> 
> >> Commit message goes here.
> >> 
> >> > Fixes: f87c46c43175 ("drm/i915/dsi/xelpd: Add WA to program LP to HS wakeup guardband")
> >> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
> >> >  drivers/gpu/drm/i915/i915_reg.h        | 3 ++-
> >> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > index 9ee62707ec72..8c166f92f8bd 100644
> >> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > @@ -1271,7 +1271,7 @@ static void adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder)
> >> >  	if (DISPLAY_VER(i915) == 13) {
> >> >  		for_each_dsi_port(port, intel_dsi->ports)
> >> >  			intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
> >> > -				     TGL_DSI_CHKN_LSHS_GB, 0x4);
> >> > +				     TGL_DSI_CHKN_LSHS_GB_MASK, TGL_DSI_CHKN_LSHS_GB_MASK);
> >> 
> >> I think you mean the value should be TGL_DSI_CHKN_LSHS_GB.
> >
> > IMO the value should never be named that. It should be
> > TGL_DSI_CHKN_LSHS_GB_<something>.
> 
> Alternatively,
> 
> #define TGL_DSI_CHKN_LSHS_GB(byte_clocks)		REG_FIELD_PREP(TGL_DSI_CHKN_LSHS_GB_MASK, (byte_clocks))
> 
> and
> 
> intel_de_rmw(i915, TGL_DSI_CHKN_REG(port),
> 	     TGL_DSI_CHKN_LSHS_GB_MASK, TGL_DSI_CHKN_LSHS_GB(4));
> 
> ?
> 
> We're using the value in a specific place that references a w/a, so the
> magic 4 isn't too bad.

Yeah, for parametrized defines I think the "_<something>" is
not needed. Probably not even desired. The argument passed in
is the "_<something>" essentially.

-- 
Ville Syrj�l�
Intel

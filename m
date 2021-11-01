Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB468441937
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 10:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C92189A16;
	Mon,  1 Nov 2021 09:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18352899B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 09:56:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="211750787"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="211750787"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 02:56:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="488567557"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2021 02:56:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Nov 2021 11:56:54 +0200
Date: Mon, 1 Nov 2021 11:56:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YX+55t2bLt0EfHmy@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-10-ville.syrjala@linux.intel.com>
 <d1b010a61022dd0e80ec7f075fee40473b8b7bc1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d1b010a61022dd0e80ec7f075fee40473b8b7bc1.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/16] drm/i915: Query the vswing levels
 per-lane for icl mg phy
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 29, 2021 at 09:59:11PM +0000, Souza, Jose wrote:
> On Wed, 2021-10-06 at 23:49 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Prepare for per-lane drive settings by querying the desired vswing
> > level per-lane.
> > 
> > Note that the code only does two loops, with each one writing the
> > levels for two TX lanes.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 4c400f0e7347..1874a2ca8f3b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1163,7 +1163,6 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
> > -	int level = intel_ddi_level(encoder, crtc_state, 0);
> >  	const struct intel_ddi_buf_trans *trans;
> >  	int n_entries, ln;
> >  	u32 val;
> > @@ -1188,12 +1187,18 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
> >  
> >  	/* Program MG_TX_SWINGCTRL with values from vswing table */
> >  	for (ln = 0; ln < 2; ln++) {
> > +		int level;
> > +
> > +		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
> > +
> >  		val = intel_de_read(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port));
> >  		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
> >  		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
> >  			trans->entries[level].mg.cri_txdeemph_override_17_12);
> >  		intel_de_write(dev_priv, MG_TX1_SWINGCTRL(ln, tc_port), val);
> >  
> > +		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
> > +
> >  		val = intel_de_read(dev_priv, MG_TX2_SWINGCTRL(ln, tc_port));
> >  		val &= ~CRI_TXDEEMPH_OVERRIDE_17_12_MASK;
> >  		val |= CRI_TXDEEMPH_OVERRIDE_17_12(
> > @@ -1203,6 +1208,10 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
> >  
> >  	/* Program MG_TX_DRVCTRL with values from vswing table */
> >  	for (ln = 0; ln < 2; ln++) {
> > +		int level;
> > +
> > +		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
> > +
> >  		val = intel_de_read(dev_priv, MG_TX1_DRVCTRL(ln, tc_port));
> >  		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
> >  			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
> > @@ -1213,6 +1222,8 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
> >  			CRI_TXDEEMPH_OVERRIDE_EN;
> >  		intel_de_write(dev_priv, MG_TX1_DRVCTRL(ln, tc_port), val);
> >  
> > +		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
> 
> I believe our code style requires that we have spaces, so it should be (2 * ln + 1).

Neither is really good, but the one with spaces just looks ugly IMO.

> 
> With the answers requested in the previous patch:
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> 
> 
> > +
> >  		val = intel_de_read(dev_priv, MG_TX2_DRVCTRL(ln, tc_port));
> >  		val &= ~(CRI_TXDEEMPH_OVERRIDE_11_6_MASK |
> >  			 CRI_TXDEEMPH_OVERRIDE_5_0_MASK);
> 

-- 
Ville Syrjälä
Intel

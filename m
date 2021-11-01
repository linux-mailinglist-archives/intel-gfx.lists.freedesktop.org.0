Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF915441989
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 11:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA861899B5;
	Mon,  1 Nov 2021 10:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2FE89915
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 10:11:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="291825727"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="291825727"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="448906785"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 01 Nov 2021 03:11:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Nov 2021 12:11:13 +0200
Date: Mon, 1 Nov 2021 12:11:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YX+9QfQty2vn6yoP@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-9-ville.syrjala@linux.intel.com>
 <8c9df8f4160f3b1edd325d6d0721261922988d72.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c9df8f4160f3b1edd325d6d0721261922988d72.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 08/16] drm/i915: Query the vswing levels
 per-lane for icl combo phy
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

On Fri, Oct 29, 2021 at 09:57:02PM +0000, Souza, Jose wrote:
> On Wed, 2021-10-06 at 23:49 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Prepare for per-lane drive settings by querying the desired vswing
> > level per-lane.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index aa789cabc55b..4c400f0e7347 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1039,7 +1039,6 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> >  					 const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > -	int level = intel_ddi_level(encoder, crtc_state, 0);
> >  	const struct intel_ddi_buf_trans *trans;
> >  	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
> >  	int n_entries, ln;
> > @@ -1069,6 +1068,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> >  
> >  	/* Program PORT_TX_DW2 */
> >  	for (ln = 0; ln < 4; ln++) {
> > +		int level = intel_ddi_level(encoder, crtc_state, ln);
> > +
> >  		val = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(ln, phy));
> >  		val &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
> >  			 RCOMP_SCALAR_MASK);
> > @@ -1082,6 +1083,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> >  	/* Program PORT_TX_DW4 */
> >  	/* We cannot write to GRP. It would overwrite individual loadgen. */
> >  	for (ln = 0; ln < 4; ln++) {
> > +		int level = intel_ddi_level(encoder, crtc_state, ln);
> > +
> >  		val = intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
> >  		val &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
> >  			 CURSOR_COEFF_MASK);
> > @@ -1093,6 +1096,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> >  
> >  	/* Program PORT_TX_DW7 */
> >  	for (ln = 0; ln < 4; ln++) {
> > +		int level = intel_ddi_level(encoder, crtc_state, ln);
> > +
> >  		val = intel_de_read(dev_priv, ICL_PORT_TX_DW7_LN(ln, phy));
> >  		val &= ~N_SCALAR_MASK;
> >  		val |= N_SCALAR(trans->entries[level].icl.dw7_n_scalar);
> 
> The cover letter or one of the earlier patches should have some explanation about the reasons of this the group to lane conversion.

They do say it's for per-lane drive setings. Not rally sure what to add
to that.

> Reading one of the later patches I understood is because DP 2.0 allows different level per lane but would be nice to know for sure the reason.

It has always been a feature of DP, we just never implemented it for
whatever reason.

> 
> What if it is only using 2 lanes? Programming disabled lanes will cause any issue?

Depends on whether the registers are available or not. For CHV I know
the unused lanes will be fully powered off and you can't actually access
the registers (and vlv_dpio_read() will actually WARN when it sees the
~0 value from an inaccessible register). For later platforms I don't
actually know what happens. We don't have an equivalent of that CHV WARN
but I would hope that we'd get an unclaimed reg warning if the register
is inaccessible.

Although I suppose there's isn't any real harm in poking inaccssible
registers. The reads should just return all 0s or all 1s, and the
writes go to /dev/null.

-- 
Ville Syrjälä
Intel

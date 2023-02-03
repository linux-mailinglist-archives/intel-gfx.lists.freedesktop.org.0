Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB297689820
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA72610E02C;
	Fri,  3 Feb 2023 11:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA9810E02C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 11:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675425121; x=1706961121;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FpHuQRQf38MtMz+PWO2Rm+YTwvnAiSTsFEbVzFJTGTw=;
 b=HOE70VnsY2hUxUUjfjjfe85xBJ8Do1yD8RcaIu7GDFn5hn4lpQc0aqdr
 p7yCBcs688tGDXWTE7/7ny3WR4xVXirGf+ELVqVRqn2mEzJrGhip1QfPL
 B112ABIiYlYxIjx2WBQ2wp4/+yb3qyfF0wDnwDn4IfG8T0QEgkCHfZyV4
 qOXDMFmYTVQF12KAe4RvlQ0d/i+rIk8BS8InECey5cCvj5d26PJPO8vVM
 /OeB2JxzaS3V1wr6uNVIYXhaOkLcA0dbOpq0q5EwbP9oqD7FK4HgyE3gx
 iW9fs6WI95ciG0wnVjEUM+K4f/Gt49W8MpV1wGuZ8sIfrQE1dFUr0zJEj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="312385453"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="312385453"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:52:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="659074307"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="659074307"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 03 Feb 2023 03:51:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Feb 2023 13:51:57 +0200
Date: Fri, 3 Feb 2023 13:51:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <Y9z1XZPaC1V9rFyy@intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-6-ville.syrjala@linux.intel.com>
 <PH7PR11MB59814E671E2CB6628C3AF8A2F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB59814E671E2CB6628C3AF8A2F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Dump the DSB command
 buffer when DSB fails
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

On Thu, Feb 02, 2023 at 05:09:05PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, January 18, 2023 10:01 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Dump the DSB command
> > buffer when DSB fails
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Dump the full DSB command buffers and head/tail pointers if the the DSB
> > hasn't completed its job in time.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c | 33 +++++++++++++++++++++---
> >  1 file changed, 30 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 9e25b1345927..f454329b6901 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -92,6 +92,22 @@ static bool assert_dsb_has_room(struct intel_dsb
> > *dsb)
> >  			 crtc->base.base.id, crtc->base.name, dsb->id);  }
> > 
> > +static void intel_dsb_dump(struct intel_dsb *dsb) {
> > +	struct intel_crtc *crtc = dsb->crtc;
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	const u32 *buf = dsb->cmd_buf;
> > +	int i;
> > +
> > +	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
> > +		    crtc->base.base.id, crtc->base.name, dsb->id);
> > +	for (i = 0; i < ALIGN(dsb->free_pos, 64 / 4); i += 4)
> > +		drm_dbg_kms(&i915->drm,
> > +			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
> > +			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
> > +	drm_dbg_kms(&i915->drm, "}\n");
> > +}
> > +
> >  static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
> >  			enum dsb_id id)
> >  {
> > @@ -260,10 +276,21 @@ void intel_dsb_wait(struct intel_dsb *dsb)
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  	enum pipe pipe = crtc->pipe;
> > 
> > -	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1))
> > +	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
> > +		u32 offset = i915_ggtt_offset(dsb->vma);
> > +
> > +		intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
> > +			       DSB_ENABLE | DSB_HALT);
> 
> One doubt - Why DSB_ENABLE bit is set here? Is setting DSB_HALT not sufficient.
> Other than above the changes look good to me.

Clearing the enable with would reset the DSB, so the halt would
seem superfluous in that case. And I *think* a reset does clear
DSB_CURRENT_HEAD so the debugs wouldn't provide any helpful data
in that case. I'll need to double check that I suppose, but at
least right now my DSB_CURRENT_HEAD does read zero while the DSB
isn't actively executing.

Though I suppose we could make do without the halt entirely and
just read the registers while the DSB might still be making
progress. Admittedly I suppose it still might be even with the
halt as I don't think the halt is instantaneous.

-- 
Ville Syrjälä
Intel

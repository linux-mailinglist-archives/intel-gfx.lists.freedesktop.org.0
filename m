Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69D76C36F3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 17:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EDD810E7E9;
	Tue, 21 Mar 2023 16:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D3CE10E7DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679416193; x=1710952193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Mbx4AKJZ+hI7tKcfKSLci79iv3Wq22mFiHY7Cf7KiDM=;
 b=QZ+5AcjcozvRAkdjqZGavHoMW5z8edc2/UnzS/u6n6i2u/4lindaggrA
 jfb1nMQsSMPoG30jkOhZdcvQdHFf1/MaYq6OEy2zfjBef4+/frV1dAAqW
 oq9I7biz5PzljVDfWIWT/EmNUL1hsJ3zzWWoSJG3jnRUWzahNO4xuohmj
 EaGohcJzNZBXvV5sTYm3KeK5lodd+kxZVwCQZMMi7ZNDGpELYxoIJAUKh
 xc6EEgcF6RoJwYeoGjf3++UcyrlHEKaQrQkLjmFy2wA3HyIi2+WmvFSOT
 H7Pez9ATNCul4KIK2B2eBYSYPTzkaScT/Lz9gUa8lkEAqenytnXmKX1vM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="322837062"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="322837062"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 09:29:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714057570"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="714057570"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2023 09:29:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Mar 2023 18:29:49 +0200
Date: Tue, 21 Mar 2023 18:29:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBnbfdZG1h2Kle/h@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
 <20230320165945.3564891-4-jouni.hogander@intel.com>
 <ZBnQmxYHDiii0FGn@intel.com>
 <3949ac3ef5e631323813faac33053d144d02b810.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3949ac3ef5e631323813faac33053d144d02b810.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/psr: Check that vblank is
 long enough for psr2
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

On Tue, Mar 21, 2023 at 04:14:57PM +0000, Hogander, Jouni wrote:
> On Tue, 2023-03-21 at 17:43 +0200, Ville Syrjälä wrote:
> > On Mon, Mar 20, 2023 at 06:59:44PM +0200, Jouni Högander wrote:
> > > Ensure vblank >= psr2 vblank
> > > where
> > > Psr2 vblank = PSR2_CTL Block Count Number maximum line count.
> > > 
> > > Bspec: 71580, 49274
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 1050d777a108..1b40d9c73c18 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -958,6 +958,14 @@ static bool intel_psr2_config_valid(struct
> > > intel_dp *intel_dp,
> > >                 return false;
> > >         }
> > >  
> > > +       /* Vblank >= PSR2_CTL Block Count Number maximum line count
> > > */
> > > +       if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
> > > +           crtc_state->hw.adjusted_mode.crtc_vblank_start < 12) {
> > 
> > Why 12? Shouldn't it be based on the wake_lines/BLOCK_COUNT_NUM
> > stuff?
> 
> I took this directly from Bspec. I think your suggestions make sense. I
> will experiment them and come back on this.
> 
> > 
> > 
> > If so I would suggest we try someting like this:
> > 
> > psr2_block_count_lines()
> > {
> >         return ...wake_lines... ? 12 : 8;

I guess we could even make that 'roundup(max(wake_lines), 4)'
to be more future proof.

Hmm, except that might not be all that future proof if the
hardware didn't support all block size between the min/max.
Eg. if it only supported 2,3,5 blocks.

So I guess we might want this thing to return only actually
supported numbers.

> > }
> > 
> > psr2_block_count()
> > {
> >         return psr2_block_count_lines() / 4;
> > }
> > 
> > if (vblank_lengh < psr2_block_count_lines())
> >         fail;
> > 
> > if (psr_block_count() > 2)
> >         val |= BLOCK_COUNT_NUM_3;
> > else
> >         val |= BLOCK_COUNT_NUM_2;
> > 
> > > +               drm_dbg_kms(&dev_priv->drm,
> > > +                           "PSR2 not enabled, too short vblank
> > > time\n");
> > > +               return false;
> > > +       }
> > > +
> > >         if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> > >                 if (!intel_psr2_sel_fetch_config_valid(intel_dp,
> > > crtc_state) &&
> > >                     !HAS_PSR_HW_TRACKING(dev_priv)) {
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel

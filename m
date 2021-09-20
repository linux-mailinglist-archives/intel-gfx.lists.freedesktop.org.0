Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C8641269B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 21:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B2C6E859;
	Mon, 20 Sep 2021 19:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B156E833
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 19:06:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="223242643"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="223242643"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 12:06:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="532394306"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 12:06:15 -0700
Date: Mon, 20 Sep 2021 22:06:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <20210920190612.GA830348@ideak-desk.fi.intel.com>
References: <20210917205241.231527-1-jose.souza@intel.com>
 <20210917210557.GH729837@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210917210557.GH729837@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/dmc: Set
 DC_STATE_DEBUG_MASK_CORES after firmware load
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

On Sat, Sep 18, 2021 at 12:06:01AM +0300, Imre Deak wrote:
> On Fri, Sep 17, 2021 at 01:52:39PM -0700, José Roberto de Souza wrote:
> > Specification asks for DC_STATE_DEBUG_MASK_CORES to be set for all
> > platforms that supports DMC, not only for geminilake and broxton.
> 
> According to the spec it's only required for BXT and GLK, see
> Bspec 4234, 49193, 49194.
> 
> The register description is a bit vague, would need to be clarified
> probably.

The spec got updated now for TGL+, thanks. Provided that you can
get the spec up-to-date for GEN9 platforms as well:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> 
> > While at is also taking the oportunity to simply the code.
> > 
> > BSpec: 7402
> > BSpec: 49436
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 16 +++-------------
> >  1 file changed, 3 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index b0268552b2863..2dc9d632969db 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -255,20 +255,10 @@ intel_get_stepping_info(struct drm_i915_private *i915,
> >  
> >  static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
> >  {
> > -	u32 val, mask;
> > -
> > -	mask = DC_STATE_DEBUG_MASK_MEMORY_UP;
> > -
> > -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > -		mask |= DC_STATE_DEBUG_MASK_CORES;
> > -
> >  	/* The below bit doesn't need to be cleared ever afterwards */
> > -	val = intel_de_read(dev_priv, DC_STATE_DEBUG);
> > -	if ((val & mask) != mask) {
> > -		val |= mask;
> > -		intel_de_write(dev_priv, DC_STATE_DEBUG, val);
> > -		intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
> > -	}
> > +	intel_de_rmw(dev_priv, DC_STATE_DEBUG, 0,
> > +		     DC_STATE_DEBUG_MASK_CORES | DC_STATE_DEBUG_MASK_MEMORY_UP);
> > +	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
> >  }
> >  
> >  /**
> > -- 
> > 2.33.0
> > 

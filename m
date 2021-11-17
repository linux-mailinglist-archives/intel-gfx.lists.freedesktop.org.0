Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4467D454D78
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 19:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61666E829;
	Wed, 17 Nov 2021 18:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8004B6E7E2;
 Wed, 17 Nov 2021 18:54:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="234267575"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="234267575"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 10:54:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="586755727"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 17 Nov 2021 10:54:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Nov 2021 20:54:26 +0200
Date: Wed, 17 Nov 2021 20:54:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YZVP4oz4Whxptqn0@intel.com>
References: <20211116174818.2128062-1-matthew.d.roper@intel.com>
 <20211116174818.2128062-6-matthew.d.roper@intel.com>
 <YZVNR9i5nkJZIORP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YZVNR9i5nkJZIORP@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/dg2: extend Wa_1409120013
 to DG2
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 17, 2021 at 08:43:19PM +0200, Ville Syrjälä wrote:
> On Tue, Nov 16, 2021 at 09:48:18AM -0800, Matt Roper wrote:
> > From: Matt Atwood <matthew.s.atwood@intel.com>
> > 
> > Extend existing workaround 1409120013 to DG2.
> 
> I don't see this listed for DG2.
> 
> > 
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 89dc7f69baf3..e721c421cc58 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -7444,9 +7444,9 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
> >  
> >  static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> >  {
> > -	/* Wa_1409120013:tgl,rkl,adl-s,dg1 */
> > +	/* Wa_1409120013:tgl,rkl,adl-s,dg1,dg2 */
> >  	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> > -	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))
> > +	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) || IS_DG2(dev_priv))

AFAIK we're not even calling this function on dg2, so this is just dead
code. And in fact without dg2 this seems to be the same as DISPLAY_VER==12
so we shuld stop calling it on adl-p as well. We could then rip out most
of the platform checks in here.

> >  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> >  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> >  
> > -- 
> > 2.33.0
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel

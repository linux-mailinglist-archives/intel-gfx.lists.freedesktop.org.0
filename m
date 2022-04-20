Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 312F5509073
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 21:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D36C10F1B1;
	Wed, 20 Apr 2022 19:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9FE10F1B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 19:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650482855; x=1682018855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DuuxjYDQZdRhGm2nBAYJf2IM/Pdx3Kq8HaBK/RhE0xA=;
 b=cBvw/hthZUu6HXQiTUU6wT46F1yXdQaWUU/jHlhZ5obPX6bc4nhLcg69
 myk4ohVYhmNsqWi1LJVdIzCR4KSs+oZOXcTmDTC+bwFVk7q59U7vqUP5C
 g3APO99u/+pNXWhZTZRRvTl5e7vfcNkaZkwDInIzx9x00ijobM8O6bipO
 aJ2MrueGAeWLTPlLyKuWsG86UcNL7R+On0F7dZd7qJ9vIes1WFwtkeokZ
 YFmT7NIdLuAHt5ecCXJJ3HyzNQJIwHONxIDl9BjKuQ+W21Nf+GPvkSlQA
 xOHmE/m9wmSBSOWf+bp64RPxXZxVRGkrUggYub3Bmztsq8WPbdt9+RsL1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="261739071"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="261739071"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:27:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="576761570"
Received: from nshlomov-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.255.39.73])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:27:34 -0700
Date: Wed, 20 Apr 2022 15:27:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YmBeohtBLI4GblB4@intel.com>
References: <20220420190921.419345-1-rodrigo.vivi@intel.com>
 <YmBdL2A3xOumaL4Z@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YmBdL2A3xOumaL4Z@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable DC5 before going to DC9
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

On Wed, Apr 20, 2022 at 10:21:19PM +0300, Imre Deak wrote:
> On Wed, Apr 20, 2022 at 03:09:21PM -0400, Rodrigo Vivi wrote:
> > According to BSPec:
> > 	Sequence to Allow DC9:
> > 		1. Follow Sequence to Disallow DC5.
> > 
> > which is:
> > 	Sequence to Disallow DC5 and DC6
> > 		Set DC_STATE_EN Dynamic DC State Enable = "Disable".
> > 
> > I understand that we haven't had any issue so far. But since
> > DC9 is a software thing, it is better to disable DC5 before
> > to avoid any conflict. And respect the spec to avoid potential
> > future issues.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 6a5695008f7c..b3cf5182044f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -883,6 +883,9 @@ static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
> >  {
> >  	assert_can_enable_dc9(dev_priv);
> >  
> > +	/* Disable DC5 before enabling DC9 */
> > +	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> 
> For DC9 DMC should be disabled already, along with DC states and other
> dependencies like power well 1, etc. That happens in
> bxt/icl_display_core_uninit().

but that wasn't on the suspend_late path... but Anusha is right and
probably the check in the assert is already enough for now... if we
notice that assert is coming we do something else...

I was willing to avoid indirection and the risk of changing something
and this dc5 disable getting forgotten, but with the assert we are
probably good...

let's just ignore this patch...

> 
> > +
> >  	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
> >  	/*
> >  	 * Power sequencer reset is not needed on
> > -- 
> > 2.34.1
> > 

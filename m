Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116C68CA10B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 19:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE31E10E418;
	Mon, 20 May 2024 17:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BwVvQkKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8462F10E524
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 17:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716224929; x=1747760929;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GrejBLazsRtoIlvx/9feza19DSc8IUPpGOawsXvSfkw=;
 b=BwVvQkKa5hy+JnjhWVQ2gDAv6HNMLCuOUJzqiDOItWlxQRuOf55hpvx1
 7poZ6tiSZW8sS+sY2c6lrIEzDDIZMbJEoGVWJj+lZpTSdv/eFtI4eydSk
 XHb+a4oYqaHfGVTmabg7//BuBLA5wbkazzzEAHCZeVoPyZheZ8giv9Pee
 awVOIoJdw4saw3LTuitycNglw4dpyN6wJ8WREs6B9WBLqqtp9tv6J8Lyv
 Yo4B2swM834tv57TgUO4ac9LmpnBOjRehC+TKQyl/vyIfLrMYHBjCjQ1k
 vKMSZkRzHUU51puOqG7+pasLlTwOuAloyeu4eyVH6yqYhUlRjqRYgANbB g==;
X-CSE-ConnectionGUID: 6IG1HPchRQuzshIvEBF0pA==
X-CSE-MsgGUID: qeET1RlrTQmi6n7QHZKrnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12556912"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12556912"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 10:08:49 -0700
X-CSE-ConnectionGUID: cJE3+avZSoSoMb4H9R1XyA==
X-CSE-MsgGUID: VUNRRL+ZTjajwK3sT1P0MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32593581"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 10:08:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 20:08:46 +0300
Date: Mon, 20 May 2024 20:08:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/13] drm/i915: Add separate define for
 SEL_FETCH_CUR_CTL()
Message-ID: <ZkuDnoMpZ5qe3Tr3@intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-4-ville.syrjala@linux.intel.com>
 <875xv8vnnr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875xv8vnnr.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Mon, May 20, 2024 at 12:27:20PM +0300, Jani Nikula wrote:
> On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Split the cursor stuff from the rest of the selective fetch
> > plane registers so that we can collect all cursor registers
> > in intel_cursor_regs.h. Also take the opportunity to rename
> > the registers to match the spec.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cursor.c      | 6 +++---
> >  drivers/gpu/drm/i915/display/intel_cursor_regs.h | 5 +++++
> >  2 files changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index c780ce146131..b44809899502 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -508,7 +508,7 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
> >  	if (!crtc_state->enable_psr2_sel_fetch)
> >  		return;
> >  
> > -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> > +	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), 0);
> >  }
> >  
> >  static void wa_16021440873(struct intel_plane *plane,
> > @@ -523,7 +523,7 @@ static void wa_16021440873(struct intel_plane *plane,
> >  	ctl &= ~MCURSOR_MODE_MASK;
> >  	ctl |= MCURSOR_MODE_64_2B;
> >  
> > -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), ctl);
> > +	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
> >  
> >  	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
> >  		       PIPESRC_HEIGHT(et_y_position));
> > @@ -548,7 +548,7 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
> >  					  val);
> >  		}
> >  
> > -		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> > +		intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe),
> >  				  plane_state->ctl);
> >  	} else {
> >  		/* Wa_16021440873 */
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> > index 270c26c2e6df..ab02d497fba6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
> > @@ -95,4 +95,9 @@
> >  #define _CUR_BUF_CFG_B		0x7117c
> >  #define CUR_BUF_CFG(pipe)	_MMIO_PIPE((pipe), _CUR_BUF_CFG_A, _CUR_BUF_CFG_B)
> >  
> > +#define _SEL_FETCH_CUR_CTL_A	0x70880 /* mtl+ */
> > +#define _SEL_FETCH_CUR_CTL_B	0x71880
> > +#define SEL_FETCH_CUR_CTL(pipe)	_MMIO_PIPE((pipe), _SEL_FETCH_CUR_CTL_A, _SEL_FETCH_CUR_CTL_A)
> 
> _SEL_FETCH_CUR_CTL_A is doubled, the latter should be _B.

Derp. I also don't know where I got that mtl+ note. I must have been
thinking about early transport or something, but selective fetch
in general should be a thing for tgl+.

> 
> With that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> I must admit I was trying to follow how PLANE_SEL_FETCH_CTL(pipe,
> CURSOR_A) ends up being identical to this new SEL_FETCH_CUR_CTL(pipe),
> but holy crap it trips my brain completely. How did we come up with so
> many levels of abstractions for this stuff, in such complicated ways?!
> :o
> 
> 
> > +#define   SEL_FETCH_CUR_CTL_ENABLE	REG_BIT(31)
> > +
> >  #endif /* __INTEL_CURSOR_REGS_H__ */
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D85F5A6C2B1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 19:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC9210E820;
	Fri, 21 Mar 2025 18:42:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLa2iJFR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285F410E820;
 Fri, 21 Mar 2025 18:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742582574; x=1774118574;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sQAJ9IeyXTv8bGIEfeNjJZ0ic8F3a3zCrzX1r7IlTIc=;
 b=jLa2iJFRGqm3NGIF5IQ9y24ql9PlLreNffS2paTIDxoWr/MT/LwC8ulO
 FhVdDEKVMPtI6EqjY2fsqjAcOJE7L3Sx81GOiFfY5qAgAIVtRZjtdSm1V
 N4LZ8ShIFceor0/amRYUPx0LhT16gvv+tqeA2GsWGePSZa+SdwuGhRsHl
 IreKSIRPzPKvuys65yn8rY5ZjN6+KQJ3kunW/jDPP0qKH0ePGyVcXWUHM
 WhmUxrej+zXjMV+dzBrLrCWyLc8XyDd0CGcYsvNpmifB2CraCD8ZvD81c
 gxRCjxeMRDxUIDo+71SAqPGc2FuD9URaYVmocXTaJLbV4klOYMobfDp1b g==;
X-CSE-ConnectionGUID: PW62vHyFSYWJxeJYVZ0jPQ==
X-CSE-MsgGUID: Nh2Gg92NRTy3ahfSlMfHaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="55239435"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="55239435"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 11:42:49 -0700
X-CSE-ConnectionGUID: N4YoLcNwSLSNdPYSe2X01g==
X-CSE-MsgGUID: wuxJvUtNRJCT9hGRY9T/NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128698908"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 11:42:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 20:42:45 +0200
Date: Fri, 21 Mar 2025 20:42:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
Message-ID: <Z92zJQsjTVs4FDef@intel.com>
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
 <20250321112650.3594298-2-ankit.k.nautiyal@intel.com>
 <Z92werPIFgvyjcr_@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z92werPIFgvyjcr_@intel.com>
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

On Fri, Mar 21, 2025 at 08:31:22PM +0200, Ville Syrjälä wrote:
> On Fri, Mar 21, 2025 at 04:56:47PM +0530, Ankit Nautiyal wrote:
> > LINK_N register has bits 31:24 for extended link N value used for
> > HDMI2.1 and for an alternate mode of operation of DP TG DDA
> > (Bspec:50488).
> > 
> > Add support for these extra bits.
> > 
> > For displays with version 14 or higher, the `PIPE_LINK_N1_EXTENDED_MASK`
> > (bits 31:24) is used to handle the extended link N bits.
> > For older platforms, the `DATA_LINK_M_N_MASK` (bits 23:0) is used to
> > handle the standard link N bits. This distinction ensures clarity and
> > maintains the semantics for platforms that support the extended bits.
> > In subsequent changes the logic is updated to conditionally apply the
> > extended link N bits.
> > 
> > v2: Drop extra link_n_ext member. (Jani)
> > v3: Avoid link_n_ext in set_m_n helper. (Jani)
> > v4: Rebase, and update commit message.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++--
> >  drivers/gpu/drm/i915/i915_reg.h              |  2 ++
> >  2 files changed, 18 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 3afb85fe8536..8fb0df388571 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2583,14 +2583,22 @@ void intel_set_m_n(struct intel_display *display,
> >  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> >  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
> >  {
> > +	u32 link_n = m_n->link_n;
> > +
> >  	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> >  	intel_de_write(display, data_n_reg, m_n->data_n);
> >  	intel_de_write(display, link_m_reg, m_n->link_m);
> > +
> > +	if (DISPLAY_VER(display) >= 14)
> > +		link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
> > +	else
> > +		link_n &= DATA_LINK_M_N_MASK;
> 
> There should never be anything in those bits or we've screwed up
> somewhere.
> 
> The actual w/a for the M/N > 10.0 looks like a pile of annoying
> hacks in the hardware. I wonder if we could just live without it
> to avoid complicating the code?
> 
> As for the 10.0 limit, I suspect there's nothing platform specific
> about it and it's always been there. It's just not possible to hit
> it with 8b/10b encoding.

Hmm. Maybe it would be possible to hit it with DSC+bigjoiner on ICL+.

Without some kind of joiner it's definitely not possible due to
cdclk limiting the max dotclock well below 1.62 GHz.

> The correct place to handle this would seem
> to be the link rate calculation, ie. just bump up the link rate until
> the limit is no longer an issue (or error out if we can't increase the
> link rate sufficiently).
> 
> > +
> >  	/*
> >  	 * On BDW+ writing LINK_N arms the double buffered update
> >  	 * of all the M/N registers, so it must be written last.
> >  	 */
> > -	intel_de_write(display, link_n_reg, m_n->link_n);
> > +	intel_de_write(display, link_n_reg, link_n);
> >  }
> >  
> >  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
> > @@ -3279,7 +3287,13 @@ void intel_get_m_n(struct intel_display *display,
> >  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
> >  {
> >  	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
> > -	m_n->link_n = intel_de_read(display, link_n_reg) & DATA_LINK_M_N_MASK;
> > +	m_n->link_n = intel_de_read(display, link_n_reg);
> > +
> > +	if (DISPLAY_VER(display) >= 14)
> > +		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
> > +	else
> > +		m_n->link_n &= DATA_LINK_M_N_MASK;
> > +
> >  	m_n->data_m = intel_de_read(display, data_m_reg) & DATA_LINK_M_N_MASK;
> >  	m_n->data_n = intel_de_read(display, data_n_reg) & DATA_LINK_M_N_MASK;
> >  	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(display, data_m_reg)) + 1;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index c5064eebe063..a2054aced4f8 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1869,6 +1869,8 @@
> >  
> >  #define _PIPEA_LINK_N1		0x60044
> >  #define _PIPEB_LINK_N1		0x61044
> > +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
> > +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
> >  #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
> >  
> >  #define _PIPEA_LINK_M2		0x60048
> > -- 
> > 2.45.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel

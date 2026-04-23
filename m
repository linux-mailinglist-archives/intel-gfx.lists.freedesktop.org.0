Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBS7FcX56WnkpwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 12:51:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC71D450ED3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 12:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD7610F090;
	Thu, 23 Apr 2026 10:51:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="moxioZi5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDC410F090;
 Thu, 23 Apr 2026 10:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776941507; x=1808477507;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rp+xrYA+6sQNmRGPSVTNdYV92m0wXo+ZWn3+520Qp/U=;
 b=moxioZi5fxeN9DsuC0wSIdODxRsw9drOKTTgsanEe5SwQGYvT7Wgx0yh
 9HfGmsFVfxLg7Uk9S7axtSGX3eGHYVUy/naDh4GjKk6ywwnTGmm7yyMMO
 9EFss7dU8At/jfeEKtclZHOuKwDQmhYATDdfPMPH44/4z0t+N2LyQI6Gs
 kTdVpvbPzjEuyQWCnk0uzQokx6x67Ny9SbpsqrbwCTGz4Q/Btzg90zQXg
 23NlEVWoK3p7BBnLcIOysaq+kk5MGp1zGveq1hsCZiSeJpNdXTaxv+9Fl
 BsQ63SvlD7Ah23m37zHUparijJzC1XmgZkUT0JSG/fXxCwt+OpAK1nPUv w==;
X-CSE-ConnectionGUID: G3nc5S75R3yaoKolalGunw==
X-CSE-MsgGUID: +hycj7ZsSgm1Oa692mYZCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="78097603"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="78097603"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 03:51:42 -0700
X-CSE-ConnectionGUID: 6Y3j79wRTV2pMy+lpre7cQ==
X-CSE-MsgGUID: 0f1lv+wLR+aVTUTnBk9RGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="270743213"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 03:51:39 -0700
Date: Thu, 23 Apr 2026 13:51:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Message-ID: <aen5uNCEibNR7IGP@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-4-animesh.manna@intel.com>
 <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
 <DS0PR11MB804961654148D027B4F03601F9202@DS0PR11MB8049.namprd11.prod.outlook.com>
 <aeIK8oEzWAkDJw5i@intel.com>
 <SN7PR11MB8042195650F92982C02967A8F92A2@SN7PR11MB8042.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR11MB8042195650F92982C02967A8F92A2@SN7PR11MB8042.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: BC71D450ED3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 04:55:55AM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Friday, April 17, 2026 3:57 PM
> > To: Manna, Animesh <animesh.manna@intel.com>
> > Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org;
> > intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> > Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > 
> > On Fri, Apr 17, 2026 at 06:03:52AM +0000, Manna, Animesh wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Nikula, Jani <jani.nikula@intel.com>
> > > > Sent: Tuesday, April 14, 2026 7:03 PM
> > > > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > > > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > > > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>; Manna,
> > > > Animesh <animesh.manna@intel.com>
> > > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > > >
> > > > On Sun, 12 Apr 2026, Animesh Manna <animesh.manna@intel.com>
> > wrote:
> > > > > Timing registers are separate for CMTG, read transcoder register
> > > > > and program cmtg transcoder with those values.
> > > > >
> > > > > v2:
> > > > > - Use sw state instead of reading directly from hardware. [Jani]
> > > > > - Move set_timing later after encoder enable. [Dibin]
> > > > >
> > > > > v3:
> > > > > - Replace id with trans. [Jani]
> > > > > - Program cmtg set_timing() along with primary transcoder timing.
> > > > >
> > > > > v4:
> > > > > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > > > > multiplication. [Jani]
> > > > >
> > > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 61
> > ++++++++++++++++++-
> > > > >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
> > > > >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 ++++++++++
> > > > >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> > > > >  4 files changed, 98 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > index 403f9e10a8dc..a3db1368bd83 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > @@ -4,7 +4,6 @@
> > > > >   */
> > > > >
> > > > >  #include <linux/string_choices.h> -#include <linux/types.h>
> > > > >
> > > > >  #include <drm/drm_device.h>
> > > > >  #include <drm/drm_print.h>
> > > > > @@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const struct
> > > > intel_crtc_state *crtc_state)
> > > > >  	if (clk_sel_set)
> > > > >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> > > > clk_sel_set);  }
> > > > > +
> > > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > > +*crtc_state, bool lrr) {
> > > > > +	struct intel_display *display = to_intel_display(crtc_state);
> > > > > +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > > > > +	const struct drm_display_mode *adjusted_mode = &crtc_state-
> > > > >hw.adjusted_mode;
> > > > > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start,
> > > > > +crtc_vblank_end;
> > > > > +
> > > > > +	if (!intel_cmtg_is_allowed(crtc_state))
> > > > > +		return;
> > > > > +
> > > > > +	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
> > > > > +
> > > > > +	/*
> > > > > +	 * For platforms that always use VRR Timing Generator, the
> > > > VTOTAL.Vtotal
> > > > > +	 * bits are not required. Since the support for these bits is going to
> > > > > +	 * be deprecated in upcoming platforms, avoid writing these bits
> > > > > +for
> > > > the
> > > > > +	 * platforms that do not use legacy Timing Generator.
> > > > > +	 */
> > > > > +	crtc_vtotal = 1;
> > > > > +
> > > > > +	/*
> > > > > +	 * VBLANK_START not used by hw, just clear it
> > > > > +	 * to make it stand out in register dumps.
> > > > > +	 */
> > > > > +	crtc_vblank_start = 1;
> > > > > +
> > > > > +	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
> > > > > +
> > > > > +	if (lrr) {
> > > > > +		intel_de_write(display,
> > > > TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > > +			       VACTIVE(crtc_vdisplay - 1) |
> > > > > +			       VTOTAL(crtc_vtotal - 1));
> > > > > +		intel_de_write(display,
> > > > TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > > +			       VBLANK_START(crtc_vblank_start - 1) |
> > > > > +			       VBLANK_END(crtc_vblank_end - 1));
> > > > > +		return;
> > > > > +	}
> > > > > +
> > > > > +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> > > > > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > > > > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > > > > +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> > > > > +		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> > > > > +		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > > > > +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> > > > > +		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> > > > > +		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> > > > > +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > > +		       VACTIVE(crtc_vdisplay - 1) |
> > > > > +		       VTOTAL(crtc_vtotal - 1));
> > > > > +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > > +		       VBLANK_START(crtc_vblank_start - 1) |
> > > > > +		       VBLANK_END(crtc_vblank_end - 1));
> > > > > +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> > > > > +		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> > > > > +		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> > > > > +	intel_de_write(display,
> > > > TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> > > > > +		       crtc_state->set_context_latency); }
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > index 660ec513626e..53a44f505dd2 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > @@ -6,9 +6,12 @@
> > > > >  #ifndef __INTEL_CMTG_H__
> > > > >  #define __INTEL_CMTG_H__
> > > > >
> > > > > +#include <linux/types.h>
> > > > > +
> > > > >  struct intel_display;
> > > > >  struct intel_crtc_state;
> > > > >
> > > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > > +*crtc_state, bool lrr);
> > > > >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > > > > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > > > > *display);  bool intel_cmtg_is_allowed(const struct
> > > > > intel_crtc_state *crtc_state); diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > index 4a80b88d88fd..f7fc812d8ef0 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > @@ -20,4 +20,35 @@
> > > > >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> > > > >  #define  CMTG_ENABLE			REG_BIT(31)
> > > > >
> > > > > +#define _TRANS_HTOTAL_CMTG_A		0x6F000
> > > > > +#define _TRANS_HTOTAL_CMTG_B		0x6F100
> > > > > +#define TRANS_HTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > > +						    _TRANS_HTOTAL_CMTG_A,
> > > > _TRANS_HTOTAL_CMTG_B)
> > > > > +#define _TRANS_HBLANK_CMTG_A		0x6F004
> > > > > +#define _TRANS_HBLANK_CMTG_B		0x6F104
> > > > > +#define TRANS_HBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > > +						    _TRANS_HBLANK_CMTG_A,
> > > > _TRANS_HBLANK_CMTG_B)
> > > > > +#define _TRANS_HSYNC_CMTG_A		0x6F008
> > > > > +#define _TRANS_HSYNC_CMTG_B		0x6F108
> > > > > +#define TRANS_HSYNC_CMTG(trans)
> > > > 	_MMIO_TRANS((trans), \
> > > > > +						    _TRANS_HSYNC_CMTG_A,
> > > > _TRANS_HSYNC_CMTG_B)
> > > > > +#define _TRANS_VTOTAL_CMTG_A		0x6F00C
> > > > > +#define _TRANS_VTOTAL_CMTG_B		0x6F10C
> > > > > +#define TRANS_VTOTAL_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > > +						    _TRANS_VTOTAL_CMTG_A,
> > > > _TRANS_VTOTAL_CMTG_B)
> > > > > +#define _TRANS_VBLANK_CMTG_A		0x6F010
> > > > > +#define _TRANS_VBLANK_CMTG_B		0x6F110
> > > > > +#define TRANS_VBLANK_CMTG(trans)	_MMIO_TRANS((trans), \
> > > > > +						    _TRANS_VBLANK_CMTG_A,
> > > > _TRANS_VBLANK_CMTG_B)
> > > > > +#define _TRANS_VSYNC_CMTG_A		0x6F014
> > > > > +#define _TRANS_VSYNC_CMTG_B		0x6F114
> > > > > +#define TRANS_VSYNC_CMTG(trans)
> > > > 	_MMIO_TRANS((trans), \
> > > > > +						    _TRANS_VSYNC_CMTG_A,
> > > > _TRANS_VSYNC_CMTG_B)
> > > >
> > > > I though there was already feedback that these match the regular
> > > > transcoder registers.
> > >
> > > _TRANS_HTOTAL_A         0x60000
> > > _TRANS_HTOTAL_B         0x61000
> > >
> > > _TRANS_HTOTAL_CMTG_A            0x6F000
> > > _TRANS_HTOTAL_CMTG_B            0x6F100
> > >
> > > I am not clear how to match?
> > 
> > #define TRANSCODER_CMTG0_OFFSET 0x6F000
> > #define TRANSCODER_CMTG1_OFFSET 0x6F100
> 
> Ok, just to double check my understanding, I am putting below all the changes which maybe you are suggesting. 
> Can please confirm or if I am missing something please let me know.
> 
> Step1: Define offset macro.
> #define TRANSCODER_CMTGA_OFFSET 0x6F000
> #define TRANSCODER_CMTGB_OFFSET 0x6F100

s/AB/01/ to actually match the spec.

> Step2: Add trans_cmtg_offset array in intel_display_device_info structure and initialize.
> .trans_cmtg_offsets = {                                                      \
>                 [TRANSCODER_A] = TRANSCODER_CMTGA_OFFSET,                           \
>                 [TRANSCODER_B] = TRANSCODER_CMTGB_OFFSET,
> },

They are just transcoders, so they go into .trans_offsets.
If there are any pipe register that are actually transcoder
registers then we may also need a sort of fake .pipe_offsets
(like we have for the EDP transcoder)

> Step3: Define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET which will use trans_cmtg_offset
> #define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET(display, trans) \
>         (DISPLAY_INFO((display))->trans_cmtg_offsets[(trans)] - \
>          DISPLAY_INFO((display))->trans_offsets[TRANSCODER_A] + \
>          DISPLAY_MMIO_BASE((display)))
> 
> Step4: Define _MMIO_TRANS2_CMTG which will use INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET
> #define _MMIO_TRANS2_CMTG(display, trans, reg)       _MMIO(INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET((display), (trans)) + (reg))
> 
> Step5: Define TRANS_HTOTAL_CMTG
> #define TRANS_HTOTAL_CMTG(display, trans)	_MMIO_TRANS2_CMTG(display, (trans), _TRANS_HTOTAL_A)
> #define TRANS_HBLANK_CMTG(display, trans)   _MMIO_TRANS2_CMTG(display, (trans), _TRANS_HBLANK_A)

No, you just use TRANS_HTOTAL() and co.

Or at least that's my current thinking. Avoids all the duplicated stuff.

-- 
Ville Syrjälä
Intel

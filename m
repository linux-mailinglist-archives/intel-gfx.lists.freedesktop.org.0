Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6480F686D36
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:39:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED5B10E43A;
	Wed,  1 Feb 2023 17:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7BA10E43A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675273166; x=1706809166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h5TZmbA+3t8nWSkEFp/iJXQiKuoa+gti/idyEqq/Jgc=;
 b=CcjwiU3+dwGkOs5VExaSp5eQ3hvuNzeIo/warlLcjwCONCYKzPg1dR34
 Ox02QwKCovCCfVIw7erzirRxyfwXUPsxIzA074AEYeIYoF/1EbW6A3siY
 4fI+xDummQoXvU/HHuUlkP5XQ0ANMWWrqBjdDxsuUH8tmaOLKClCxIGZf
 m8P8HnMRK5cdkzNpMTCWwocaXoR2X6X8ZZMFkKDPVlqEWze7TjFqGU57B
 jSCESMDtSWewLrurQGTS37KaY03QmkhzOfEfpQKln2aOUQcOMgNTjr3Gb
 3H/zwbkVrlb0HPMVfvr1KiRod8mEGJoRPsYgpugKO90j2ZAyKK8YATgnF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="329505741"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="329505741"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:39:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="642522475"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="642522475"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 01 Feb 2023 09:39:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Feb 2023 19:39:22 +0200
Date: Wed, 1 Feb 2023 19:39:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Y9qjyrbuO8bWJgzv@intel.com>
References: <20230131191542.1695398-1-lucas.demarchi@intel.com>
 <20230131191542.1695398-2-lucas.demarchi@intel.com>
 <878rhh3dvs.fsf@intel.com> <Y9pWkvjdZUqre5Pk@intel.com>
 <20230201172629.mfhwzwxcaiu7ylze@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230201172629.mfhwzwxcaiu7ylze@ldmartin-desk2>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Move common mmio base out of
 private macros
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 01, 2023 at 09:26:29AM -0800, Lucas De Marchi wrote:
> On Wed, Feb 01, 2023 at 02:09:54PM +0200, Ville Syrjälä wrote:
> >On Wed, Feb 01, 2023 at 11:59:19AM +0200, Jani Nikula wrote:
> >> On Tue, 31 Jan 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> >> > Instead of using the common DISPLAY_MMIO_BASE(dev_priv) in all single
> >> > macros, only use them in the macros that are to be used outside the
> >> > header. This reduces the use of the implicit dev_priv, making it easier
> >> > to remove it later.
> >> >
> >> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/i915_reg.h | 73 ++++++++++++++++++---------------
> >> >  1 file changed, 39 insertions(+), 34 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> >> > index 943db8ec63f8..1cde3bcb9c88 100644
> >> > --- a/drivers/gpu/drm/i915/i915_reg.h
> >> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> > @@ -1182,9 +1182,9 @@
> >> >  #define PM_VEBOX_CS_ERROR_INTERRUPT		(1 << 12) /* hsw+ */
> >> >  #define PM_VEBOX_USER_INTERRUPT			(1 << 10) /* hsw+ */
> >> >
> >> > -#define GT_PARITY_ERROR(dev_priv) \
> >> > +#define GT_PARITY_ERROR(__i915) \
> >> >  	(GT_RENDER_L3_PARITY_ERROR_INTERRUPT | \
> >> > -	 (IS_HASWELL(dev_priv) ? GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 : 0))
> >> > +	 (IS_HASWELL(__i915) ? GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 : 0))
> >>
> >> Unrelated change.
> >>
> >> >
> >> >  /* These are all the "old" interrupts */
> >> >  #define ILK_BSD_USER_INTERRUPT				(1 << 5)
> >> > @@ -1403,10 +1403,11 @@
> >> >  /*
> >> >   * Clock control & power management
> >> >   */
> >> > -#define _DPLL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x6014)
> >> > -#define _DPLL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x6018)
> >> > -#define _CHV_DPLL_C (DISPLAY_MMIO_BASE(dev_priv) + 0x6030)
> >> > -#define DPLL(pipe) _MMIO_PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C)
> >> > +#define _DPLL_A		0x6014
> >> > +#define _DPLL_B		0x6018
> >> > +#define _CHV_DPLL_C	0x6030
> >> > +#define DPLL(pipe) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
> >> > +			 _PIPE3((pipe), _DPLL_A, _DPLL_B, _CHV_DPLL_C))
> >> >
> >> >  #define VGA0	_MMIO(0x6000)
> >> >  #define VGA1	_MMIO(0x6004)
> >> > @@ -1502,10 +1503,11 @@
> >> >  #define   SDVO_MULTIPLIER_SHIFT_HIRES		4
> >> >  #define   SDVO_MULTIPLIER_SHIFT_VGA		0
> >> >
> >> > -#define _DPLL_A_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x601c)
> >> > -#define _DPLL_B_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x6020)
> >> > -#define _CHV_DPLL_C_MD (DISPLAY_MMIO_BASE(dev_priv) + 0x603c)
> >> > -#define DPLL_MD(pipe) _MMIO_PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
> >> > +#define _DPLL_A_MD				0x601c
> >> > +#define _DPLL_B_MD				0x6020
> >> > +#define _CHV_DPLL_C_MD				0x603c
> >> > +#define DPLL_MD(pipe) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
> >> > +			    _PIPE3((pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD))
> >> >
> >> >  /*
> >> >   * UDI pixel divider, controlling how many pixels are stuffed into a packet.
> >> > @@ -3323,42 +3325,45 @@
> >> >   * is 20 bytes in each direction, hence the 5 fixed
> >> >   * data registers
> >> >   */
> >> > -#define _DPA_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
> >> > -#define _DPA_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64014)
> >> > -
> >> > -#define _DPB_AUX_CH_CTL		(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
> >> > -#define _DPB_AUX_CH_DATA1	(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
> >> > -
> >> > -#define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
> >> > -#define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> >> > +#define _DPA_AUX_CH_CTL		0x64010
> >> > +#define _DPA_AUX_CH_DATA1	0x64014
> >> > +#define _DPB_AUX_CH_CTL		0x64110
> >> > +#define _DPB_AUX_CH_DATA1	0x64114
> >> > +#define DP_AUX_CH_CTL(aux_ch)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
> >> > +				      _PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL))
> >> > +#define DP_AUX_CH_DATA(aux_ch, i)		\
> >> > +	_MMIO(DISPLAY_MMIO_BASE(dev_priv) +	\
> >> > +	      _PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> >> >
> >> >  #define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
> >> >  #define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
> >> >  #define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
> >> >  #define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
> >> >
> >> > -#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> >> > -						       _DPA_AUX_CH_CTL, \
> >> > -						       _DPB_AUX_CH_CTL, \
> >> > -						       0, /* port/aux_ch C is non-existent */ \
> >> > -						       _XELPDP_USBC1_AUX_CH_CTL, \
> >> > -						       _XELPDP_USBC2_AUX_CH_CTL, \
> >> > -						       _XELPDP_USBC3_AUX_CH_CTL, \
> >> > -						       _XELPDP_USBC4_AUX_CH_CTL))
> >> > +#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + \
> >>
> >> Note that only VLV and CHV have DISPLAY_MMIO_BASE() != 0.
> >>
> >> This is an XELPDP specific macro. Just drop the DISPLAY_MMIO_BASE() part
> >> altogether, and you've removed an implicit dev_priv. Yay.
> >>
> >> This also makes me think we should probably add VLV/CHV specific
> >> DP_AUX_CH_CTL and DP_AUX_CH_DATA macros that just add VLV_DISPLAY_BASE
> >> directly, and use that to ditch the implicit dev_priv there too. This
> >> approach doesn't work for everything, but the aux channel stuff is both
> >> fairly limited use and already has if ladders to pick the
> >> registers. Handling VLV/CHV separately is not a big deal.
> >>
> >> (DPLL on the other hand seems much harder to deal that way.)
> >
> >Most of the DPLL code should be have vlv/chv vs. rest specific
> >codepaths. A quick scan says readout is perhaps the only exception.
> 
> and then remove display.mmio_offset since vlv/chv are the only ones
> using it?

There should tons of other registers still using it.

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENwqL8Iu82m0yAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:28:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7764A0D1A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F2E10F2E1;
	Thu, 30 Apr 2026 10:28:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnXAnp4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E128A10F2E1;
 Thu, 30 Apr 2026 10:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777544895; x=1809080895;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z7nP5Jr/BhHZhuDw8gz/eLlwGoiZTcbYzeHMFI+sVN8=;
 b=UnXAnp4ouYiYij1/HAt4MaK+f4p0xSFRAAPKVieQnU7Kvoy56PUJbmYH
 4NnygTkIZ2+xZ6m7hwjURxipFiXJkUjUinqHEPMT/hYINRySqCIddfWoM
 sWFH0dZhQ2QFp40x1waOCXErtksRTlQqY7bIYn+KBMHDzfMHIuxwoR+ot
 00wHcApQMrhIPGqfjtoOgXjmtf2JaihO/H11BD1ZnA2IaaswyylpECwvS
 TaFR2wfYLA8VyWGeYdXfuZrPPd2ZpeyN9Qwlvy/eNEOJIz+msd3giLWHw
 sMMF+nfHZ1TfdQovwuGDXBk7QABbYsgcfUclAmhrk7HqH5zuGdozSByPD A==;
X-CSE-ConnectionGUID: ohDO9l2QTvawdcmgrYoTiQ==
X-CSE-MsgGUID: nENq52V2S1eaV6DrMN5kqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89182930"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="89182930"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:28:15 -0700
X-CSE-ConnectionGUID: oL/o5pfcQTSS7u0Sj6v0qg==
X-CSE-MsgGUID: oNtC2/nEQOqMXAGxYc2RsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="258124202"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:28:13 -0700
Date: Thu, 30 Apr 2026 13:28:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/irq: add intel_display_irq_handler() to
 irq funcs
Message-ID: <afMuuj6B3lw10CEV@intel.com>
References: <cover.1777458161.git.jani.nikula@intel.com>
 <4c2be8d52d11977f67d3d52ebf6414d4c0a341ef.1777458161.git.jani.nikula@intel.com>
 <afHx7st1NYZulnQM@intel.com>
 <0edc69cd1ad8c7b510622ffb8b51f436992395dc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0edc69cd1ad8c7b510622ffb8b51f436992395dc@intel.com>
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
X-Rspamd-Queue-Id: 2A7764A0D1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Thu, Apr 30, 2026 at 10:59:11AM +0300, Jani Nikula wrote:
> On Wed, 29 Apr 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Apr 29, 2026 at 01:24:55PM +0300, Jani Nikula wrote:
> >> @@ -2088,6 +2123,28 @@ static void vlv_display_irq_ack(struct intel_display *display,
> >>  	i9xx_pipestat_irq_ack(display, state->iir, state->pipe_stats);
> >>  }
> >>  
> >> +static bool vlv_display_irq_handler(struct intel_display *display,
> >> +				    const struct intel_display_irq_state *state)
> >> +{
> >> +	u32 lpe_mask = I915_LPE_PIPE_A_INTERRUPT | I915_LPE_PIPE_B_INTERRUPT;
> >> +
> >> +	if (display->platform.cherryview)
> >> +		lpe_mask |= I915_LPE_PIPE_C_INTERRUPT;
> >
> > I would prefer a function rather than the extra variable. The other
> > option is to just use the CHV mask always. There is nothing on the
> > extra bit on VLV so we never unmask it.
> 
> Hmm. reset and postinstall also have slight variations for VLV vs. CHV,
> but only very slight. I think they're overall close enough that
> splitting out a funcs struct and separate funcs for CHV is more
> distracting and duplication than helpful.

I think with DPINVGTT we could just switch to using full 16bit masks
and get rid of the vlv/chv difference. I should check if the unused
bits are all tied to 0...

> 
> Or would something like this be satisfactory? Just a couple of small
> wrapper functions around intel_lpe_audio_irq_handler() here that the
> compiler would just inline:
> 
> 	if (display->platform.cherryview)
> 		chv_lpe_audio_irq_handler(display, state->iir);		
> 	else
> 		vlv_lpe_audio_irq_handler(display, state->iir);		
> 
> Of course this would need to move to the ack part per your other review
> comment.

I was just thinking of having something like 
vlv_lpe_irq_mask()
{
	if (chv)
		return ...;
	else
		return ...;
}

> 
> 
> >> @@ -51,14 +51,12 @@ void bdw_disable_vblank(struct drm_crtc *crtc);
> >>  
> >>  void ilk_display_irq_master_disable(struct intel_display *display, u32 *de_ier, u32 *sde_ier);
> >>  void ilk_display_irq_master_enable(struct intel_display *display, u32 de_ier, u32 sde_ier);
> >> -bool ilk_display_irq_handler(struct intel_display *display);
> >> -void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl);
> >> -void gen11_display_irq_handler(struct intel_display *display);
> >>  
> >>  u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl);
> >>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32 iir);
> >>  
> >>  struct intel_display_irq_state {
> >> +	u32 master_ctl;
> >
> > Ideally I'd like a separate structs for different platforms,
> > but until I resurrect my old ack vs. handle split for all
> > platforms I guess we don't need anything else here for
> > ilk+. So good enough for now I suppose.
> 
> You mean per-platform substructs/unions within struct
> intel_display_irq_state? I can do that.

Yeah something like that. Not super important right since
we just have the master_ctl for non-gmch platforms.

-- 
Ville Syrjälä
Intel

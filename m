Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JGNKmVRDGosfAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 14:02:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209D457E40F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 14:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD0110EC7C;
	Tue, 19 May 2026 12:02:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLALKXB+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0F710EC7D;
 Tue, 19 May 2026 12:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779192161; x=1810728161;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RdpThRuiQ9pIJybWChWUMCmu+pFsI2UbAwy9iItFaM8=;
 b=SLALKXB+jNNiv96BE52UbfWEYosIw6AnpU8zsqk2Inaw9TQLYRFINB4r
 jdVrkEtQIVJ22ZFRU7wpyGpapRr/UbtoElnmDktcLLgRGi/EfP2rs0+Ze
 GGWPiDFZwLKNQHWHIvTaDMhTU66LRaV16KooRMxbjLHeor+KI0pC86Rtm
 JzxcrtuJpIqqVINYETmqBCp+S6i/1WWCod00pioqumNPGVoMi0o+jY8WZ
 mPdCTRbNI2yBeL9UOqafr77IHQxyeqroUlKc+avw+Ob6JP0NLoRizAXxK
 JOTTCQOJWX3tWw6k4DSb96PhH2YEHu30D8kUdM2cfuWb/SGA2HVJcVyQw w==;
X-CSE-ConnectionGUID: tPh+NtutSueSjXbZDCMs7g==
X-CSE-MsgGUID: v2LnbUoqTsqyE2TuqlLk5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91460435"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91460435"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 05:02:41 -0700
X-CSE-ConnectionGUID: pZG2EzcjS2yf4/I2s505bw==
X-CSE-MsgGUID: eUIzzM+/QK2zdp3nshxb6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="236742459"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.16])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 05:02:39 -0700
Date: Tue, 19 May 2026 15:02:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver
 >= 30
Message-ID: <agxRXIOoXUJ0ekTA@intel.com>
References: <20260515155340.1000997-1-suraj.kandpal@intel.com>
 <20260515161056.1007030-1-suraj.kandpal@intel.com>
 <agsflxLSJ-nmCu7I@intel.com>
 <DM3PPF208195D8DF69F342CA48E192DC494E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM3PPF208195D8DF69F342CA48E192DC494E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,xe.ci:url]
X-Rspamd-Queue-Id: 209D457E40F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 02:33:38AM +0000, Kandpal, Suraj wrote:
> > Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on
> > display ver >= 30
> > 
> > On Fri, May 15, 2026 at 09:40:56PM +0530, Suraj Kandpal wrote:
> > > Starting with display version 30, the per-pipe frame timestamp is read
> > > from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
> > > legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the
> > > display and select the appropriate register based on DISPLAY_VER(),
> > > and update all callers intel_vblank accordingly.
> > >
> > > Bspec: 79482
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > > v1 -> v2:
> > > - Define registers in correct location (Jani)
> > > - Use the intel_display_wa() helper to select the correct register
> > > (Gustavo)
> > > - Fix early vblank timeout issue when DMC is not loaded
> > >
> > >  .../gpu/drm/i915/display/intel_display_wa.c    |  2 ++
> > >  .../gpu/drm/i915/display/intel_display_wa.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dmc_regs.h  |  6 ++++++
> > >  drivers/gpu/drm/i915/display/intel_vblank.c    | 18 ++++++++++++++----
> > >  4 files changed, 23 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > index 7d3d63a59882..44c2a503c911 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > > @@ -110,6 +110,8 @@ bool __intel_display_wa(struct intel_display
> > *display, enum intel_display_wa wa,
> > >  		return DISPLAY_VERx100(display) == 3000 ||
> > >  			DISPLAY_VERx100(display) == 2000 ||
> > >  			DISPLAY_VERx100(display) == 1401;
> > > +	case INTEL_DISPLAY_WA_14022946399:
> > > +		return DISPLAY_VER(display) >= 30;
> > 
> > According to bspec PIPEDMC_FRMTMSTMP shouldn't even exist on PTL.
> > Did you actually check that the register works?
> 
> Yes you are correct seems like this does not exist on PTL, weird that the Xe.CI does not throw any error In relation to this.
> 
> > 
> > And I believe the hw register corruption issue being addressed by w/a
> > 14022946399 (also applies to LNL) should anyway be fixed on the platforms
> > that have PIPEDMC_FRMTMSTMP so this w/a stuff here makes no sense.
> 
> Hmm the confusing thing here is this same WA has two ways to go about it. From NVL onwards we need to ready the PIPEDMC_FRMTMSPTMP
> But before that it was that we read the FRMTMSTMP register once per frame.
> So for display ver >= 35 we maybe should still switch to PIPEDMC_FRMTMSTMP

IIRC I read somewhere that the PIPEDMC register is going to be
removed in the near future, so not sure there's much point in 
using it at all.

-- 
Ville Syrjälä
Intel

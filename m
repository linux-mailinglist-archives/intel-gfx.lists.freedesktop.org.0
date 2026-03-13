Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJePDOXgs2ktcQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 11:03:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8712810DA
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 11:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAB4210EB6C;
	Fri, 13 Mar 2026 10:03:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ls9HYwDH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5667710E090;
 Fri, 13 Mar 2026 10:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773396192; x=1804932192;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zPjT22neoJTjuopr003/oKkfH0ywApdFY1FDCO6FzZI=;
 b=ls9HYwDHTOvVBQvE6NGPnA4dKhYhHtm3yl1wQYBVRCXQp9okAH2zxamH
 iBr26FVPOKRv5NH2YvKs9+exnQplJ4p++nk/dNgoj+0PjfvJKQOqH9KmU
 Ql8TZNDZ5KibryUijpYdzvjMFSAqQ2oIpesHLIt0D6S3g97QmBBY8WDYA
 wT/VRzrG0nhAaXPPA/6h4gd/vY4iFltR1KFS87owTjvNZMMyk5wsFa6TH
 nEQA3RWM+yCsAnV1m+fUUMNHMwEmNO9kC01kdNAnijQkiq+77LgsoTFN0
 FtffTNgSIAdUcLnG70ciu8nfNlzuuLBQpuz4EYoLbx0Ln7gJFJAW/1H3m A==;
X-CSE-ConnectionGUID: C9guLj7SR8u/bJUHnHvQug==
X-CSE-MsgGUID: 3MUBZdVXSL6j6idIbF7Lgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85202313"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="85202313"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 03:03:12 -0700
X-CSE-ConnectionGUID: CleVGVNmSdmMZvMHMt7R+g==
X-CSE-MsgGUID: R3S9CWJzRt2sTdsqql4DGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="221069432"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 03:03:09 -0700
Date: Fri, 13 Mar 2026 12:03:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Message-ID: <abPg2j1wS_QLPIdJ@intel.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
 <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
 <DM3PPF208195D8D6302B536CF802D111F55E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM3PPF208195D8D6302B536CF802D111F55E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
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
X-Spamd-Result: default: False [0.46 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8D8712810DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 05:04:46AM +0000, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Sent: Friday, March 13, 2026 9:55 AM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org;
> > intel-xe@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> > Sharma, Swati2 <swati2.sharma@intel.com>
> > Subject: Re: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
> > 
> > 
> > On 13-03-2026 08:56, Kandpal, Suraj wrote:
> > >> On 12-03-2026 08:48, Kandpal, Suraj wrote:
> > >>>> Subject: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
> > >>>>
> > >>>> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
> > >>>>
> > >>> Add same Bspec link here too
> > >>>
> > >>>> Signed-off-by: Dibin Moolakadan Subrahmanian
> > >>>> <dibin.moolakadan.subrahmanian@intel.com>
> > >>>> ---
> > >>>>    drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
> > >>>>    1 file changed, 2 insertions(+), 1 deletion(-)
> > >>>>
> > >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > >>>> b/drivers/gpu/drm/i915/display/intel_dmc.c
> > >>>> index 38b284a0db82..e60f1f977070 100644
> > >>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > >>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > >>>> @@ -510,7 +510,8 @@ static void pipedmc_clock_gating_wa(struct
> > >>>> intel_display *display, bool enable)  static u32
> > >>>> pipedmc_interrupt_mask(struct intel_display *display)  {
> > >>>>    	if (DISPLAY_VER(display) >= 35)
> > >>>> -		return PIPEDMC_FLIPQ_PROG_DONE;
> > >>>> +		return PIPEDMC_FLIPQ_PROG_DONE |
> > >>>> +			PIPEDMC_ERROR;
> > >>>>
> > >>> Mostly looks okay but here's my question:
> > >>> I know LNL pipe B had an issue with PIPEDMC_ERROR being triggered on
> > >>> LNL pipe B, As I can see from Ville's commit message, but is it
> > >>> still the case for
> > >> PTL ?
> > >>> Can we have that tested ?
> > >>> If that works we can add the PIPEDMC_ERROR from PTL onwards.
> > >>> Then here we can change code to create a mask and then return it
> > >>> finally like
> > >> :
> > >>> mask = PIPEDMC_FLIPQ_PROG_DONE
> > >>>
> > >>> if display ver >= 30
> > >>> mask |= PIPEDMC_ERROR
> > >>>
> > >>> if display ver < 35
> > >>> mask |= PIPEDMC_GTT_FAULT |
> > >>>                   PIPEDMC_ATS_FAULT;
> > >>>
> > >>> Return mask;
> > >>>
> > >>> Obviously that is if PIPEDMC_ERROR works on PTL properly.
> > >> Thank you for spotting this, I think its better to add above  logic
> > >> in new series rather than combing with 35+ bit mask update.
> > >>
> > >> Regards,
> > >> Dibin
> > > If that is the case then I think its better to drop this patch altogether.
> > > We have a justification of why we remove bits in first patch, that was a change
> > in NVL H/w.
> > > But this change was introduced in LNL.
> > > Without a strong reasoning of why you are enabling this is in NVL and
> > > not in PTL (which I don’t see in this patch series) I suggest you add
> > > this patch with as a part of the series where you have a use case for it. And if
> > there too you only add it for NVL You will need to add a comments as to why
> > this is not enabled for PTL.
> > 
> > This patch intent to fix the interrupt mask for 35+.
> > I dont see any reason to disable this bit as
> > 1) error bit warning is already present in interrupt handler.
> > 2) bit is defined in bsepc.
> > 3) LNL it was mentioned disabled because pipeB triggering it during first DC
> > state transition which did not see in this case.
> 
> In that case the interrupt handler is made to report errors if this bit is unmasked for  >= LNL.
> Now this bit is introduced in LNL timeframe for which the reason to not add it is mentioned in comment and documented.
> Similarly if you want to skip PTL you will need this to be documented with the reason. Which means the FIXME comment needs to be modified
> In the least. If this patch is to go through.
> Also Ville can you shed some light, on what the H/w folks had to say regarding this and if they had mentioned any WA for LNL, and if this is fixed
> In LNL+.

I suspect it might be some kind of issue in the DMC firmware where
it's accessing unpowered registers. But it was never investigated
properly.

It would be good if someone could take that up and actually figure
out what's going on. The problem is figuring out what exactly is
the register that causes this. I don't think LNL has any kind of
RM_CAPTURE register/etc available for the DMC that would directly
tell us that :(

IIRC the Windows driver did seem to enable the error interrupt on
LNL, but either they just ignore all the reported errors, or somehow
the way they use the hardware/firmware doesn't trigger them.

-- 
Ville Syrjälä
Intel

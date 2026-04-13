Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBVfGhU43Wk3awkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 20:38:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1193F227E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 20:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE2410E507;
	Mon, 13 Apr 2026 18:38:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nm5XZcu2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DCC10E506;
 Mon, 13 Apr 2026 18:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776105490; x=1807641490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uT/o82FacL8DdO+kdx48Xrar/5NMJIrTKmKjUpVtBIw=;
 b=nm5XZcu2t1IApAX9oZlzv0IKpV1aASLo+K3CKbQ+6tML2/J3zLkspfGj
 JLuHTugmNLUpkpPTk6Oa6ZSov2CpBV/7jKvnwpgZCwd5oyBsc41wbLe6n
 uu6LhU1WFWw9+wql681iqDsXru0OuLqurHwA3bYW0B2MdQyiQyC57aO7x
 6cQuzZZ8YbLNIs8ADzpXr34F6zOqq28xJaUcfpZIEYuecA1uw44+GH7VJ
 o0MhSsjmIL0wKlMA7rQ6vzFD8iGFzZzwB3CsdPIFik6pV+jH5F9dbCg+m
 Q7V6yHcGtmagpLyufCq6HMSmR2BgvPvK7LwrlCV5OpjXwxORzXifDoGa0 w==;
X-CSE-ConnectionGUID: SWMAMyewRuyoAaEWDsVyCA==
X-CSE-MsgGUID: UUrkEqsdQTuXY6SZmistRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="99694805"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="99694805"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 11:38:09 -0700
X-CSE-ConnectionGUID: O8WUmnUTTAKgW58ipDXiGA==
X-CSE-MsgGUID: fKmtr0MpRkSurbbJ+X/j5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="234267500"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.97])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 11:38:07 -0700
Date: Mon, 13 Apr 2026 21:38:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 0/9] drm/i915/{dp,hdmi}: Restructure DP/HDMI sink
 format handling
Message-ID: <ad04C281j3Cwyb5y@intel.com>
References: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
 <8031984.DvuYhMxLoT@workhorse>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8031984.DvuYhMxLoT@workhorse>
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
X-Spamd-Result: default: False [-0.75 / 15.00];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 8A1193F227E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 05:40:50PM +0200, Nicolas Frattaroli wrote:
> On Thursday, 9 April 2026 12:15:30 Central European Summer Time Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Restructure the DP/HDMI sink format handling. I got inspired to do this
> > by https://lore.kernel.org/dri-devel/20260324-color-format-v11-8-605559af4fb4@collabora.com/
> > 
> > I envision that after this the aforementioned patch could just
> > become something like this:
> > 
> > 1. s/intel_foo_compute_formats/intel_foo_compute_formats_auto/
> > 2. Add a new intel_foo_compute_formats()
> > 
> >    intel_foo_compute_formats()
> >    {
> >         switch (color_format) {
> >         case YCBCR420:
> >                 return intel_foo_compute_output_format(YCBCR420);
> >         case RGB:
> >                 return intel_foo_compute_output_format(RGB);
> >         case AUTO:
> >                 return intel_foo_compute_formats_auto();
> >         }
> >    }
> > 
> > v2: A few more updates to the DP mode validation
> > 
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > 
> > Ville Syrjälä (9):
> >   drm/i915/hdmi: Add missing intel_pfit_mode_valid() for 4:2:0 also
> >     modes
> >   drm/i915/hdmi: Restructure the sink/output format selection
> >   drm/i915/hdmi: Restructure 4:2:0 vs. 4:4:4 mode validation
> >   drm/i915/dp: Restructure the sink/output format selection
> >   drm/i915/dp: Validate "4:2:0 also" modes twice
> >   drm/i915/dp: Require a HDMI sink for YCbCr output via PCON
> >   drm/i915/dp: Validate sink format in .mode_valid()
> >   drm/i915/hdmi: Make the RGB fallback for "4:2:0 only" modes the last
> >     resort
> >   drm/i915/dp: Make the RGB fallback for "4:2:0 only" modes the last
> >     resort
> > 
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 250 +++++++++++++---------
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 167 +++++++++------
> >  2 files changed, 254 insertions(+), 163 deletions(-)
> > 
> > 
> 
> For the whole series:
> 
> Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> Tested both DisplayPort and HDMI on an N97 board, exercising various
> output formats.

Thanks for testing and reviews. Pushed to drm-intel-next.

-- 
Ville Syrjälä
Intel

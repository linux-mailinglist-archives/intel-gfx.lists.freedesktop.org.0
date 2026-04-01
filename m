Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL++OGoHzWkjZgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 13:54:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD5379ED7
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 13:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A158810F0A5;
	Wed,  1 Apr 2026 11:54:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lVctATJy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC8310F0A5;
 Wed,  1 Apr 2026 11:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775044456; x=1806580456;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dN76/wWyLTDI2jDM8x8nJ3CBD2WOX5c1bslFglcDvHE=;
 b=lVctATJyYiDhTucZva7cVNOXTkuaVMkCLYWpn8ULpcALLzcK1upZ4E7I
 hKL5b3jbyrgBhKaSm3TNHm+7usv4c1DGXUSWS1dAqusJj/TRRiwo83wnl
 xYiXUV80daoJgeUTUtOOpq5YBhYb1IR9Z4FmbHvBP5qvSU0ByDj+x3etp
 wSSQ7CAEsf2Tt1Tblewk19lB+//gQK0gVxN8pG2tCNkUNe/L6Mn6MXewK
 GsTpJVL6zwgDY1YmsYeZQJq0tRxNsNaEf+EmNWpkWX3t/m3afNYfGHktq
 p06CLZsguSpj4jf3cy+pmI6QQ/pGuyrVefT18nRnGOoRgE0YQ6gbwbURG g==;
X-CSE-ConnectionGUID: y2hgSm55RQ6NLzsWL5dYKg==
X-CSE-MsgGUID: NEJACAehTeSGXE36Hnl91w==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76138937"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76138937"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 04:54:15 -0700
X-CSE-ConnectionGUID: XTZGkknGSmuGukZgAV/0gw==
X-CSE-MsgGUID: h9SdNFBjStScU+14SpMZ0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="249692158"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 04:54:13 -0700
Date: Wed, 1 Apr 2026 14:54:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Nemesa Garg <nemesa.garg@intel.com>, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Message-ID: <ac0HYijc2stYuO_w@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com>
 <acu_T8mBOpfZIJN2@intel.com>
 <3af4af49-5575-4109-8a5a-58c8de5e2c99@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3af4af49-5575-4109-8a5a-58c8de5e2c99@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 30CD5379ED7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 11:32:30AM +0530, Sharma, Swati2 wrote:
> Hi Ville,
> 
> On 31-03-2026 06:04 pm, Ville Syrjälä wrote:
> > On Tue, Mar 31, 2026 at 05:10:42PM +0530, Sharma, Swati2 wrote:
> >> Hi Ville,
> >>
> >> On 27-03-2026 04:01 am, Ville Syrjala wrote:
> >>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>>
> >>> The sharpness filter isn't anything special. It's just another
> >>> mode of the pipe scaler, so treat is as such.
> >>>
> >>> This gets rid of tons of special casing all over the place,
> >>> and will allow me to finally land the pending pipe prefill
> >>> series: https://patchwork.freedesktop.org/series/156137/
> >>>
> >>> Note that this will fail some kms_sharpness_filter tests,
> >>> because those tests are basically incorrect. But I couldn't
> >>> decide yet how much of that entire test should be nuked. It
> >>> seems to be doing a *lot* of things, most of which have
> >>> nothing to do with the sharpness filter...
> >> With your series I could see only 1 negative test failing -
> >> invalid-filter-with-scaling-mode-center
> >>
> >> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-163952v1/shards-all.html?testfilter=sharpness
> >>
> >> Is it sharpness and scaling-mode-center can work together? Since
> >> scaler-mode-center doesn't require
> >>
> >> scaler.
> >>
> >> You rightly said, all tests are not related to sharpness but covering
> >> valid scenarios for scaler + sharpness.
> >>
> >> Apart from invalid-filter-with-scaling-mode-center, which other tests do
> >> you think are incorrect? We tried covering all valid scenarios as per HAS.
> > I would probably nuke all these:
> >
> > Nothing to do with the sharpness filter since
> > it's on the pipe scaler, not plane scaler:
> > - filter-modifiers
> > - filter-rotations
> > - filter-formats
> Ack.
> >
> > Doesn't seem to test anything at all:
> > - filter-tap
> 
> Intention of this test is to validate different taps. As per spec,
> 
> different TAPS will be selected based on different resolution selected.
> 
> 
> TAP 3: mode->hdisplay <= 1920 && mode->vdisplay <= 1080
> TAP 5: (mode->hdisplay > 1920 && mode->hdisplay < 3840) && 
> (mode->vdisplay > 1080 && mode->vdisplay < 2160)
> TAP 7: mode->hdisplay >= 3840 && mode->vdisplay >= 2160

AFAIK all it does is try three different modes on the CRTC,
and then nothing. How does that verify anything (other
than the driver didn't explode)?

I suppose it could be verified with the chamelium/writeback
based test. But right now this test doesn't seem to do anything.

> 
> >
> > Maybe a decent idea, but really wasteful to have these kinds
> > of things for every little feature, as opposed to just
> > some generic "did we restore everything after dpms/suspend
> > correctly" test:
> > - filter-suspend
> > - filter-dpms
> 
> True, but we did caught an issue during local testing with this test 
> where we were not able
> 
> to retain sharpness after S/R.

That was likely due to the poor integration with the actual
pfit code. So the sharpness filter needed all kinds of special
cases everywhere in the driver. I'm fixing that now.

These kind of tests burn a lot of CI time. We really don't
want them separately for every little individual feature.

-- 
Ville Syrjälä
Intel

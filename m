Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDegDo7fr2nkdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:08:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA49247F27
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3033610E6A6;
	Tue, 10 Mar 2026 09:08:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6CvyPzD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2E910E6A4;
 Tue, 10 Mar 2026 09:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773133707; x=1804669707;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=g8Njy6UmMyZ696/0mFzf/F5nJk1m8XSwedpwfhul80U=;
 b=D6CvyPzDnWUIQtnQ++peGHxPPgoUq2tboYpxyM1UGnMXZyF5wV3oW0ID
 vt5wGalNP/9avURE408z+a8um1P42F/CUmNWI0LWovhZeLnF7gcnQe6ms
 bIkjse+qzw01SSR+7Mcb70b6zI5xKt+RFkw6tLfZIep9kdNELUtEzDoQ6
 09X458US1L18Q7HPbHKtRxaJopypdU3LP2bS2OF+XnLHVJgGfm3pROBmu
 u4Px69la56TfIyShvI4NToH84PAeRsAvoNWyfbpTB0w2Ri6mCgEYkvqo2
 x89P2fFLu46McHsMW3DWw7ixUpIdER+8ThUEVC2+ndmu+P7Y4d4YGRGFw w==;
X-CSE-ConnectionGUID: kg8FUse0R4OIkd/hpyXLew==
X-CSE-MsgGUID: gwLN3D1UQ0SBwlnDGmD7lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73874058"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="73874058"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:08:26 -0700
X-CSE-ConnectionGUID: GlITQYpqR2+4GSr4ooqtJw==
X-CSE-MsgGUID: YGmLrajuRFmJ2R1+ouMJJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="257960280"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.33])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:08:25 -0700
Date: Tue, 10 Mar 2026 11:08:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com
Subject: Re: [PATCH 3/5] drm/i915/dp: Add helper for AS SDP TL and fix
 documentation
Message-ID: <aa_fhRxsFcftI2Nv@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-4-ankit.k.nautiyal@intel.com>
 <aarCQYHTCCEKtB2R@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aarCQYHTCCEKtB2R@intel.com>
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
X-Rspamd-Queue-Id: 9CA49247F27
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 02:02:09PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 05, 2026 at 09:31:16AM +0530, Ankit Nautiyal wrote:
> > Add a helper, intel_dp_emp_as_sdp_tl(), to compute the EMP_AS_SDP_TL
> > value used when programming the double‑buffering point and transmission
> > line for VRR packets.
> > Also improve the documentation: the AS SDP transmission line corresponds
> > to the T1 position, which maps to the start of the Vsync pulse.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c  | 9 +++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h  | 1 +
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++--
> >  3 files changed, 12 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 86390553800d..9204a813639a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7288,6 +7288,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> >  	return true;
> >  }
> >  
> > +int intel_dp_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
> > +{
> > +	/*
> > +	 * EMP_AS_SDP_TL defines the T1 position : The default AS SDP position
> > +	 * that corresponds to the start of the Vsync pulse.
> > +	 */
> > +	return crtc_state->vrr.vsync_start;
> > +}
> 
> Other parts of the code (eg. ALPM) still just directly use the
> adjusted_mode timings to calculate the same stuff. So this doesn't
> really seem to help us.
> 
> Feels like all of our abstractions around this SDP transmission line
> stuff are way too low level, and thus the same information is
> calculated in different ways in different parts of the code. There
> should be a single place that defines the transmission line(s),
> and everyone should just consult that stuff (regardless of whether
> the platform uses implicit transmission lines, EMP_AS_SDP_TL, or
> the new stuff).

I think instead of tracking the low level stagger values directly, what 
we want to track is just the transmission line itself for each type of 
SDP. That seems like a form that is easier to use elsewhere in the code. 

And to accommodate VRR I suppose we should use the "transmission line 
is specified relative to the end of vblank/vtotal" convention for all 
of these. 

-- 
Ville Syrjälä
Intel

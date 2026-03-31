Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LP6CVm/y2k9LgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:34:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42227369853
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306BE10E962;
	Tue, 31 Mar 2026 12:34:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aUaGW7Sb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63E410E962;
 Tue, 31 Mar 2026 12:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774960468; x=1806496468;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F3T+VcMxA4N0qR9aoDAkS222ZrVzH4hLrPPA1kPY21Q=;
 b=aUaGW7SbMX+ltq6/0RloXrLA/1D4Su9TH17uqmiwi2kf3444oe9o/q6E
 YmT4FPfr3F/blIhYHd65kfgbgji7gmaZAraJHjhafIyqllXAxntd61WOP
 OKhvxnJMY/+APH3TspGrn6i9RH377kVqncJmlc/9OGkLXDuYtubXrmH52
 OlTKcHNMiSB+fDi6JUrgXnmDPGKnHlygnWB9q7lKNQNTKCQSo4mywmFvI
 Mdd2/V8oAZXRnR/wJFsOcS9QNbkrgNatspjgVLJKSoTg1KBEd4dJGVt/0
 06/gunW0+0FZOWMrPOx3t7OROKj6MZo3xbwCjcN+6vlREnfigfaeUMKMv w==;
X-CSE-ConnectionGUID: yqoSLoUXRrO+7V2LvfLegg==
X-CSE-MsgGUID: I2Vlz1JKQlaWA++iIU/aLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75005835"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="75005835"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:34:28 -0700
X-CSE-ConnectionGUID: tLZJFE0VT5ufCZ+q/fwITQ==
X-CSE-MsgGUID: gAj2T8CEThSygq+On+XzUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="264291031"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:34:27 -0700
Date: Tue, 31 Mar 2026 15:34:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Nemesa Garg <nemesa.garg@intel.com>, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Message-ID: <acu_T8mBOpfZIJN2@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 42227369853
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 05:10:42PM +0530, Sharma, Swati2 wrote:
> Hi Ville,
> 
> On 27-03-2026 04:01 am, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The sharpness filter isn't anything special. It's just another
> > mode of the pipe scaler, so treat is as such.
> >
> > This gets rid of tons of special casing all over the place,
> > and will allow me to finally land the pending pipe prefill
> > series: https://patchwork.freedesktop.org/series/156137/
> >
> > Note that this will fail some kms_sharpness_filter tests,
> > because those tests are basically incorrect. But I couldn't
> > decide yet how much of that entire test should be nuked. It
> > seems to be doing a *lot* of things, most of which have
> > nothing to do with the sharpness filter...
> 
> With your series I could see only 1 negative test failing - 
> invalid-filter-with-scaling-mode-center
> 
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-163952v1/shards-all.html?testfilter=sharpness
> 
> Is it sharpness and scaling-mode-center can work together? Since 
> scaler-mode-center doesn't require
> 
> scaler.
> 
> You rightly said, all tests are not related to sharpness but covering 
> valid scenarios for scaler + sharpness.
> 
> Apart from invalid-filter-with-scaling-mode-center, which other tests do 
> you think are incorrect? We tried covering all valid scenarios as per HAS.

I would probably nuke all these:

Nothing to do with the sharpness filter since
it's on the pipe scaler, not plane scaler:
- filter-modifiers
- filter-rotations
- filter-formats

Doesn't seem to test anything at all:
- filter-tap

Maybe a decent idea, but really wasteful to have these kinds
of things for every little feature, as opposed to just
some generic "did we restore everything after dpms/suspend
correctly" test:
- filter-suspend
- filter-dpms

And I guess we're missing a test for sharpness filter vs.
scaling filter.

And the CRC stuff is really limited, so we have no idea if
the thing even works from these tests. But I guess we don't
really know the secret sauce algorithm, so generating a
reference image is hard :/

If/when we get writeback we should be able vary the sharpness
strength and do a diff on the resulting images, and based on
that confirm that it actually did something that looks
reasonable.

> 
> >
> > Cc: Nemesa Garg <nemesa.garg@intel.com>
> >
> > Ville Syrjälä (9):
> >    drm/i915/casf: s/casf_enable/enable/
> >    drm/i915/casf: Make a proper hw state copy of the sharpness_strength
> >    drm/i915/casf: Move the casf state to better place
> >    drm/i915/casf: Extract scaler_has_casf()
> >    drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
> >    drm/i915/casf: Constify crtc_state
> >    drn/i915/casf: Remove redundant argument from
> >      intel_casf_filter_lut_load()
> >    drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on
> >      (e)DP/HDMI
> >    drm/i915/casf: Integrate the sharpness filter properly into the scaler
> >      code
> >
> >   drivers/gpu/drm/i915/display/intel_casf.c     | 102 +++++-----------
> >   drivers/gpu/drm/i915/display/intel_casf.h     |   6 +-
> >   .../drm/i915/display/intel_crtc_state_dump.c  |  11 +-
> >   drivers/gpu/drm/i915/display/intel_display.c  |  46 ++------
> >   .../drm/i915/display/intel_display_debugfs.c  |   5 +-
> >   .../drm/i915/display/intel_display_types.h    |   5 +-
> >   drivers/gpu/drm/i915/display/intel_dp.c       |   9 +-
> >   drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
> >   .../drm/i915/display/intel_modeset_setup.c    |   1 +
> >   drivers/gpu/drm/i915/display/intel_pfit.c     |  13 ++-
> >   drivers/gpu/drm/i915/display/skl_scaler.c     | 110 +++++++-----------
> >   drivers/gpu/drm/i915/display/skl_scaler.h     |   2 -
> >   12 files changed, 112 insertions(+), 206 deletions(-)
> >

-- 
Ville Syrjälä
Intel

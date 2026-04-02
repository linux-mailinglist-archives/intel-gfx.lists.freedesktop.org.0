Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A7YAnilzmlZpAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 19:20:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC2B38C7B9
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 19:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C4E10E514;
	Thu,  2 Apr 2026 17:20:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S7/YtJ3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C318710E514;
 Thu,  2 Apr 2026 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775150453; x=1806686453;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ELBv9icxVOBaBHJjnTq3oMtNhuaLd5GQWH0kIokdzak=;
 b=S7/YtJ3TI23PNxwMYXq6xh/UO4kP7yrgHOw+adCyRV496TmyBR3Ld7pR
 clmOQylD4P26ZWqntDH2qC04Z3gQaqGqB3sZnCkV+baRNlxqvn6YCrjwo
 UYyH9nLy8Cp740gDDO4UWUwu2gTsdgzfReXTAHzbZqKDAWV1/Xlu3+7l1
 +BrLGtyfr7QF8v8WVC+RqjOUi+MeSdn9gvNiQCN27PsgBVfK3DAaUDI36
 zEHqe1UbntAAuZgRFTILih4QFQs/COYWuAu+Y0HO2c5YIsuu0YeckXoDJ
 FcfXPjjmAHx7okmwBFk4w24xAro31QioMC9ZCAYHk7oqOWHQPkDkhMYc5 Q==;
X-CSE-ConnectionGUID: YRqb0R0lRVW5Lcd3CeKoYA==
X-CSE-MsgGUID: DbQZvZ6vQCa1xNSHjOI+9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="101668878"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="101668878"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 10:20:46 -0700
X-CSE-ConnectionGUID: n/8rBEFNQmiw0OylYkPCmg==
X-CSE-MsgGUID: FoJR6r3ATIWiCwUcLqdu8w==
X-ExtLoop1: 1
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.61])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 10:20:45 -0700
Date: Thu, 2 Apr 2026 20:20:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: Track fence region ID in plane state
Message-ID: <ac6lavov1aTtgwu3@intel.com>
References: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
 <100e73f5d1363ca1b2269f6deeb67443727efaf4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <100e73f5d1363ca1b2269f6deeb67443727efaf4@intel.com>
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
X-Spamd-Result: default: False [-0.69 / 15.00];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 6EC2B38C7B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 02, 2026 at 05:54:05PM +0300, Jani Nikula wrote:
> On Tue, 31 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > @@ -203,7 +204,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
> >  		ret = 0;
> >  
> >  		if (vma->fence)
> > -			*out_flags |= PLANE_HAS_FENCE;
> > +			*out_fence_id |= vma->fence->id;
> 
> That should obviously be an assignment rather than OR.
> 
> I was reviewing the recently enabled Sashiko LLM reviews, and it had
> spotted this one [1].
> 
> > @@ -314,7 +314,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
> >  				   fb->min_alignment, 0,
> >  				   intel_fb_view_vtd_guard(&fb->base, &fb->normal_view,
> >  							   DRM_MODE_ROTATE_0),
> > -				   false, &flags);
> > +				   &fence_id);
> 
> This might also change behaviour as previously uses_fence == false.

Hmm. Seems harmless but I guess we don't need the fence here at all.
If a fence is needed i915_vma_pin_iomap() will anyway grab one.
And even if we didn't iomap the thing intel_plane_pin_fb() would still
grab a fence if the display hardware needs it.

> 
> BR,
> Jani.
> 
> 
> 
> [1] https://sashiko.dev/#/patchset/20260331162138.19258-1-ville.syrjala%40linux.intel.com
> 
> 
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel

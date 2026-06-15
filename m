Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UC1UEtz4L2rDKgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 15:06:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC066686869
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 15:06:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=encmUAsI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188B910E428;
	Mon, 15 Jun 2026 13:06:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8F310E401;
 Mon, 15 Jun 2026 13:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781528792; x=1813064792;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Trj5PNTJ+Sg3X9GsjLKqCqikR7SQD/GFcUnRAHjLHb0=;
 b=encmUAsIca8wfXtg3TKFz4YbyrAUl1ryYMDbelWUSlquAFD9FizQU+Tn
 LybsSYq2dvTgiUrEXrbKnUsjykcpsh8dbodjhUGBgsH7h9gwBote2ECWU
 bGGf34sClynxVQ6Nxs5uj4EeiUE6VT4Snvb06b5rPfSHRz1IMj45MgyJP
 aWdnjLy92U2HmqDG6k0p1xbgX6dDHM0VEMXE9mj7QVwpEZtyJrQ/2A1Yf
 2+YNN9MIi4WtI8v1UnWMjOTjk+Mc/kj7MXpV13/gQ23/aIBtHfL8hSjau
 /RdupvK6wk5Y+VN2QDP3m3dAxL0Iyauf8zZ6PAGS+xZ6zaumus9kDA2yi Q==;
X-CSE-ConnectionGUID: HGWL7W9OSdOtaIFpcl231A==
X-CSE-MsgGUID: nQdSKUCRR/Kc2Bw3XvkNlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81405351"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="81405351"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 06:06:31 -0700
X-CSE-ConnectionGUID: BxVNk0qTTk2C0Mg4jbDAkg==
X-CSE-MsgGUID: PFETyrIrR9SHXyCBIKfwCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="244557959"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.230])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 06:06:29 -0700
Date: Mon, 15 Jun 2026 16:06:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
Message-ID: <ai_40qUa-MVdbOEf@intel.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <3d441831-71bc-49fd-823f-3af443e55b20@mailbox.org>
 <31da350f-adfc-4b2c-a7c5-5ed884ffd9ca@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <31da350f-adfc-4b2c-a7c5-5ed884ffd9ca@mailbox.org>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[gnome.org:server fail,linux.intel.com:server fail,lists.freedesktop.org:server fail,intel.com:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:server fail,lists.freedesktop.org:server fail,linux.intel.com:server fail,gnome.org:server fail];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC066686869

On Mon, Jun 15, 2026 at 11:08:59AM +0200, Michel Dänzer wrote:
> 
> Adding wayland-devel list for awareness, see also https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/5091.
> 
> 
> On 6/15/26 11:06, Michel Dänzer wrote:
> > On 6/12/26 16:41, Ville Syrjala wrote:
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>
> >> Tweak the eDP fixed mode selection algorithm to allow
> >> userspace to do refresh rate changes on VRR capable
> >> eDP panels without full modesets.
> >>
> >> Ville Syrjälä (4):
> >>   drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
> >>   drm/i915: Pass the full atomic state to .compute_config()
> >>   drm/i915/panel: Adjust intel_panel_compute_config() calling convention
> >>   drm/i915/panel: Attempt VRR based refresh rate change for
> >>     !allow_modeset
> > 
> > What's the motivation for this approach?
> > 
> > Per https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/5091#note_2784749 , it comes as a bit of a surprise. The approach we've been discussing at display hackfests instead is to add properties for controlling the maximum & minimum refresh rates.

This has nothing to do with limiting the VRR range. What we're doing
here is selecting the actual timings to drive an internal laptop panel,
given some random cooked up modeline from userspace.

We pick the actual mode from the set of "fixed modes" (ie. the modes
that the panel/system itself has reported as supported via
EDID/VBT/ACPI/etc.). For non-VRR panels we just pick the fixed mode
whose refresh rate is closest to the user specified mode, and reject
the commit if it's not close enough (<= 1 Hz). For VRR panels we
can avoid that rejection part by adjusting the vtotal appropriately,
assuming the user specified mode's refresh rate is withing the
VRR range of the panel.

> > 
> > While the approach in this series could be considered an alternative for the maximum, AFAICT it doesn't allow enforcing a minimum refresh rate which differs from the maximum and default minimum.

The timings specify the absolute max refresh rate you can achieve. So
a separate max VRR refresh rate knob would be mostly redundant, but as
we've discussed before, it could have its uses for the non-integer
vtotal use cases (CMRR in Intel parlance).

-- 
Ville Syrjälä
Intel

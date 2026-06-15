Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ST9xIqMvMGqUPgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 19:00:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C06889D9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 19:00:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=H6ifrwii;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2263810E4F4;
	Mon, 15 Jun 2026 17:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE6A10E4C6;
 Mon, 15 Jun 2026 17:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781542817; x=1813078817;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=G4RW0DOAXCOiFUvbjF7GDJDVbr5prJgzFp1ayrsFn6Y=;
 b=H6ifrwiizCqCafkSJqJEewmOXC5Olpz0nsSV0257HpWjqBzPtPbNLzv+
 ZzyvGTLlEId4kCWoRLIEpJ3Q9TlMZIQ3XXnKAp4grlr96IzQBHLpdEaoK
 EQ7zG0Bsu9VqegXwaxerKSsxZXjl6KdKfMDOX7pakQY7I1Gcs8Db6zk/k
 Ee9x23E52/Uwnw9sQfO1WHuUFBZPn8RWG6/+ohHWciXGKQgn8Q6sH4gwA
 eXLbtLTl2KPCxOELesL9Y9395IeCC52uD0m3ia5QYTPFCuXwoYezTwhWV
 kQPDoEwUROSH8U2+7ZsjFS+A6/qQRzBczqze3D9O5ZshuSE42Wk5A4H71 w==;
X-CSE-ConnectionGUID: 5C5dtPgzQae4PxUSfSA3WA==
X-CSE-MsgGUID: 1A0aSn/8TDSNrfQFlVBNzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82354607"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="82354607"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 10:00:16 -0700
X-CSE-ConnectionGUID: yDx0XeIoSxOdERLXxeoxAQ==
X-CSE-MsgGUID: fMdObLw+S16sLcSZDfWrtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271235747"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.244.114])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 10:00:11 -0700
Date: Mon, 15 Jun 2026 20:00:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
Message-ID: <ajAvYfrLu8aRilkc@intel.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <3d441831-71bc-49fd-823f-3af443e55b20@mailbox.org>
 <31da350f-adfc-4b2c-a7c5-5ed884ffd9ca@mailbox.org>
 <ai_40qUa-MVdbOEf@intel.com>
 <7402a175-a1d9-4428-8536-e37f06c1e186@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7402a175-a1d9-4428-8536-e37f06c1e186@mailbox.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 992C06889D9

On Mon, Jun 15, 2026 at 03:30:00PM +0200, Michel Dänzer wrote:
> On 6/15/26 15:06, Ville Syrjälä wrote:
> > On Mon, Jun 15, 2026 at 11:08:59AM +0200, Michel Dänzer wrote:
> >> On 6/15/26 11:06, Michel Dänzer wrote:
> >>> On 6/12/26 16:41, Ville Syrjala wrote:
> >>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>>>
> >>>> Tweak the eDP fixed mode selection algorithm to allow
> >>>> userspace to do refresh rate changes on VRR capable
> >>>> eDP panels without full modesets.
> >>>>
> >>>> Ville Syrjälä (4):
> >>>>   drm/modes: Add DRM_MODE_MATCH_TIMINGS_VRR
> >>>>   drm/i915: Pass the full atomic state to .compute_config()
> >>>>   drm/i915/panel: Adjust intel_panel_compute_config() calling convention
> >>>>   drm/i915/panel: Attempt VRR based refresh rate change for
> >>>>     !allow_modeset
> >>>
> >>> What's the motivation for this approach?
> >>>
> >>> Per https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/5091#note_2784749 , it comes as a bit of a surprise. The approach we've been discussing at display hackfests instead is to add properties for controlling the maximum & minimum refresh rates.
> > 
> > This has nothing to do with limiting the VRR range. What we're doing
> > here is selecting the actual timings to drive an internal laptop panel,
> > given some random cooked up modeline from userspace.
> 
> This use case would be covered by setting the same values for both properties.

It's all irrelevant here. We might not even have VRR enabled in this
case. All we want is to set the mode (or something close enough) to what
userspace has requested.

> 
> (There are other use cases where changing mode alone isn't enough though, e.g. involving the compositor setting a narrow range between maximum & minimum refresh rate)
> 
> 
> > For non-VRR panels we just pick the fixed mode whose refresh rate is closest to the
> > user specified mode, and reject the commit if it's not close enough (<= 1 Hz).
> 
> Sounds like that wouldn't be good enough for some video use cases I'm afraid.
> 
> 
> >>> While the approach in this series could be considered an alternative for the maximum, AFAICT it doesn't allow enforcing a minimum refresh rate which differs from the maximum and default minimum.
> > 
> > The timings specify the absolute max refresh rate you can achieve. So
> > a separate max VRR refresh rate knob would be mostly redundant, but as
> > we've discussed before, it could have its uses for the non-integer
> > vtotal use cases (CMRR in Intel parlance).
> 
> None of that addresses the lack of control of the minimum refresh range.

We've been over this before. Yes, a new property would be needed to
limit the min refresh rate if someone wants to do that.

-- 
Ville Syrjälä
Intel

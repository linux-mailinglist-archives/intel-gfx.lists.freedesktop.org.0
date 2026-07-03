Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9sL7Lt6KR2rYagAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 12:11:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BFF701084
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 12:11:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HF62Jyul;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1BC10F74C;
	Fri,  3 Jul 2026 10:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D244310F74C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2026 10:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783073498; x=1814609498;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V0cxP81y40kcFaoySbEbC5MJNTzvMlim7M1YZhvSvps=;
 b=HF62Jyulcxuj+Mq3ehpgWEzx5mkvs8svVd7irhK2NaC5TWmmA3zFWsYQ
 A//3mcUpHiJooHcmXxZXV5MxcARIADvZt88NYfwJSqc3D0GIXibHryKgS
 LtQxOjekQqYO0N5ie2nBuZ/39Moj3m31uOG2HaxzKsZsMi910f8qXoIiK
 MJUOc5GifZuc3yGEmMHZiZKOLuksHXHYeqhFJ29Zas+/FueLUMM6tkLMA
 Vzg5cpCrr4zNxQ6qQ06LZ9ZTdkVy4mGtaHJqlESGo38ROhO0rW/W4I9+p
 BlhRBfyjfoj9/5gQ9gnhDayWyqE3a8ohlfK4zbDrAvjKkRQIfSc/Gh8Iq g==;
X-CSE-ConnectionGUID: Hp32jKmUTo6TW5wJP/l6Yg==
X-CSE-MsgGUID: mfDfL0nURQq+MnoVcKiKTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="109373430"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="109373430"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 03:11:37 -0700
X-CSE-ConnectionGUID: 5VaIdD6PRRuxn/iKwVijgw==
X-CSE-MsgGUID: Dneq2nC4Q5uWUTXG9HVduA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="246706383"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.162])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 03:11:36 -0700
Date: Fri, 3 Jul 2026 13:11:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/2] drm/i915/display: reduce clock_gating interface
 between core and display
Message-ID: <akeK1a8ywbV5kZA3@intel.com>
References: <20260630090829.2778879-1-luciano.coelho@intel.com>
 <3867d5b88afe3eddf142480892344d2c24a12007@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3867d5b88afe3eddf142480892344d2c24a12007@intel.com>
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
X-Spamd-Result: default: False [-0.72 / 15.00];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:luciano.coelho@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98BFF701084

On Thu, Jul 02, 2026 at 04:22:43PM +0300, Jani Nikula wrote:
> On Tue, 30 Jun 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> > As a follow up to my previous clock-gating patches, this series
> > reduces the interface between core and display by combining all the
> > platform-specific exported functions and letting the display code
> > decide what to do for each platform.
> >
> > To do that I created an _init_early(), to hold functions that are
> > called at the beginning of the clock gating initialization and another
> > one to call the later functions, namely _init_late().
> 
> As-is, this feels like forward progress, and I like the reduction of
> interfaces.
> 
> But what I'm really interested in, can we take steps further, and stop
> the back and forth calling of the functions between i915 and display?
> 
> For example, display hsw_disable_pc8() calls intel_clock_gating_init()
> with the comment /* Many display registers don't survive PC8+ */ but
> then it does so much more than just display. And it also calls back to
> display.
> 
> Could i915 core call its own clock gating functions where needed, and
> display call its own clock gating functions where needed, and not call
> from one to the other at all? Separate the two completely, at a level or
> two higher.

Just repeating what I've said several times before; the GT stuff
should be moved out from init_clock_gating() into the
gt/engine/etc. workaround framework. What's left should hopefully
be pure display stuff...

-- 
Ville Syrjälä
Intel

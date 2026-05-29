Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJ0qBudzGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:09:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C418B6015B9
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C6D10FD7F;
	Fri, 29 May 2026 11:09:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DRl9rfNJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C8910FD7F;
 Fri, 29 May 2026 11:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052965; x=1811588965;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HSHZFyqUOmwtzI/VQMzh9t1f6QJHfsIRU8FH70CJsmc=;
 b=DRl9rfNJmrazMnuw3mGIy8lntoKENI41NfLfHLpwKLfoObAqza+woO/W
 oyf/E/wQ6oN/wJhvWHDD76nnedTRzkVUVNLljnXF7Xbl2x5Tsllhp9emB
 jjQLCxWAoBaVPtgamhgNwKiPJrsyQF+0TzO2gazJZKtEMboVAyiEpkssX
 P8Jp84XS+uPCCbJ10H0QQVjJ3UOLYRE2yYr5FWlAI7uLQMoaT/+Ey2J4s
 p9baxqsebpDV+kgCyI44cbKRRNHr6uuiLFmiXMdv7/jZ89vdk3KrVcMiV
 FpsmmpU+SH5eS/IXEFd4R8mUcvpUqMswYMJ3tPEIz6oDPFKTt+VjvLewt g==;
X-CSE-ConnectionGUID: oELRCdOwTPucM2MOY2sQng==
X-CSE-MsgGUID: zpNwWdppTkCMIsMFnYF2Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="84528880"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84528880"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:09:24 -0700
X-CSE-ConnectionGUID: c4eoXZX1R16/0TadvCuXtg==
X-CSE-MsgGUID: hHXf5ZqPRWSN3LMqLfQ7qw==
X-ExtLoop1: 1
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 2/3] drm/{i915, xe}: move xe display shutdown and pm
 hooks to intel_display_driver.c
In-Reply-To: <ahc_hyDY5QDdWoG1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1779887154.git.jani.nikula@intel.com>
 <b5d9bda0d181b8e1bb0834a977d2b632416a4a2c.1779887154.git.jani.nikula@intel.com>
 <ahcG2uqriNbcB8qY@intel.com>
 <7bd1fbcda840f3f382f29e67592b587ab844905d@intel.com>
 <ahc_hyDY5QDdWoG1@intel.com>
Date: Fri, 29 May 2026 14:09:19 +0300
Message-ID: <0345fc54f4f0176968ceb702080544f181767591@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: C418B6015B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 27 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, May 27, 2026 at 07:35:32PM +0300, Jani Nikula wrote:
>> On Wed, 27 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > This stuff is not meant for runtime pm. xe just has some
>> > obnoxious hacks in its runtime pm code to allow it to call
>> > incorrect functions from its runtime pm paths without
>> > deadlocks/etc.
>> >
>> > I think the xe hacks need to be killed and runtime pm
>> > implemented there *correctly* before we base any common
>> > code on the xe implementation.
>> >
>> > We should perhaps start from the i915 implementation
>> > instead. That might help properly highlight all the
>> > bogus things that xe is doing.
>>=20
>> There are a few reasons why I chose to start off with xe like this.
>>=20
>> The granularity of functions are a fairly good starting point for a
>> shared implementation. Simply moving them over from xe to display in a
>> non-functional way reduces xe_display.c dependency deep into display
>> functionality. It's forward progress with no risk for regressions.
>>=20
>> Sure, we could define similar functions for i915 to call, but that's
>> going to contain functional changes from about patch #1, because i915
>> calls deep into display in a very scattered way. With the approach at
>> hand, we can gradually move i915 over to the new stuff, even function by
>> function, comparing the sequences, making small changes to either along
>> the way, as the case may be.
>>=20
>> From my POV the end result is going to be the same. The difference is in
>> the path we choose.
>>=20
>> Of course, there's also the problem that I don't know for sure what all
>> the hacks are that you refer to, or what implementing runtime PM
>> correctly there means. The d3cold stuff (including those
>> intel_display_power_disable/enable() calls) is hidden behind a flag that
>> only gets called for xe, which I guess is a bit lame, but also isolates
>> it from the rest.
>
> The main issue is that xe calls the wrong things and thus ends up
> calling runtime_pm_get/put() from within the runtime suspend/resume
> hooks, which is completely wrong. IIRC that would normally just
> deadlock but there is some hack deep in the guts of the xe that
> skips the actual rpm stuff and just adjusts the refcount. And that
> brings along an implicit assumption that the device is still awake
> enough to actually work correctly for whatever the functions that
> takes the rpm ref needs. So it all works by accident, not by design.
> And it could very well break at any time by some innocent looking
> change to any of those functions that shouldn't be even be called.
>
> In i915, with its proper runtime pm implementation, we simply
> can't call any of those things from the runtime pm hooks. So someone
> will need to identify all those functions, come up with a proper way
> to do what needs to be done, and then nuke the xe hacks. Only after
> that we have any real chance of converting i915 to use that code.
>
> The other direction might allow us to proceed a bit further in
> the unification before the xe hacks need to be fixed, because
> anything i915 calls will be safe to also call in xe.
>
> I'm also not sure xe is even calling the right things in the right
> order for the things that it should be calling. Comparing with the
> i915 code should usually tell us that, but until the i915 bits have
> been extracted to similar functions it's probably a bit hard to see
> what the differences are.

Fair enough.

I'm dropping this series, and taking a completely different approach in
[1].


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1780051905.git.jani.nikula@intel.com


--=20
Jani Nikula, Intel

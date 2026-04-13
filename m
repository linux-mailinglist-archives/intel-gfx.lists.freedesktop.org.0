Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PE5B3TY3GmcWQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 13:50:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2573EB8C5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 13:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA54510E40E;
	Mon, 13 Apr 2026 11:50:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HO4ZB/8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B62110E0F7;
 Mon, 13 Apr 2026 11:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776081007; x=1807617007;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Yq89AWeM65x6lSICr/3HDVFJkQA/EojNgtug9VdEils=;
 b=HO4ZB/8UalBPbgK05vqWIYsH9OYumkMK0PS9MFyoFd2wi88RJlwq+p3w
 eKluwhT0+nL8anbLz/20wmLoRDRSsoq0850avW85mkMEt57OBdO0md/n6
 Q5imwxd6cKRtIVFDptqG/XNR2vLY/TEW1cadv9aHJg5buw6AVj9ctfRNn
 4N041spO/FJATTA8f/PepH9MfcRn3CzvqsuesngBfyocjXbL3R6Xc3AtT
 Ai+bWmb8T3bC8XB+x0VWxERViCkBXTVcuI9Ul34VMTA9L3V82crAzUaam
 4gHARBTkIzAvpFnL5A/Edv89qMDuz9mDGtS7EpoU6b6CHQXzKCT9Wg9jb Q==;
X-CSE-ConnectionGUID: nTnU0P3CSduo7824FUfQHg==
X-CSE-MsgGUID: Q5T/DgEITESW1ZpGYT8+0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76046274"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76046274"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 04:50:07 -0700
X-CSE-ConnectionGUID: /fLU7yZLSIOpyKcAJWJoDw==
X-CSE-MsgGUID: 94GyNh0VQNG5vbuGU7wtnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="253163879"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.64])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 04:50:03 -0700
Date: Mon, 13 Apr 2026 14:49:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel.daenzer@mailbox.org>
Subject: Re: [PATCH 5/6] drm/i915/reset: Handle the display vs. GPU reset
 deadlock using a custom dma-fence
Message-ID: <adzYYqOkSfY9XP_m@intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
 <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com>
 <adeLRHQ2omAv93yM@intel.com>
 <cc51ea63-19b0-4352-9299-e5ab63f57ce4@amd.com>
 <adyzR6ISo_idi38p@intel.com>
 <b93c6c33-2d94-4da8-8e97-04c3bade2575@amd.com>
 <ady-UMqIQUqmKsLv@intel.com>
 <855c4188-3701-468f-bd78-8292d6143645@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <855c4188-3701-468f-bd78-8292d6143645@amd.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BE2573EB8C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 01:24:04PM +0200, Christian König wrote:
> On 4/13/26 11:58, Ville Syrjälä wrote:
> > On Mon, Apr 13, 2026 at 11:35:23AM +0200, Christian König wrote:
> >> On 4/13/26 11:11, Ville Syrjälä wrote:
> >>>>>> I think something is missing in my picture how that is supposed to work.
> >>>>>
> >>>>> The problem stems from the fact that on old platforms a GPU reset
> >>>>> also resets the display hardware,
> >>>>
> >>>> Which is true for at least AMD GPUs and I think pretty much everybody else as well, but that wasn't so much of a problem so far.
> >>>>
> >>>>> and to do that safely we need:
> >>>>> 1. shut down display
> >>>>> 2. perform the GPU reset
> >>>>> 3. restore the display hardware to its orignal state
> >>>>
> >>>> Mhm, I've recently talked with Michel about it and we confirmed that this is perfectly possible without issues. Adding Michel as well.
> >>>>
> >>>>> We just do that with essentially with a normal atomic commit.
> >>>>
> >>>> I think that is the source of the problem.
> >>>>
> >>>> I'm not an expert on that topic but amdgpu and tons of other drivers seem to just use drm_atomic_helper_shutdown() for that.
> >>>
> >>> drm_atomic_helper_shutdown() is definitely not the thing to use
> >>> for this as it would clobber the stored kms state, leaving everything
> >>> permanently disabled. The drm_atomic_helper_commit_duplicated_state()
> >>> stuff i915 uses is the correct thing here.
> >>>
> >>> But for this problem it doesn't even matter which gets used. Either
> >>> would get equally stuck behind a previous atomic commit waiting for
> >>> its fences.
> >>>
> >>>>
> >>>> What is i915 doing differently?
> >>>
> >>> I see zero code for any display reset stuff in any other driver. If
> >>> amdgpu does anything it must be something completely custom, hidden
> >>> somewhere deep.
> >>
> >> The display is just fully reset by any MODE1 reset, you don't need to do anything special for that.
> > 
> > You can't just ignore the fact that there may be a display hardware
> > reprogramming already happening in parallel. Failing to follow the
> > correct programming sequence is a recipe for even hard system hangs.
> 
> Of course not. We have a RW lock to prevent concurrent HW access while a GPU reset is ongoing to prevent that.

Now that you mention it, I remember that long ago I did something
very similar for i915, but it required quite a bit of surgery to
the atomic core code and Sima didn't want it so it never went in.

Our modeset state is much more complex these days, so attempting
to resurrect it now (and actually getting people to accept it)
just for old hardware doesn't seem worth the effort.

I think apart from the reset fence, the only other *practical* solution
is to effectively revert Sima's commit 9db529aac938 ("drm/i915: More
surgically unbreak the modeset vs reset deadlock") and go back to the
full wedge (== cancel all in flight requests). It's a bit rude since
it will also penalize completely innocent contexts. But meh.

> > There is zero support in the atomic design for reordering commits,
> > which is pretty much what would be needed. A generic solution would
> > more or less involve a full redesign/rewrite of atomic.
> 
> Mhm, I need to ask our DC team and other contacts how that is handled at the moment for amdgpu.
> 
> But we clearly have the same problem and it doesn't require any hacks like that one here. So there must be a solution for it already.

The hacks must be on the modeset side, since as mentioned atomic has
zero support for this at the moment.

-- 
Ville Syrjälä
Intel

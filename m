Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAxQLlq+3GliVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:58:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBB03EA190
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75E589294;
	Mon, 13 Apr 2026 09:58:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iX9mg+y5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5769E89209;
 Mon, 13 Apr 2026 09:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776074326; x=1807610326;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qNKMjFoe61j8fuIzfSWj5JZC0y281bsF7isDaWbB+bI=;
 b=iX9mg+y5YCO9FHE/KWS6MRiSPGoJ1j8BOqXN2O0RGdrjL3nGzX6yiyQ+
 t8VRX4MjYfH/vgchN/FH/vOtZVvQr4G6HV9JwG5x0i+ArHPKwZOKTJ43I
 eWor2AUaVrd3bqSwENErvNAPyLZECsDCgDT6zmkqDcksYg74ofWsdxyy4
 e9JJDSOL0TaHCbIjcAgpSr37BFuq8wnCt+LgURdhnjq9yOTkCxyMWhnml
 tcb8YrqhG8kNkhmYBR63B75y8Y3oM3zGSQe1sTscRHxdz1b8xsEA42DcR
 b++cNyhkYve5lfZb+9gUzHFBD1JvM+CU7tl7kRE5OMhoXpMlO2xa67YkY w==;
X-CSE-ConnectionGUID: aSKzLAuETiuEL7a9IgfXrA==
X-CSE-MsgGUID: sSeVfMYrSle+IfMDUnDZcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="87705883"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="87705883"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:58:46 -0700
X-CSE-ConnectionGUID: +O4F51yhRdS6pTZQyUgF/g==
X-CSE-MsgGUID: ayS63NDDRjuGf3RCujOzqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="227060762"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.64])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:58:43 -0700
Date: Mon, 13 Apr 2026 12:58:40 +0300
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
Message-ID: <ady-UMqIQUqmKsLv@intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
 <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com>
 <adeLRHQ2omAv93yM@intel.com>
 <cc51ea63-19b0-4352-9299-e5ab63f57ce4@amd.com>
 <adyzR6ISo_idi38p@intel.com>
 <b93c6c33-2d94-4da8-8e97-04c3bade2575@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b93c6c33-2d94-4da8-8e97-04c3bade2575@amd.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DCBB03EA190
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 13, 2026 at 11:35:23AM +0200, Christian König wrote:
> On 4/13/26 11:11, Ville Syrjälä wrote:
> >>>> I think something is missing in my picture how that is supposed to work.
> >>>
> >>> The problem stems from the fact that on old platforms a GPU reset
> >>> also resets the display hardware,
> >>
> >> Which is true for at least AMD GPUs and I think pretty much everybody else as well, but that wasn't so much of a problem so far.
> >>
> >>> and to do that safely we need:
> >>> 1. shut down display
> >>> 2. perform the GPU reset
> >>> 3. restore the display hardware to its orignal state
> >>
> >> Mhm, I've recently talked with Michel about it and we confirmed that this is perfectly possible without issues. Adding Michel as well.
> >>
> >>> We just do that with essentially with a normal atomic commit.
> >>
> >> I think that is the source of the problem.
> >>
> >> I'm not an expert on that topic but amdgpu and tons of other drivers seem to just use drm_atomic_helper_shutdown() for that.
> > 
> > drm_atomic_helper_shutdown() is definitely not the thing to use
> > for this as it would clobber the stored kms state, leaving everything
> > permanently disabled. The drm_atomic_helper_commit_duplicated_state()
> > stuff i915 uses is the correct thing here.
> > 
> > But for this problem it doesn't even matter which gets used. Either
> > would get equally stuck behind a previous atomic commit waiting for
> > its fences.
> > 
> >>
> >> What is i915 doing differently?
> > 
> > I see zero code for any display reset stuff in any other driver. If
> > amdgpu does anything it must be something completely custom, hidden
> > somewhere deep.
> 
> The display is just fully reset by any MODE1 reset, you don't need to do anything special for that.

You can't just ignore the fact that there may be a display hardware
reprogramming already happening in parallel. Failing to follow the
correct programming sequence is a recipe for even hard system hangs.

> 
> Restoring the display after the reset is either not an atomic commit at all or done by an async worker after the reset completed.

Everything is an atomic commit. No one is going to implement a
complete second modeset codepath just for resets.

> 
> >>> But a 
> >>> previous atomic commit may already be waiting for a fence, which
> >>> won't signal until the GPU reset happens, and the GPU reset is now
> >>> waiting for that previous atomic commit to finish so that it can do
> >>> its own atomic commit. In order to break the deadlock we need to
> >>> abort the fence waits in the atomic commit, and that's what this
> >>> "reset fence" achieves.
> >>
> >> As far as I can see that approach looks strongly like a no-go.
> >>
> >> You essentially have a lock inversion here and it is documented that it should *never* be resolved by a timeout, the approach you take now is not much better.
> > 
> > Unless someone wants to add some kind of extra abort mechanism to
> > dma_fence_wait*() then I think this is probably the best solution.
> > And given this is only a thing for one driver on old hardware,
> > adding extra stuff to dma_fence_wait*() doesn't really seem worth
> > the hassle.
> 
> Well adding something to dma_fence_wait() would be a no-go as well.
> 
> The point is you should *NOT* wait for an atomic commit to finish from your GPU reset at all. Any GPU reset which waits on a DMA-fence in one way or another is a really big bug.
> 
> That is documented and Simona even came up with tons of lockdep annotation to make sure that drivers comply to that.
> 
> I'm deeply surprised that a driver like i915 actually tries something like that. And as DMA-buf maintainer I must bluntly NAK that since it goes against documented rules for implementing drivers.
> 
> I mean what can be is that this isn't really solved with the atomic mode setting helpers, but since multiple drivers use it it shouldn't be anything special at all.

There is zero support in the atomic design for reordering commits,
which is pretty much what would be needed. A generic solution would
more or less involve a full redesign/rewrite of atomic.

-- 
Ville Syrjälä
Intel

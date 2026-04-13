Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLfkJFKz3GkDVgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:11:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD213E9A3E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E384910E398;
	Mon, 13 Apr 2026 09:11:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RmbmWuz0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94E610E389;
 Mon, 13 Apr 2026 09:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776071502; x=1807607502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IxvGRtzD4DwJ9oWyjEEu23bDs4r8q04RyUD+jpLeV/I=;
 b=RmbmWuz0YnDLFpOy0Or2tArbgLWizQs58b7Mzwn96sJr5LhE3a57JUxx
 VX9ErQcMGw50WQVgl/Cr6wD+d78M+cRoO9zC6iliXaJqf7WrOIrEVaANI
 vmQ4KqXzzQ8C80PLKSJzBZJ64vcF6zydtYMnQNufWzGgXx7+UYl88rp9Z
 nGGwhDZIFfGG6+wpK4sikNK7J4VVK4gARNCmwNiKrAP9vwu7b1swTmsk5
 /+iwYtZ8Coh6R2rTzUWfKYEZ2V7njovalswb2ypDB6V2BnoBzpqcTiMR7
 qIsbsm6z4abOjmrNXE8xCK5yD3a78Nebzv+z02Y4CZ/RDkz0tLRwAzgNM w==;
X-CSE-ConnectionGUID: kE/fWliHT5mEMgP42taxiQ==
X-CSE-MsgGUID: ZmDwSGBkQ0m9Q57Mzwhatg==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="77071068"
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="77071068"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:11:41 -0700
X-CSE-ConnectionGUID: UjOu0DyeSOaX+XeuJ1m1mA==
X-CSE-MsgGUID: hJAlFyspRBO01OOymtJ5DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="234656597"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.235])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:11:38 -0700
Date: Mon, 13 Apr 2026 12:11:35 +0300
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
Message-ID: <adyzR6ISo_idi38p@intel.com>
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-6-ville.syrjala@linux.intel.com>
 <44fa373c-6216-4cc4-a605-94776b3873ad@amd.com>
 <adeLRHQ2omAv93yM@intel.com>
 <cc51ea63-19b0-4352-9299-e5ab63f57ce4@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cc51ea63-19b0-4352-9299-e5ab63f57ce4@amd.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BDD213E9A3E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 02:17:07PM +0200, Christian König wrote:
> On 4/9/26 13:19, Ville Syrjälä wrote:
> > On Thu, Apr 09, 2026 at 12:46:11PM +0200, Christian König wrote:
> >> On 4/9/26 01:34, Ville Syrjala wrote:
> >>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>>
> >>> The old display vs. GPU reset deadlock is back more or less.
> >>> The old (working) solution to the problem was originally
> >>> introduced in commit 9db529aac938 ("drm/i915: More surgically
> >>> unbreak the modeset vs reset deadlock"), but it got nuked with
> >>> commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces
> >>> instead of i915_sw_fence").
> >>>
> >>> Apparently no one looked hard enough to see that things didn't
> >>> work quite properly anymore. What is still saving us for the most
> >>> part is that we have a timeout on the fence wait
> >>> (CONFIG_DRM_I915_FENCE_TIMEOUT, 10 seconds by default). But
> >>> people are perhaps trying to get rid of that so we may need
> >>> another solution, and 10 seconds is a bit slow.
> >>
> >> Yeah agree that approach with the timeout is usually a big no no.
> >>
> >>> Re-solve the problem yet again with a custom dma-fence that gets
> >>> signaled just prior to a GPU reset, and have the atomic commit wait
> >>> for either that or the real fence using dma_fence_wait_any_timeout().
> >>
> >> Hui? I don't fully understand what the source of the problem is, but of hand that approach of solving it doesn't sound like a good idea either.
> >>
> >>> Whichever signals first will let the commit proceed. We create a new
> >>> "reset fence" whenever someone needs one, and keep it until the next
> >>> GPU reset has completed. After that the next guy will again get a
> >>> fresh unsignaled "reset fence".
> >>
> >> And that sounds even worse. A dma_fence which waits for the next GPU reset without triggering it itself would be an indefinite dma_fence which is not allowed.
> > 
> > This is a purely internal thing to the i915 display code. This fence
> > is never shared with anyone. And we never wait for just this fence,
> > the wait always happens alongside a real fence using
> > dma_fence_wait_any_timeout().
> > 
> >>
> >> I think something is missing in my picture how that is supposed to work.
> > 
> > The problem stems from the fact that on old platforms a GPU reset
> > also resets the display hardware,
> 
> Which is true for at least AMD GPUs and I think pretty much everybody else as well, but that wasn't so much of a problem so far.
> 
> > and to do that safely we need:
> > 1. shut down display
> > 2. perform the GPU reset
> > 3. restore the display hardware to its orignal state
> 
> Mhm, I've recently talked with Michel about it and we confirmed that this is perfectly possible without issues. Adding Michel as well.
> 
> > We just do that with essentially with a normal atomic commit.
> 
> I think that is the source of the problem.
> 
> I'm not an expert on that topic but amdgpu and tons of other drivers seem to just use drm_atomic_helper_shutdown() for that.

drm_atomic_helper_shutdown() is definitely not the thing to use
for this as it would clobber the stored kms state, leaving everything
permanently disabled. The drm_atomic_helper_commit_duplicated_state()
stuff i915 uses is the correct thing here.

But for this problem it doesn't even matter which gets used. Either
would get equally stuck behind a previous atomic commit waiting for
its fences.

> 
> What is i915 doing differently?

I see zero code for any display reset stuff in any other driver. If
amdgpu does anything it must be something completely custom, hidden
somewhere deep.

> 
> > But a 
> > previous atomic commit may already be waiting for a fence, which
> > won't signal until the GPU reset happens, and the GPU reset is now
> > waiting for that previous atomic commit to finish so that it can do
> > its own atomic commit. In order to break the deadlock we need to
> > abort the fence waits in the atomic commit, and that's what this
> > "reset fence" achieves.
> 
> As far as I can see that approach looks strongly like a no-go.
> 
> You essentially have a lock inversion here and it is documented that it should *never* be resolved by a timeout, the approach you take now is not much better.

Unless someone wants to add some kind of extra abort mechanism to
dma_fence_wait*() then I think this is probably the best solution.
And given this is only a thing for one driver on old hardware,
adding extra stuff to dma_fence_wait*() doesn't really seem worth
the hassle.

-- 
Ville Syrjälä
Intel

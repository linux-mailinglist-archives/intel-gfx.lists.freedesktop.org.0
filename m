Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDaoMx9KEGpvVwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:20:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4AC5B3CD4
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466B110E266;
	Fri, 22 May 2026 12:20:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VBhyM6o9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878AB10E25B;
 Fri, 22 May 2026 12:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779452444; x=1810988444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EfclSKAeI3uIA/dMBF+fXxQMgAJsFpaqp2aUL9zk9y4=;
 b=VBhyM6o9w/DYj2I/0efAhaPzuN7j6pJO2+EgNfQJcCV8l1bERaafOGu8
 AOnsV3FsjYp9kIk7vP+uoEfcQNL8nEenHW+4iLsIJlURiv3v6qB69ct7W
 O2zHoAnbIPvqh5V+McjR+kL6LvqOtL/+a2qt2A+3ZYW/XemVHlzUKYnRu
 WcFRKF7RkDloHTkulXMshkDxkrwy+59B368u3BcofWahnfb+9s4TJJPvl
 Dk/50fdMDj431QMeJOVb5ClP+SH89ZcBk0/W/0qyDmjHvg3UxonRhUmu9
 gghM37eYvWgQ96PERP8K2zdFx+9aRPdI1ck3eTr0WACLQt26eO+qtSf6O w==;
X-CSE-ConnectionGUID: IDuBC8EuT/CIFR/kFOyHQQ==
X-CSE-MsgGUID: +m1l2r5/QKi4ZurnZ2urxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80502026"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="80502026"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 05:20:44 -0700
X-CSE-ConnectionGUID: ui4n86cHTQ2jAdDhJ8SLuA==
X-CSE-MsgGUID: u9kas//tQrWcR1lsAeeaBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="239873873"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by orviesa006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2026 05:20:42 -0700
Date: Fri, 22 May 2026 15:20:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: imre.deak@intel.com, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [RESEND 1/6] drm/{i915, xe}: move
 xe_display_flush_cleanup_work() to i915 display
Message-ID: <ahBKF-AH-mKmZ-0e@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
 <7aecde385b66dbf7d0e61759528c6cd643581a3d.1778659089.git.jani.nikula@intel.com>
 <agRp6Was9FCQbKee@intel.com>
 <a6cb2e030e9118084abfc315c557a8b11d8db3d7@intel.com>
 <agSRBmiw7mVNxKC2@ideak-desk.lan>
 <6c89542bba35b03826d5c9237e33383c7ba9f489@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c89542bba35b03826d5c9237e33383c7ba9f489@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: BF4AC5B3CD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 11:34:14AM +0300, Jani Nikula wrote:
> On Wed, 13 May 2026, Imre Deak <imre.deak@intel.com> wrote:
> > On Wed, May 13, 2026 at 05:19:19PM +0300, Jani Nikula wrote:
> >> On Wed, 13 May 2026, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Wed, May 13, 2026 at 10:58:35AM +0300, Jani Nikula wrote:
> >> >> xe_display_flush_cleanup_work() is a bit of an oddball function in xe
> >> >> display code. There shouldn't be anything this specific or xe
> >> >> specific. While I'm not sure what the correct refactor for the function
> >> >> should be, move it to shared display code for starters, next to the
> >> >> eerily similar but slightly different intel_has_pending_fb_unpin() that
> >> >> is only called from i915 core.
> >> >> 
> >> >> The main goal here is to unblock some refactors on
> >> >> for_each_intel_crtc().
> >> >> 
> >> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++
> >> >>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
> >> >>  drivers/gpu/drm/xe/display/xe_display.c      | 27 +++-----------------
> >> >>  3 files changed, 25 insertions(+), 24 deletions(-)
> >> >> 
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> >> index d5cf1476c7b9..50feca52b962 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> >> @@ -737,6 +737,27 @@ bool intel_has_pending_fb_unpin(struct intel_display *display)
> >> >>  	return false;
> >> >>  }
> >> >>  
> >> >> +void intel_display_flush_cleanup_work(struct intel_display *display)
> >> >> +{
> >> >> +	struct intel_crtc *crtc;
> >> >> +
> >> >> +	for_each_intel_crtc(display->drm, crtc) {
> >> >> +		struct drm_crtc_commit *commit;
> >> >> +
> >> >> +		spin_lock(&crtc->base.commit_lock);
> >> >> +		commit = list_first_entry_or_null(&crtc->base.commit_list,
> >> >> +						  struct drm_crtc_commit, commit_entry);
> >> >> +		if (commit)
> >> >> +			drm_crtc_commit_get(commit);
> >> >> +		spin_unlock(&crtc->base.commit_lock);
> >> >> +
> >> >> +		if (commit) {
> >> >> +			wait_for_completion(&commit->cleanup_done);
> >> >> +			drm_crtc_commit_put(commit);
> >> >> +		}
> >> >> +	}
> >> >> +}
> >> >> +
> >> >>  /*
> >> >>   * Finds the encoder associated with the given CRTC. This can only be
> >> >>   * used when we know that the CRTC isn't feeding multiple encoders!
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> >> >> index a43ada0c0502..65f8c81a7bae 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_display.h
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> >> >> @@ -402,6 +402,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
> >> >>  void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
> >> >>  void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
> >> >>  bool intel_has_pending_fb_unpin(struct intel_display *display);
> >> >> +void intel_display_flush_cleanup_work(struct intel_display *display);
> >> >>  void intel_encoder_destroy(struct drm_encoder *encoder);
> >> >>  struct drm_display_mode *
> >> >>  intel_encoder_current_mode(struct intel_encoder *encoder);
> >> >> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >> >> index aa73023b7398..ef27fdfdbab2 100644
> >> >> --- a/drivers/gpu/drm/xe/display/xe_display.c
> >> >> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> >> >> @@ -258,27 +258,6 @@ static bool suspend_to_idle(void)
> >> >>  	return false;
> >> >>  }
> >> >>  
> >> >> -static void xe_display_flush_cleanup_work(struct xe_device *xe)
> >> >> -{
> >> >> -	struct intel_crtc *crtc;
> >> >> -
> >> >> -	for_each_intel_crtc(&xe->drm, crtc) {
> >> >> -		struct drm_crtc_commit *commit;
> >> >> -
> >> >> -		spin_lock(&crtc->base.commit_lock);
> >> >> -		commit = list_first_entry_or_null(&crtc->base.commit_list,
> >> >> -						  struct drm_crtc_commit, commit_entry);
> >> >> -		if (commit)
> >> >> -			drm_crtc_commit_get(commit);
> >> >> -		spin_unlock(&crtc->base.commit_lock);
> >> >> -
> >> >> -		if (commit) {
> >> >> -			wait_for_completion(&commit->cleanup_done);
> >> >> -			drm_crtc_commit_put(commit);
> >> >> -		}
> >> >> -	}
> >> >> -}
> >> >> -
> >> >>  static void xe_display_enable_d3cold(struct xe_device *xe)
> >> >>  {
> >> >>  	struct intel_display *display = xe->display;
> >> >> @@ -292,7 +271,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
> >> >>  	 */
> >> >>  	intel_power_domains_disable(display);
> >> >>  
> >> >> -	xe_display_flush_cleanup_work(xe);
> >> >> +	intel_display_flush_cleanup_work(display);
> >> >>  
> >> >>  	intel_opregion_suspend(display, PCI_D3cold);
> >> >>  
> >> >> @@ -347,7 +326,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >> >>  		intel_display_driver_suspend(display);
> >> >>  	}
> >> >>  
> >> >> -	xe_display_flush_cleanup_work(xe);
> >> >> +	intel_display_flush_cleanup_work(display);
> >> >
> >> > intel_display_driver_suspend() already flushes the cleanup wq. So I
> >> > think this is doing nothing. The correct answer seems to be to nuke
> >> > the whole thing. We are missing the wq flush from the shutdown() path
> >> > in i915 however, so I suppose we should add it there.
> >> >
> >> >>  
> >> >>  	intel_encoder_block_all_hpds(display);
> >> >>  
> >> >> @@ -379,7 +358,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
> >> >>  		intel_display_driver_suspend(display);
> >> >
> >> > This should rather be the same atomic helper shutdown that i915 uses.
> >> > I guess what we want is a intel_display_driver_shutdown() to pair
> >> > up with intel_display_driver_suspend().
> >> 
> >> Yeah, well, another "Hal fixes a light bulb" moment. I just wanted to
> >> clean up the iterators, but I can't do that with xe having crtc
> >> iteration, which it never should have had in the first place.
> >> 
> >> I think all of the i915/xe/display probe/cleanup/suspend/resume paths
> >> are a gigantic mess. It was a mess with just i915, and xe added another,
> >> *different* mess. They both do things differently, but *neither* should
> >> be calling low-level display stuff directly.
> >> 
> >> I'll try to cook something up for this.
> >
> > Fwiw, this came up already earlier [1] and then I came up with
> > https://github.com/ideak/linux/commits/suspend-shutdown-refactor
> >
> > but haven't followed up with it. For reference I rebased it now on
> > drm-tip.
> >
> > [1] https://lore.kernel.org/all/aIjizdet9ZUXB-yx@ideak-desk
> 
> I've started on this, but I'm planning on taking a slightly different
> route from what Imre has there. The direction is the same, move more of
> this detailed stuff to display.
> 
> But Imre also has a change similar to the patch at hand as the first
> thing.
> 
> And that's the thing. I feel like starting to fix this one in xe code
> blocks the remainder of this series, and blocks the straighforward
> refactors of the probe/remove/suspend/remove parts. IMO it's easier to
> unify with all this code moved to display first.
> 
> Ville, as I wrote in the commit message, can we just move this out of
> the way to unblock further changes? It's a non-functional change,
> doesn't make anything better or worse, apart from removing CRTC
> iteration from xe code, and unblocks further work.

I guess. Maybe just toss in a FIXME to delete this later.

-- 
Ville Syrjälä
Intel

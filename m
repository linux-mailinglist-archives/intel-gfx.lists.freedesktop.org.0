Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBFCA5DA22
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 11:06:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941E610E749;
	Wed, 12 Mar 2025 10:06:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SNDMK2NH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D5E10E749;
 Wed, 12 Mar 2025 10:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741773967; x=1773309967;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9+rx+3Y5pr28n/P5r06POQpUlIQEGq6IoSSAcMn1gP8=;
 b=SNDMK2NHZDhP1zmdLP3+QyEzcWjOTRJwj0tD2r80+B6k1XfJn72BNIVz
 E3gZJ5yqiMFvVeyNMoVbec6wrrgdqXBy90uuwgWcf7X3RvbelCHC2kqB/
 ndyN+9Cf6QcIirQvBT4FgB+MqkwdTPQLwpXJpXwUizd4cXrumXXmtu+53
 MU1iFahaQ0RfXaNDOnF1GvE51h7tRwnmI3T1TDpF4Nb2w+dlkJTsqp5Zx
 pKNc0Gra1GnZxO1UN4NWIL3kmRXmvMAPjbXABEIX0jbNJisuehzeYYBtk
 IDgOqDqZqcuABOCfDTy5QcGVwD1o0xCKaUrfRiEJ3c6pwDhsx2ZIBPZjo w==;
X-CSE-ConnectionGUID: n+/wxfEdQeiEyALAhcWeRg==
X-CSE-MsgGUID: O7A9tG8qRneFKp+k2SPMQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46627826"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="46627826"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 03:06:07 -0700
X-CSE-ConnectionGUID: 8/qBfxVhRAmrAIqoXf1KXA==
X-CSE-MsgGUID: 2MeAHz9PTxOLH8hoVYZ3lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="125782329"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 12 Mar 2025 03:06:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Mar 2025 12:06:02 +0200
Date: Wed, 12 Mar 2025 12:06:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/irq: convert intel_display_irq.[ch]
 interfaces to struct intel_display
Message-ID: <Z9Fcis7mRjc7NIhC@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <df68cf79674a31bb55b641e29976052d380274a4.1741715981.git.jani.nikula@intel.com>
 <Z9CL3WH695G-j1w3@intel.com> <87r032fue6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r032fue6.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Mar 12, 2025 at 11:52:33AM +0200, Jani Nikula wrote:
> On Tue, 11 Mar 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Mar 11, 2025 at 08:00:41PM +0200, Jani Nikula wrote:
> >>  static void
> >>  ivb_primary_enable_flip_done(struct intel_plane *plane)
> >>  {
> >> +	struct intel_display *display = to_intel_display(plane);
> >>  	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> >>  
> >>  	spin_lock_irq(&i915->irq_lock);
> >> -	ilk_enable_display_irq(i915, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
> >> +	ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9xx_plane));
> >>  	spin_unlock_irq(&i915->irq_lock);
> >
> > I was pondering if we could just suck the lock into these
> > guys. But at least the fifo underrun reporting code is using
> > some of these things and there there the lock is taken
> > further out. So sadly not as trivial as I was hoping.
> 
> The whole i915->irq_lock (*) is a looming problem for display separation
> from i915/xe core.
> 
> How do you abstract a spin lock? Is it okay to pass a spinlock_t * from
> i915 core code to display, which would then store this pointer and use
> it locally?

I think we should be able to just switch to our own display->irq_lock.
I don't think we're really protecting anything shared between gt and
display with this.

-- 
Ville Syrjälä
Intel

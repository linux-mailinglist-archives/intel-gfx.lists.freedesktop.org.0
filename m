Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA9DC4152E
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:45:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E377E10EB52;
	Fri,  7 Nov 2025 18:45:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DraJQlRb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDB710E085;
 Fri,  7 Nov 2025 18:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762541131; x=1794077131;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y5MoTJ3TiMXTWKdkRAnMqnzqvALvQEknhLusJNdzwK8=;
 b=DraJQlRbqMIkscT9KEHFFZrBinVzAWvVdgeEesOctWVdYwrcz0HxtlO4
 xd+JvV4GpBxqrs6dlqx6IdAwKiU+pFUYExmGOHBT0pXHsm5P1PQU6HMyS
 7X+54IVjb0/geMNSNTwOOH0tAci9zwp0vw4rTnK4N05eKV487L6gt2n4T
 kd2hnXVay4nY4I4Jc0CNvMvAzKRgf5rXH4Vrnt7f6rmi+Cw2wC0JBP4g+
 8FoOfNg+cazouNG1ZZ1rza1t5+SNbE/78MFiBhpf+9FQB63bQEoXOsHpa
 FOVLQGfnObVvQPZM1pPG4uET/NKI88IIq8VUgrS/dEZm0xLd9FblAIkL3 A==;
X-CSE-ConnectionGUID: mWteYfTUQk+5at6n/cMN9w==
X-CSE-MsgGUID: EVi0Wi+rRgmX2Wa4fCYDWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="68342940"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="68342940"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:45:30 -0800
X-CSE-ConnectionGUID: RYplqaeRS9mln77/j0RyPA==
X-CSE-MsgGUID: wXaNuPQ6Sg2lC/4n6VlOpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188269103"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:45:28 -0800
Date: Fri, 7 Nov 2025 20:45:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 09/10] drm/i915/frontbuffer: Fix intel_frontbuffer
 lifetime handling
Message-ID: <aQ4-RoNa8rkf4G_D@intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
 <20251016185408.22735-10-ville.syrjala@linux.intel.com>
 <3ff7d1d35b1c71b4fdf55fc3b208c8f84bc0f18f@intel.com>
 <694686f8a4bf4af7a7cb1c21859349da9720a44f@intel.com>
 <a631d0f6db1903ae198752a38df47f34815f3c44@intel.com>
 <aQywXhRtluWSFN8P@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aQywXhRtluWSFN8P@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 06, 2025 at 04:27:42PM +0200, Ville Syrjälä wrote:
> On Thu, Nov 06, 2025 at 03:48:25PM +0200, Jani Nikula wrote:
> > On Wed, 29 Oct 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > > On Wed, 29 Oct 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > >> On Thu, 16 Oct 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > >>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >>>
> > >>> The current attempted split between xe/i915 vs. display
> > >>> for intel_frontbuffer is a mess:
> > >>> - the i915 rcu leaks through the interface to the display side
> > >>> - the obj->frontbuffer write-side is now protected by a display
> > >>>   specific spinlock even though the actual obj->framebuffer
> > >>>   pointer lives in a i915 specific structure
> > >>> - the kref is getting poked directly from both sides
> > >>> - i915_active is still on the display side
> > >>>
> > >>> Clean up the mess by moving everything about the frontbuffer
> > >>> lifetime management to the i915/xe side:
> > >>> - the rcu usage is now completely contained in i915
> > >>> - frontbuffer_lock is moved into i915
> > >>> - kref is on the i915/xe side (xe needs the refcount as well
> > >>>   due to intel_frontbuffer_queue_flush()->intel_frontbuffer_ref())
> > >>> - the bo (and its refcounting) is no longer on the display side
> > >>> - i915_active is contained in i915
> > >>>
> > >>> I was pondering whether we could do this in some kind of smaller
> > >>> steps, and perhaps we could, but it would probably have to start
> > >>> with a bunch of reverts (which for sure won't go cleanly anymore).
> > >>> So not convinced it's worth the hassle.
> > >>
> > >> It's a PITA to review, that's for sure. :p
> > >>
> > >> I'm not particularly fond of embedding struct intel_frontbuffer inside
> > >> struct i915_frontbuffer and struct xe_frontbuffer, because it means i915
> > >> and xe will need to know the struct intel_frontbuffer definition. If we
> > >> can't live with the embedding long term, we'll probably need opaque
> > >> pointers back and forth.
> > >>
> > >> That said, I think the overall change here is net positive, and makes
> > >> life much easier. We don't have to fix everything at once, so let's go
> > >> with this.
> > >>
> > >> I didn't spot any obvious issues, but my confidence level with the
> > >> review is super low. :(
> > >>
> > >> I guess the alternatives are to just go with that, trusting CI, or give
> > >> me more time to review. I'm fine either way, as I can trust you to step
> > >> up if it goes crashing down. ;)
> > >
> > > One approach is to send 1-8 first, get CI, get them merged, and then do
> > > 9-10 separately, to get separate CI. Maybe? *shrug*
> > 
> > Any conclusions on this? Just merge the whole thing as-is rather than
> > let it go stale...?
> 
> I think we could just merge as is. Pretty sure I didn't have any
> real functional changes in there.

Merged the whole thing. Thanks for the review.

-- 
Ville Syrjälä
Intel

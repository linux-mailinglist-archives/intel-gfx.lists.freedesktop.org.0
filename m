Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F0EC4EF29
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 17:11:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A0010E5FD;
	Tue, 11 Nov 2025 16:11:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sn4WiQeM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA79110E60B;
 Tue, 11 Nov 2025 16:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762877466; x=1794413466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1unTRmKj+E0JnR1Giup3SNEbyX2y9FehG19N8CTXCDQ=;
 b=Sn4WiQeMqx4C5S1Z8GZlbD/RVK8D+0cRFqGu63fEB8GPDBX90JB64N2e
 FtAO6Z3Rn2moLC6bF3uGw+YyeJxqXNoSxFaT9U0eiqIyhNOKR+NNxxO0d
 n+W3wK2kqkWoHz+ZSMiU73jdlwd8B/yhmkQj+DRqIVV89JqrQRTGJmgoh
 8yjfsu9RlIiMAiUzp7Ix5+8friNWkdkDzOjm1eLuOVvtS5E85Ed1doLBQ
 oxg44XS4/PFjU4KmVnuACFPdYPoYZO8Jvl1MdoD/QBWPv0SOs1NsWDxtE
 JWJLDZgDTIAp6vPdWjdWctt82Ez74luYZwkPc31EQ+lZseeJdocVu8V6X Q==;
X-CSE-ConnectionGUID: 97Ul4sQVRXm7GzuBN0sdtQ==
X-CSE-MsgGUID: utItmzHiQ5+DYZub/ytEXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="76045014"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="76045014"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 08:11:06 -0800
X-CSE-ConnectionGUID: ElfrftS3TPmtp4kpm0B2Uw==
X-CSE-MsgGUID: SUnjusAZTlqQlO6j+LfdTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="194195236"
Received: from bjrankin-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.124.223.47])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 08:11:05 -0800
Date: Tue, 11 Nov 2025 18:11:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/16] drm/i915/de: Register polling cleanup
Message-ID: <aRNgFWWLlp_qeRGa@intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <72502cbc1d1587e3a2671a8f84bae8a441b67908@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <72502cbc1d1587e3a2671a8f84bae8a441b67908@intel.com>
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

On Tue, Nov 11, 2025 at 10:01:14AM +0200, Jani Nikula wrote:
> On Mon, 10 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Clean up the register polling stuff:
> > - rename the current wait stuff to
> >   intel_de_wait_{,for_set,for_clear}_ms()
> > - introduce intel_de_wait_{,for_set,for_clear}_us()
> > - nuke intel_de_wait_custom()
> > - change the wakelock stuff to use _fw() instead of
> >   hand rolling yet another level of register accessors
> > - a few other minor cleanups
> >
> > After this it should be fairly easy to switch over to
> > poll_timeout_us().
> 
> Overall the series looks fine.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> since Suraj already did the detailed review.
> 
> One questions remains unanswered, and I guess I'll have to wait for
> follow-up to see the answer. I really *really* dislike how the i915
> variants are somewhat ambiguously atomic, i.e. atomic when slow timeout
> is 0, and the xe wrappers replicate that behaviour. xe_mmio_wait32() has
> atomic as parameter.
> 
> I would like the atomic variants to be explicit, and separate. Similar
> to poll_timeout_us() and poll_timeout_us_atomic(). You immediately know
> from the call whether you're doing the right thing or not. And that
> really should not directly depend on the timeout length. Since you plan
> on using the generic poll helpers, I presume this will propagate to the
> register polling helpers.
> 
> Since we do a lot of non-atomic millisecond waits, I guess it's worth
> having the _ms variants, although like I said before, I'd kind of like
> going for _us all over the place. But no big deal, in the end the _ms
> variants can be trivial wrappers on the non-atomic _us ones.

At the end of this series we have intel_de_wait_fw_us_atomic()
which is the only thing that anyone should call from atomic
context. Granted the _us() stuff all still work in atomic
context due to the underlying uncore implementation. But
when we switch to poll_timeout_us() I plan to make all the
other stuff unusable from atomic contexts.

Ideally we probably shouldn't even have intel_de_wait_fw_us_atomic().
I think the wakelock code is the only place that needs it,
due to the spinlock presumably. I haven't checked if we could
just eg. make that a mutex and use the non-atomic thing there
as well.

-- 
Ville Syrjälä
Intel

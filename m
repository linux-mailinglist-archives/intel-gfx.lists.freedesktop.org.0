Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FD7BE85C2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 13:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F0310EBB9;
	Fri, 17 Oct 2025 11:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMl6de+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA35D10EBB9;
 Fri, 17 Oct 2025 11:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760700850; x=1792236850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eqYc+8NXZsrYcrcwCkaWwSTQ+xER0oVRvXfADY4GuKA=;
 b=mMl6de+QUkwUEB44VSJ+LtM7K4cYN4RJwgs2rhCn89EOONjrgFz0aKL5
 NZytOAL4K/FbIVRJx0gLpZ1EGii11zSZlXrGrVnmYjYTjwG2FpMieLOnX
 qGM/wdd2HzzyqGCxL9yKZXVdpqktaczCZiY2X783uoP3L/Dzz9R4v0Ke5
 Tz09lTzJy1hAm2ubMEJhRFkjgkS8hrF+LrPcJbo2jcqtC0p3g6i+8hS2h
 WYS7b/E8S9L+d6cnp2V8qL0Hnwp/2TCgg1Y5QZt7IvngyLTAMvfebcNBI
 5UssGNPbXVdt8VHQzXAIvun8kGwTepyMcJRUvYBIrKDYiKRLB81tEc3MT Q==;
X-CSE-ConnectionGUID: n8jSWxWBSpejcLXSTyaxog==
X-CSE-MsgGUID: jkDkAPCJTtCPbVyETrNSXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="50476948"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="50476948"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:34:10 -0700
X-CSE-ConnectionGUID: dftwjjGNS+20YPPwObsFYQ==
X-CSE-MsgGUID: kUPqupS9QLa40fYLcRBWbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187808673"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2025 04:34:08 -0700
Date: Fri, 17 Oct 2025 13:34:05 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t v3 6/6] tests/gem_eio: Reduce debug info on dmesg
 from kms subtest
Message-ID: <20251017113405.tskmwg5v2d23ldrg@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-14-janusz.krzysztofik@linux.intel.com>
 <r6kqf64dizraseqfmay364sebr7ixbrrrhujzhhnfe3ozlybgq@633ndzkdohl7>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <r6kqf64dizraseqfmay364sebr7ixbrrrhujzhhnfe3ozlybgq@633ndzkdohl7>
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

Hi Krzysztof,
On 2025-10-16 at 06:45:11 +0000, Krzysztof Karas wrote:
> Hi Janusz
> 
> > CI enables drm_debug flags that result in significant amount of display
> > related messages appearing in dmesg.  In case of kms subtest, which runs
> > a loop of reset-resume cycles while touching a display in background, the
> > amount of dsiplay related debug messages may lead to exhaustion of per
> dsiplay -> display
> 
> > test disk space limit.  Disable those messages while a display helper
> > spawned by that subtest is running.
> > 
> > Suggested-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Thank you all, I pushed this with tests/intel/gem_eio: prefix,
sorry I missed this nit from you.

Regards,
Kamil

> > ---
> >  tests/intel/gem_eio.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > index be071ba8a0..9389efb968 100644
> > --- a/tests/intel/gem_eio.c
> > +++ b/tests/intel/gem_eio.c
> > @@ -1022,6 +1022,9 @@ static void display_helper(igt_display_t *dpy, int *done)
> >  	const int commit = dpy->is_atomic ? COMMIT_ATOMIC : COMMIT_LEGACY;
> >  	struct igt_fb fb = {};
> >  
> > +	igt_install_exit_handler(igt_drm_debug_mask_reset_exit_handler);
> > +	igt_drm_debug_mask_update(DRM_UT_DRIVER);
> > +
> >  	while (!READ_ONCE(*done)) {
> >  		drmModeModeInfoPtr mode;
> >  		igt_plane_t *primary;
> > -- 
> > 2.51.0
> > 
> 
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> -- 
> Best Regards,
> Krzysztof

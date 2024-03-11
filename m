Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED35B8782BE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 16:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DDE9112AEC;
	Mon, 11 Mar 2024 15:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWe9ts9d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B83C110F9CA;
 Mon, 11 Mar 2024 15:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710169569; x=1741705569;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y7mKcmJqM3ocAqHwQMMTV8TkVfJrzsnFU6f/0e4lylc=;
 b=YWe9ts9dgMCbPgODdNqmLfsx0K8TebF8IZET27K4pIrgTpxs5TCYbhUZ
 RCskuNcv1Wo+x+qeB2tjUnCNEoFkDBFlmlPbKmta6XA9B1+cog56AADCR
 b4A5o3SlNeBvR7UKvDfJMIp0QSkrY2SRuJn9w+pZCJQFvsx5Unboy4Z1P
 tIaKU6045OJvnh4YpvlOYcOV5qP2AL4+xjalwoKGyo0dUMDpKAI9bXCf6
 8hPdaPOoHq+yZOzJMCBK9fPsGUsfhP8hm4Bw1d/tDLoxde/8dwbxt8hTm
 WFNHosGTDe0gYKRknzzGMnwIBi/atqyl9uCPqgT1A6hxoHhXZN5BkyNNA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="22357823"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="22357823"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 08:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15690918"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 08:06:06 -0700
Date: Mon, 11 Mar 2024 17:06:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <Ze8d+ABttapojKHq@ideak-desk.fi.intel.com>
References: <20240307001554.162153-1-rodrigo.vivi@intel.com>
 <ZekKtpIobqZzyvDR@intel.com> <ZenTPngZUhMx5V4z@intel.com>
 <ZeogFEKNw4QYTG1J@ideak-desk.fi.intel.com>
 <ZessnpTxaTDvmvGz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZessnpTxaTDvmvGz@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 08, 2024 at 10:19:58AM -0500, Rodrigo Vivi wrote:
> [...]
> > 
> > The difference between a wakeref (aka wakelock) and a raw-wakeref is
> > that the former is required for accessing the HW, which is asserted when
> > reading/writing a register. A raw-wakeref is not enough for this and is
> > only taken to prevent runtime suspending, for instance held after
> > dropping a display power reference, until the power well is actually
> > disabled in a delayed manner. During this time any register access is
> > considered invalid.
> 
> ah okay, so it is not just about the GT, but also about MMIO accesses.
> So the ones in display looks better now. Thanks for this correction.
> 
> > 
> > Both wakerefs and raw-wakerefs are tracked.
> 
> Indeed. And also it is worth to say that this patch doesn't introduce
> any change on that.
> 
> both
> intel_runtime_pm_get()
> and
> intel_runtime_pm_get_if_in_use()
> 
> calls
> intel_runtime_pm_acquire(rpm, true);
> return track_intel_runtime_pm_wakeref(rpm);
> 
> so, can we move forward with this change or do you guys see any blocker?

I also think intel_runtime_pm_get_noresume() would be more logical here,
as it's already known that rpm->usecount is non-zero,
intel_runtime_pm_get_if_in_use() also works though. Either way:

Acked-by: Imre Deak <imre.deak@intel.com>

> Thanks a lot,
> Rodrigo.
> 
> > 
> > > One thing that crossed my mind many times already is to simply entirely
> > > remove the runtime_pm from display and do like other drivers simply
> > > checking for crtc connection at runtime_idle.
> > > 
> > > But then there are places where current display code uses the rpm
> > > in use to take different code paths, and also all the possible impact
> > > with the dc states transitions and other cases that I always gave up
> > > on the thought very quickly.
> > > 
> > > But you are right, we will have to comeback and clean things up
> > > one way or another.
> > > 
> > > But I wish we can have at least this small change in first so I don't
> > > get blocked by xe's lockdep annotation and I also don't have to
> > > workaround the annotation itself.
> > > 
> > > > 
> > > > >  
> > > > >  	for_each_power_domain(domain, mask) {
> > > > >  		/* Clear before put, so put's sanity check is happy. */
> > > > > -- 
> > > > > 2.43.2
> > > > 
> > > > -- 
> > > > Ville Syrjälä
> > > > Intel

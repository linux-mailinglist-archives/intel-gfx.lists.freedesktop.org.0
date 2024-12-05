Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D619E5B56
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 17:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05D610E013;
	Thu,  5 Dec 2024 16:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U4gyJTbZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A4B10E013
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 16:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733416003; x=1764952003;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0AaU+Cmh0V9VxiCIQqwIVPm5h2qK/E87y9eTIxXPM+k=;
 b=U4gyJTbZFzWfqFa7iI5I3mH6EidrEerYFJa69zd73eKBv27SxJ3scUDX
 a7znxZz51xGd7frfdk6su1Gjf9JhSzFmuF/WqoMqHKZbKcWgYFRc+fTZA
 5nGH1nanGBryijOD5BXwDdQo44qZbK/ojVWLOsL0D/TeDTPD18C/LVCnr
 ZGIKCtVBJzqNgZsmK/qPGKiVO0PdFIhcQ0yQUcCbwPYPhJ99pt3su7MEN
 BhzNwyG8favVOL0Nnt1VAaSvIPUWA/LlCpGYaqqgAJgT0/+1n7Tj6dnrC
 pwcrFO/aDD9MQSPuTd2DNjvSNPRHLqXZXepC+tZwdthG3ArGmNQHRo8py Q==;
X-CSE-ConnectionGUID: n8Kt+AZLSWed4ujlxTsr3g==
X-CSE-MsgGUID: yEiwdqKkSFqsatoPol5b+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33800371"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33800371"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 08:26:37 -0800
X-CSE-ConnectionGUID: noOdagqQTLmxfYDUK848bg==
X-CSE-MsgGUID: OzdSW2+EScuuAALTDkMxCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="93962852"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.41])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 08:26:35 -0800
Date: Thu, 5 Dec 2024 17:26:31 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Subject: Re: [PATCH v1 1/1] drm/i915/gt: Increase a time to retry RING_HEAD
 reset
Message-ID: <Z1HUN02DEt1qppvN@ashyti-mobl2.lan>
References: <20241205115736.1420991-1-nitin.r.gote@intel.com>
 <Z1GlE9-Z_3SVnTRq@ashyti-mobl2.lan>
 <SJ0PR11MB5867E64C895E2C48B701CBF7D0302@SJ0PR11MB5867.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ0PR11MB5867E64C895E2C48B701CBF7D0302@SJ0PR11MB5867.namprd11.prod.outlook.com>
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

Hi Nitin,

On Thu, Dec 05, 2024 at 04:03:38PM +0000, Gote, Nitin R wrote:
> > On Thu, Dec 05, 2024 at 05:27:36PM +0530, Nitin Gote wrote:
> > > Issue is seen again where engine resets fails because the engine
> > > resumes from an incorrect RING_HEAD. So, increase a time if at first
> > > the write doesn't succeed and retry again.
> > >
> > > Fixes: 6ef0e3ef2662 ("drm/i915/gt: Retry RING_HEAD reset until it get
> > > sticks")
> > 
> > Is this a real fix or is it more of a fine tuning?
> 
> Here we can say this for more fine tuning as issue seen again and 
> that's why I have added fixes : 6ef0e3ef2662.

I thinkt he Fixes: tag is not necessary, here. You are not really
fixing a bug.

> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12806
> > > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > 
> > ...
> > 
> > > @@ -231,7 +231,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
> > >  	set_pp_dir(engine);
> > >
> > >  	/* First wake the ring up to an empty/idle ring */
> > > -	for ((kt) = ktime_get() + (2 * NSEC_PER_MSEC);
> > > +	for ((kt) = ktime_get() + (50 * NSEC_PER_MSEC);
> > 
> > Where is this 50 coming from?
> 
> Well, here HEAD is still not 0 even after writing in it. 
> So, it could be the timing issue. I discussed this with Chris and we thought
> It is better to add 50ms instead of 2ms delay here to let HEAD write complete.
> I tested this on trybot for Haswell/Ivybridge platform https://patchwork.freedesktop.org/series/141779/ and 
> I see BAT is successful and shards issues are not related.

Can you please add a comment explaining why you are using 50ms?
You can also mention that you experimented with different values
and determined that 50ms works best based on testing.

Andi

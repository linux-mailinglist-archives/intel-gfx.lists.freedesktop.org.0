Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327ABD8536
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 10:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E2E10E580;
	Tue, 14 Oct 2025 08:58:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="XfwXc4hX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3530110E580
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Oct 2025 08:58:28 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B79CF43EBA;
 Tue, 14 Oct 2025 08:58:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C693C4CEE7;
 Tue, 14 Oct 2025 08:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760432307;
 bh=B85MgEf+YfNnqea7NZC65HigapS66TEXOzh2kLpYujA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XfwXc4hXZGR/yXG6EBKo4tcUfA9Fd8YJbIU+9neR9Ip8TJl77arwl3mCQM9nf9ogn
 taOVHgESDZpin/aIp9P5KiqawVBGXkOsZiGs1W1oc41uPkfamewSrgN7BNgkBNCDGd
 k4bOOUBAXZTC6ONGn8iqndwoLKsK4sF4f1+RG3pmxpu3/pyudqBP/aDy7862g0JqlB
 oawTAclCBFWyYflC7wTSKh+MYBLatSKawyBrRY9WvfHB5sIVLyBcWIlDgAhN5X4ZBI
 JNrjdsxyuwTIw20qwA8ojBRTbo8P0+decZJEiWFBJUV/OnyhAV0w5LG5DfGGymgtuu
 qyFgo0qTnrc5g==
Date: Tue, 14 Oct 2025 10:58:24 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com, 
 riana.tauro@intel.com, matthew.brost@intel.com
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <qvs2yu3mkfbsxft4zh3jizhp3xvdlviz4sj4mfte6cw4zo3ems@yhbfu7vakhq2>
References: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
 <itxmibglcduar4qqnc3iwwzumskfw522fbioubyzfbibb7tdrg@tz2mvn6c2mru>
 <aOlGQ/YmR0QgPK7S@soc-5CG1426VCC.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aOlGQ/YmR0QgPK7S@soc-5CG1426VCC.clients.intel.com>
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

Hi Umesh,

On Fri, Oct 10, 2025 at 10:45:39AM -0700, Umesh Nerlige Ramappa wrote:
> On Thu, Oct 09, 2025 at 02:24:52PM +0200, Andi Shyti wrote:
> > > @@ -171,7 +173,12 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
> > > 
> > >  void intel_gt_init_clock_frequency(struct intel_gt *gt)
> > >  {
> > > +	unsigned long clock_period_scale;
> > > +
> > >  	gt->clock_frequency = read_clock_frequency(gt->uncore);
> > 
> > Shall we add a paranoid check here to raise a warning if
> > clock_frequency is '0'?
> > 
> > It should never happen, but for robustness I would suggest:
> 
> I did post that change, but BAT fails for PNV since clock_frequency is 0 on
> PNV (gen3). I will use this version without the check.

I saw the failure, haven't checked the all the paths, but isn't
then PNV affected by division by 0?

Andi

> > 
> >        GEM_WARN_ON(!gt->clock_frequency);
> > 
> > (or even BUG_ON, though that might be overkill).
> > 
> > Andi
> > 
> > > +	clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
> > > +	gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
> > > +	gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
> > > 
> > >  	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
> > >  	if (GRAPHICS_VER(gt->i915) == 11)

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC407B81D2
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 16:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA54A10E384;
	Wed,  4 Oct 2023 14:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7093410E384;
 Wed,  4 Oct 2023 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696428513; x=1727964513;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PDAgwJnqqDtxT+kwV1/Ac14gPdxm2r08QHZbjZLLisQ=;
 b=K17HuEqBfbbsZqYI4nMPokWpCSwFBy8Ia6SGzcbNQcM+qD1znI18uyPN
 Xk8hUwYw2Yk+H0CY6TVAwfUb+Xugq5mVUiaMg/SBOsxhLy/VvEwGHjUze
 UaxPe+GZfRTYu4hY5Z8JICnVc2oxpbeOjpXph8xRId/ENNzuMxwcYqXht
 ZN1abFeFjWRFCtfcdF/VyS2vstWWalwohKUI4JT0GuUzfiA06BJU1F1xa
 2Ra2tWh3QcW7LzdUrHZ4ey1YZobqZyli24MJxDQqKX55xX+8GqaLeuDbu
 mUFBPRd2Ht39zQXriEQ+4rBM//yraJX8N6VuMfCoZIGUOE2+plsML2DSZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363448156"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363448156"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 07:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="894969859"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="894969859"
Received: from azainola-mobl3.gar.corp.intel.com (HELO intel.com)
 ([10.214.163.167])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 07:06:57 -0700
Date: Wed, 4 Oct 2023 16:08:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZR1x0jlEzrCUNoip@ashyti-mobl2.lan>
References: <20231004094357.634895-1-andi.shyti@linux.intel.com>
 <eefc8c62-1ac5-6604-2ee5-576ca87c2be5@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eefc8c62-1ac5-6604-2ee5-576ca87c2be5@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/gt: Do not treat MCR locking
 timeouts as errors
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, gregory.f.germano@intel.com,
 Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

> > The MCR steering semaphore is a shared lock entry between i915
> > and various firmware components.
> > 
> > Getting the lock might sinchronize on some shared resources.
> > Sometimes though, it might happen that the firmware forgets to
> > unlock causing unnecessary noise in the driver which keeps doing
> > what was supposed to do, ignoring the problem.
> > 
> > Do not consider this failure as an error, but just print a debug
> > message stating that the MCR locking has been skipped.
> > 
> > On the driver side we still have spinlocks that make sure that
> > the access to the resources is serialized.
> > 
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 326c2ed1d99b..51eb693df39b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -395,10 +395,8 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
> >   	 * would indicate some hardware/firmware is misbehaving and not
> >   	 * releasing it properly.
> >   	 */
> > -	if (err == -ETIMEDOUT) {
> > -		gt_err_ratelimited(gt, "hardware MCR steering semaphore timed out");
> > -		add_taint_for_CI(gt->i915, TAINT_WARN);  /* CI is now unreliable */
> > -	}
> > +	if (err == -ETIMEDOUT)
> > +		gt_dbg(gt, "hardware MCR steering semaphore timed out");
> >   }
> >   /**
> 
> Are we sure this does not warrant a level higher than dbg, such as
> notice/warn?

We might make it a warn, but this doesn't change much the economy
of the driver as we will keep doing what we were supposed to do.

> Because how can we be sure the two entities will not stomp on
> each other toes if we failed to obtain lock?

So far, in all the research I've done, no one looks like using
MCR lock, but yet someone is stuck in it.

> (How can we be sure about
> "forgot to unlock" vs "in prolonged active use"?

There is a patch from Jonathan that is testing a different
timeout.

> Or if we can be sure, can
> we force unlock and take the lock for the driver explicitly?)

I sent a patch with this solution and Matt turned it down.

Andi

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78105228660
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 18:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E68236E055;
	Tue, 21 Jul 2020 16:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000BF6E055
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 16:46:21 +0000 (UTC)
IronPort-SDR: hWFnfcLyynUUyktA4hTL1sva/YOGzmTEmrdm9wcgp7EkqLV7jx799kaIqCc8t5I3tMCEFmPLAz
 twcnIdpmhJOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="148118183"
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; d="scan'208";a="148118183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 09:46:21 -0700
IronPort-SDR: +Uw8ybF4YvfMV/keEkWDXT2xV9+sC3DhCcekofRgu1+RYLmaKC9BBr3zXODHK/RKC7RTskYk3K
 NseqBr9aF31Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; d="scan'208";a="319965581"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2020 09:46:20 -0700
Date: Tue, 21 Jul 2020 22:04:12 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200721163411.GA30020@intel.com>
References: <20200717120425.20947-1-anshuman.gupta@intel.com>
 <20200721133217.GA24622@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721133217.GA24622@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC] drm/i915: Disable connector polling at
 runtime suspend
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-07-21 at 16:32:17 +0300, Imre Deak wrote:
> On Fri, Jul 17, 2020 at 05:34:25PM +0530, Anshuman Gupta wrote:
> > While i915 device is in runtime suspend, DRM connector polling
> > causing device to wakeup from runtime suspend.
> > This harm overall cpu idle statistics, therefore
> > disabling polling while in runtime suspend.
> 
> Before disabling polling we would need to enable hotplug interrupts
> during the runtime suspended state. Also I haven't seen yet stats where
IMHO whilst it is deepest display C state, HOTPLUG interrupt will be
disabled.
> polling (which has a 10 sec period) have a significant effect on
> idle residencies.
IMHO it can still affect the runtime s0ix.

Thanks,
Anshuman Gupta.

> 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> > index 5fd5af4bc855..1229c72f19c9 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -1595,6 +1595,8 @@ static int intel_runtime_suspend(struct device *kdev)
> >  
> >  	disable_rpm_wakeref_asserts(rpm);
> >  
> > +	drm_kms_helper_poll_disable(&dev_priv->drm);
> > +
> >  	/*
> >  	 * We are safe here against re-faults, since the fault handler takes
> >  	 * an RPM reference.
> > @@ -1699,6 +1701,8 @@ static int intel_runtime_resume(struct device *kdev)
> >  	 */
> >  	intel_gt_runtime_resume(&dev_priv->gt);
> >  
> > +	drm_kms_helper_poll_enable(&dev_priv->drm);
> > +
> >  	/*
> >  	 * On VLV/CHV display interrupts are part of the display
> >  	 * power well, so hpd is reinitialized from there. For
> > -- 
> > 2.26.2
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

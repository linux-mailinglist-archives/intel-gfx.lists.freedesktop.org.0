Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10816C3DD2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 23:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C54D10E090;
	Tue, 21 Mar 2023 22:44:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7B410E090;
 Tue, 21 Mar 2023 22:43:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C3A7961EA5;
 Tue, 21 Mar 2023 22:43:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 859B7C433EF;
 Tue, 21 Mar 2023 22:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679438637;
 bh=wfo7V47Np3h5tGvyKnD1o5gYIQhfx16SqiwtGmzkge8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PRGJE5aYL1Bj3ZY+M0ayws6Z+9gowGQkJUXbMex2IgNEP8JEwRKtJvi0qScssXJzQ
 tjGrKwu3ZV9aFc4vHPNkYP4akXGcv74kBUZ7hCV/dSfL2e82PfrWbCl/7TT7tKG1zI
 vEm8NxEAvriIWLml8Pr/XZ/STWalUyjaZvgu70d+dkVc2S+85YQvEnYIs9jzqDleLu
 8fZt5SqMJ/8RHxQTjHFJKpklerFqqoxO/24cVXk50nfitnJ4prjXWV+WiLBBRc5v6T
 fJjIcG7M18Eqe+kU5QNSPAaH7jH9MQ6+V63uMsKcS6bKBxPrrwcwGiTfcHhM3iaqCD
 JTd7xYdRuT3yQ==
Date: Tue, 21 Mar 2023 23:43:53 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20230321224353.h6l2gwv3iuac6vd2@intel.intel>
References: <20230321170936.478631-1-andi.shyti@linux.intel.com>
 <20230321170936.478631-2-andi.shyti@linux.intel.com>
 <20230321215527.GQ4085390@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230321215527.GQ4085390@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Sanitycheck MMIO access
 early in driver load
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
Cc: Andi Shyti <andi.shyti@kernel.org>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> > We occasionally see the PCI device in a non-accessible state at the
> > point the driver is loaded.  When this happens, all BAR accesses will
> > read back as 0xFFFFFFFF.  Rather than reading registers and
> > misinterpreting their (invalid) values, let's specifically check for
> > 0xFFFFFFFF in a register that cannot have that value to see if the
> > device is accessible.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_uncore.c | 35 +++++++++++++++++++++++++++++
> >  1 file changed, 35 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> > index e1e1f34490c8e..0b69081d6d285 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > @@ -2602,11 +2602,46 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
> >  	return 0;
> >  }
> >  
> > +static int sanity_check_mmio_access(struct intel_uncore *uncore)
> > +{
> > +	struct drm_i915_private *i915 = uncore->i915;
> > +	int ret;
> > +
> > +	if (GRAPHICS_VER(i915) < 8)
> > +		return 0;
> > +
> > +	/*
> > +	 * Sanitycheck that MMIO access to the device is working properly.  If
> > +	 * the CPU is unable to communcate with a PCI device, BAR reads will
> > +	 * return 0xFFFFFFFF.  Let's make sure the device isn't in this state
> > +	 * before we start trying to access registers.
> > +	 *
> > +	 * We use the primary GT's forcewake register as our guinea pig since
> > +	 * it's been around since HSW and it's a masked register so the upper
> > +	 * 16 bits can never read back as 1's if device access is operating
> > +	 * properly.
> > +	 *
> > +	 * If MMIO isn't working, we'll wait up to 2 seconds to see if it
> > +	 * recovers, then give up.
> > +	 */
> > +	ret = intel_wait_for_register_fw(uncore, FORCEWAKE_MT, 0, 0, 2000000);
> 
> It looks like you lost the check for 0xFFFFFFFF specifically.  In fact
> with a mask/value of 0, isn't this always going to just always pass
> immediately?

uh... yes... sorry, I just got confused and lost track of the
goal of the patch.

Sorry, then please ignore... I don't see then how
intel_wait_for_register_fw() can be used with a '!='.

Please, ignore this v2.

Thanks and sorry, again,
Andi

> We don't know what the value of this register will be (there may or may
> not be some bits set), but we need to make sure that it isn't 0xFFFFFFFF
> because that means we're not even truly accessing the register, just
> hitting a PCI BAR read failure.
> 
> 
> Matt
> 
> > +	if (ret == -ETIMEDOUT) {
> > +		drm_err(&i915->drm, "Device is non-operational; MMIO access returns 0xFFFFFFFF!\n");
> > +		return -EIO;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  int intel_uncore_init_mmio(struct intel_uncore *uncore)
> >  {
> >  	struct drm_i915_private *i915 = uncore->i915;
> >  	int ret;
> >  
> > +	ret = sanity_check_mmio_access(uncore);
> > +	if (ret)
> > +		return ret;
> > +
> >  	/*
> >  	 * The boot firmware initializes local memory and assesses its health.
> >  	 * If memory training fails, the punit will have been instructed to
> > -- 
> > 2.39.2
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

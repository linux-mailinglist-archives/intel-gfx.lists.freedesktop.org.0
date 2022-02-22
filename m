Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5AB4BFDF4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86ECC10E5AF;
	Tue, 22 Feb 2022 16:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692B910E5AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645545613; x=1677081613;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OW7GmI1GEhBjpgFuN0Cj+EGro81R/fsIm49eR9p0bkk=;
 b=OL7rb1iG+lh4yTFoH1p3KLhh2f31caTirlefFYOtEPG68fSS5wj6Uzik
 GJPanrEPAdDlvkUqhZJBadYGCBdOevJ32Tnl1s6qJcStzBGKF1mgJJNrN
 kfnV07YVPF0PZoITu7SNq9g5m5lJTaxhCC90e3tC4kZLLOya8aTQ0PKnZ
 QpjwqijpqINxyFdyrBp5R3A/fu3l/MCRK4X/bRyTYUUVCGFueCLMvj7XA
 UQ5tDPI8XSgGfCysv4nc+Dyhytu3Y/yN70OLHmU2NWRhHroM6AwEXRLD8
 //wu5j/rOusXorSkjCXaM8A41aFrwNnY/5lubaYqaN+6s46M+V72iz/tM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="276342107"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="276342107"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:00:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="779313148"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:00:06 -0800
Date: Tue, 22 Feb 2022 08:00:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YhUIhdwVKX6A5YXc@mdroper-desk1.amr.corp.intel.com>
References: <20220215163545.2175730-1-matthew.d.roper@intel.com>
 <bb4c0d15-07f5-6f03-4a20-390a5b5967ff@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb4c0d15-07f5-6f03-4a20-390a5b5967ff@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on
 calibration error
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 21, 2022 at 09:42:21AM +0000, Tvrtko Ursulin wrote:
> 
> On 15/02/2022 16:35, Matt Roper wrote:
> > We need to use phy_name() to convert the PHY value into a human-readable
> > character in the error message.
> > 
> > Fixes: a6a128116e55 ("drm/i915/dg2: Wait for SNPS PHY calibration during display init")
> 
> I picked this for drm-intel-fixes, and as it did not apply cleanly, noticed
> in the process that a6a128116e55 is all the way back in 5.15. I reckon you
> didn't want to copy stable because it is just a log message tweak?

Correct; not needed for stable since this is only relevant to DG2 and
DG2 still isn't enabled for actual use (the PCI IDs are still in a
CI-only branch while we wait for the final bits of enabling work to be
hammered out).


Matt

> 
> Regards,
> 
> Tvrtko
> 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > index 8573a458811a..8fd00de981fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> > @@ -35,7 +35,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
> >   		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
> >   					    DG2_PHY_DP_TX_ACK_MASK, 25))
> >   			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
> > -				phy);
> > +				phy_name(phy));
> >   	}
> >   }

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BB75B1DA7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 14:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D91910E9C4;
	Thu,  8 Sep 2022 12:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1824310E9C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 12:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662641445; x=1694177445;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pGBL0nFJq5GD7qKbf2sItEr/+SMj1ZsjyHnm8GjHBcc=;
 b=XJxLhTVdTpLmA9gf/B5J7WujLlbVAS1Aifw9n6IekBeVLEq6G0jUTGxe
 z+9NS8t+Raieq7GEZesqozdmBZ29C3bg7TSkg8ZL+dnOv9KfXnqlV0e8D
 dsG0smGLFORYoyiPY6pvsfv9ry354q+U7jvhZrnOZ73LC7bildqtiokvq
 v0vRiTvGusLh32dR+5ZTIdSs8ojZCQqSzWLEsVVY+7JRIgOwqP/2mVPzQ
 rkHM3aXEI+r1WhukKWAYC+w+16AICPlmXFvM7qy3Nd1vOf1fKIcyRjcab
 iOhOdJ6a5ZeMNQ9veVp7NT/jfStJpwIzvaFR23MMwTifnO0p8U1JXrerc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="280182706"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280182706"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 05:50:44 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="645068727"
Received: from igranath-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.46.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 05:50:42 -0700
Date: Thu, 8 Sep 2022 14:50:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Message-ID: <YxnlGz8u1TyuvZHL@alfio.lan>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <e653fabb0b41552f988fbe38ae1d14b7db7f99b8.1662613377.git.ashutosh.dixit@intel.com>
 <YxnHFXN+w4IUfWXg@alfio.lan>
 <4a2b75d2-4605-07a1-4b06-425aa09b4738@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a2b75d2-4605-07a1-4b06-425aa09b4738@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Fix perf limit reasons bit
 positions
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

On Thu, Sep 08, 2022 at 06:07:08PM +0530, Sundaresan, Sujaritha wrote:
> 
> On 9/8/2022 4:12 PM, Andi Shyti wrote:
> > Hi,
> > 
> > On Wed, Sep 07, 2022 at 10:21:53PM -0700, Ashutosh Dixit wrote:
> > > Perf limit reasons bit positions were off by one.
> > > 
> > > Fixes: fa68bff7cf27 ("drm/i915/gt: Add sysfs throttle frequency interfaces")
> > > Cc: stable@vger.kernel.org # v5.18+
> > > Cc: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> > > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > > Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > Thanks Ashutosh!
> > 
> > > ---
> > >   drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++--------
> > >   1 file changed, 8 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index c413eec3373f..24009786f88b 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -1794,14 +1794,14 @@
> > >   #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
> > >   #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
> > > -#define   PROCHOT_MASK			REG_BIT(1)
> > > -#define   THERMAL_LIMIT_MASK		REG_BIT(2)
> > > -#define   RATL_MASK			REG_BIT(6)
> > > -#define   VR_THERMALERT_MASK		REG_BIT(7)
> > > -#define   VR_TDC_MASK			REG_BIT(8)
> > > -#define   POWER_LIMIT_4_MASK		REG_BIT(9)
> > > -#define   POWER_LIMIT_1_MASK		REG_BIT(11)
> > > -#define   POWER_LIMIT_2_MASK		REG_BIT(12)
> > > +#define   PROCHOT_MASK			REG_BIT(0)
> > > +#define   THERMAL_LIMIT_MASK		REG_BIT(1)
> > > +#define   RATL_MASK			REG_BIT(5)
> > > +#define   VR_THERMALERT_MASK		REG_BIT(6)
> > > +#define   VR_TDC_MASK			REG_BIT(7)
> > > +#define   POWER_LIMIT_4_MASK		REG_BIT(8)
> > > +#define   POWER_LIMIT_1_MASK		REG_BIT(10)
> > > +#define   POWER_LIMIT_2_MASK		REG_BIT(11)
> > Sujaritha, could you please check and r-b this one?
> > 
> > Thanks,
> > Andi
> 
> Looks good. I've checked the reg bits.
> 
> Reviewed-by : Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>

Thanks! then:

Acked-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

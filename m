Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E55F73F08DE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 18:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDCA6E851;
	Wed, 18 Aug 2021 16:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFDAD6E851
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 16:17:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="196624920"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="196624920"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 09:17:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="594082695"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 09:17:16 -0700
Date: Wed, 18 Aug 2021 19:17:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: "20210706152541.25021-1-shawn.c.lee@intel.com"
 <20210706152541.25021-1-shawn.c.lee@intel.com>
Cc: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Message-ID: <20210818161712.GA2831921@ideak-desk.fi.intel.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
 <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
 <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
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

On Wed, Aug 18, 2021 at 06:09:43PM +0300, Lee, Shawn C wrote:
> On Tue, 2021-07-07, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> >On Tue, 2021-07-07, Almahallawy, Khaled <khaled.almahallawy@intel.com> wrote:
> >>I believe Imre's LT fallback:
> >>https://github.com/ideak/linux/commits/linktraining-fallback-fix  and Chrome user space fix:
> >>https://chromium-review.googlesource.com/c/chromium/src/+/3003487
> >>should address Chrome concerns for LT failure and LTTPRs
> >>
> >
> >Thanks for comment! The new fallback patch should help on this DPRX problem.
> >One more thing. If driver did not handle DPRX link train failed properly.
> >It would impact link layer compliance test case in below.
> >
> >400.3.1.3
> >400.3.1.4
> >400.3.1.6
> >400.3.1.12
> >400.3.1.13
> >400.3.1.14
> >
> >Best regards,
> >Shawn
> >
> 
> Hi all, before Imre's patch series land on upstream driver. The link train failed
> handling works for LTTPR only. But DPRX does not. Could you please consider to have
> this change as temporary solution? Thanks!

I sent already fixing this, see
https://lore.kernel.org/intel-gfx/20201027133600.3656665-1-imre.deak@intel.com/

but it fell through the cracks. Applied now your patch, thanks.

> 
> Best regards,
> Shawn
> 
> >>Thanks
> >>Khaled
> >>
> >>On Tue, 2021-07-06 at 23:25 +0800, Lee Shawn C wrote:
> >>> After DPRX link training, intel_dp_link_train_phy() did not return
> >>> the training result properly. If link training failed,
> >>> i915 driver would not run into link train fallback function.
> >>> And no hotplug uevent would be received by user space application.
> >>>
> >>> Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode
> >>> link training")
> >>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> >>> Cc: Imre Deak <imre.deak@intel.com>
> >>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >>> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >>> Cc: William Tseng <william.tseng@intel.com>
> >>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >>> ---
> >>>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >>> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >>> index 08bceae40aa8..e44788b2c564 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> >>> @@ -849,7 +849,7 @@ intel_dp_link_train_all_phys(struct intel_dp
> >>> *intel_dp,
> >>>     }
> >>>
> >>>     if (ret)
> >>> -           intel_dp_link_train_phy(intel_dp, crtc_state,
> >>> DP_PHY_DPRX);
> >>> +           ret = intel_dp_link_train_phy(intel_dp, crtc_state,
> >>> DP_PHY_DPRX);
> >>>
> >>>     if (intel_dp->set_idle_link_train)
> >>>             intel_dp->set_idle_link_train(intel_dp, crtc_state);
> >>
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx

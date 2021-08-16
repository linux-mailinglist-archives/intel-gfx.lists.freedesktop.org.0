Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D3F3ED395
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 14:01:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3541889949;
	Mon, 16 Aug 2021 12:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C77E898AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 12:01:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="203046311"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="203046311"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 05:01:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="519627060"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 05:01:13 -0700
Date: Mon, 16 Aug 2021 15:01:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Ville Syrj_l_ <ville.syrjala@linux.intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Jos_ Roberto de Souza <jose.souza@intel.com>,
 Sean Paul <seanpaul@chromium.org>, stable@vger.kernel.org
Message-ID: <20210816120110.GA2739849@ideak-desk.fi.intel.com>
References: <20210812131107.5531-1-swati2.sharma@intel.com>
 <20210812160118.GH2600583@ideak-desk.fi.intel.com>
 <4d4c94a4-2344-068d-5096-262b0ad70602@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d4c94a4-2344-068d-5096-262b0ad70602@intel.com>
Subject: Re: [Intel-gfx] [v3][PATCH] drm/i915/display: Drop redundant debug
 print
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

On Mon, Aug 16, 2021 at 05:23:00PM +0530, Sharma, Swati2 wrote:
> On 12-Aug-21 9:31 PM, Imre Deak wrote:
> > On Thu, Aug 12, 2021 at 06:41:07PM +0530, Swati Sharma wrote:
> > > drm_dp_dpcd_read/write already has debug error message.
> > > Drop redundant error messages which gives false
> > > status even if correct value is read in drm_dp_dpcd_read().
> > > 
> > > v2: -Added fixes tag (Ankit)
> > > v3: -Fixed build error (CI)
> > > 
> > > Fixes: 9488a030ac91 ("drm/i915: Add support for enabling link status and recovery")
> > > Cc: Swati Sharma <swati2.sharma@intel.com>
> > > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > Cc: Uma Shankar <uma.shankar@intel.com> (v2)
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: "Ville Syrj_l_" <ville.syrjala@linux.intel.com>
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > Cc: "Jos_ Roberto de Souza" <jose.souza@intel.com>
> > > Cc: Sean Paul <seanpaul@chromium.org>
> > > Cc: <stable@vger.kernel.org> # v5.12+
> > > 
> > > Link: https://patchwork.freedesktop.org/patch/msgid/20201218103723.30844-12-ankit.k.nautiyal@intel.com
> > > 
> > > Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp.c | 9 ++-------
> > >   1 file changed, 2 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index c386ef8eb200..2526c9c8c690 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3864,23 +3864,18 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> > >   static void intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> > >   {
> > > -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > >   	u8 val;
> > >   	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
> > >   		return;
> > >   	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > > -			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val) {
> > > -		drm_dbg_kms(&i915->drm, "Error in reading link service irq vector\n");
> > 
> > The only problem seems to be that for !val the debug print is incorrect,
> > so maybe just have a separate check for that after this one for the read()
> > and return w/o the debug message?
> > 
> > Is it really a stable material, since the change wouldn't have any
> > effect for regular users?
> 
> W/o this change in case of valid short pulse this error message will
> come even if it doesn't have anything to do with link service irq. For
> ex: in case of hdcp we keep getting unnecessary error message because
> the value read is 0 which will always be the case unless its really a
> link failure between PCON and HDMI2.1 sink.

Yes, that's why I suggested to return for the '0 value read' case
without any message printed, but still keep the message for the case
when the drm_dp_dpcd_readb() fails.

Note that it's not an error message but a debug message.

> Also, code is written in accordance with other IRQ func() above like
> intel_dp_check_device_service_irq().

Ok, it's good to keep them in sync at least, so I'm ok with removing the
debug messages from here too.

> > > +			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
> > >   		return;
> > > -	}
> > >   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
> > > -			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1) {
> > > -		drm_dbg_kms(&i915->drm, "Error in writing link service irq vector\n");
> > > +			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
> > >   		return;
> > > -	}
> > >   	if (val & HDMI_LINK_STATUS_CHANGED)
> > >   		intel_dp_handle_hdmi_link_status_change(intel_dp);
> > > -- 
> > > 2.25.1
> > > 
> 
> -- 
> ~Swati Sharma

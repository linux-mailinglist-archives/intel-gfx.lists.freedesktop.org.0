Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 359662ED041
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 13:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4D86E456;
	Thu,  7 Jan 2021 12:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360966E456
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 12:56:51 +0000 (UTC)
IronPort-SDR: TmDlI51kaRFWlOXuxP7Zuyjki64wYS08BBNfOOZRuPL4c0HmCVhRyxUMFbpzC2DZsNG+LJafYm
 CY6NWvn/7riw==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="177517937"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="177517937"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 04:56:50 -0800
IronPort-SDR: viuZ+GPMkEDCZ8M5vVixYsoUo7Gmx2D6cP7ClgiMhyXCUyVp+Et/ZrjU2CpeWi9cpr1KzRu7Sb
 f0Omxv6bmEng==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="351248781"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 04:56:49 -0800
Date: Thu, 7 Jan 2021 14:56:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210107125645.GA219572@ideak-desk.fi.intel.com>
References: <20201209153952.3397959-1-imre.deak@intel.com>
 <87a6tl1b8r.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a6tl1b8r.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Fix initing the DSI DSC power
 refcount during HW readout
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 07, 2021 at 09:01:40AM +0200, Jani Nikula wrote:
> On Wed, 09 Dec 2020, Imre Deak <imre.deak@intel.com> wrote:
> > For an enabled DSC during HW readout the corresponding power reference
> > is taken along the CRTC power domain references in
> > get_crtc_power_domains(). Remove the incorrect get ref from the DSI
> > encoder hook.
> 
> Does this fix [1] which is v5.11-rc2 on TGL DSI?

Yes, looks like it:
<4> [199.269612] i915 0000:00:02.0: i915 raw-wakerefs=1 wakelocks=1 on cleanup
...
<7> [199.277233] i915 Wakeref x1 taken at:
    intel_display_power_get+0x1f/0x60 [i915]
    intel_modeset_setup_hw_state+0xbcf/0x19b0 [i915]

> Should we pick this up for fixes?

Yes.

Thanks,
Imre

> BR,
> Jani.
> 
> 
> [1] https://intel-gfx-ci.01.org/tree/drm-intel-fixes/CI_DIF_538/fi-tgl-dsi/igt@gem_exec_suspend@basic-s0.html
> 
> 
> 
> >
> > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index a9439b415603..b3533a32f8ba 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1616,10 +1616,6 @@ static void gen11_dsi_get_power_domains(struct intel_encoder *encoder,
> >  
> >  	get_dsi_io_power_domains(i915,
> >  				 enc_to_intel_dsi(encoder));
> > -
> > -	if (crtc_state->dsc.compression_enable)
> > -		intel_display_power_get(i915,
> > -					intel_dsc_power_domain(crtc_state));
> >  }
> >  
> >  static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

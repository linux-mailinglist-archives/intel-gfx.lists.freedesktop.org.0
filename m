Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B25AD2CAD9B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 21:47:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E6D6E02B;
	Tue,  1 Dec 2020 20:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14216E02B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 20:47:44 +0000 (UTC)
IronPort-SDR: zDvWSJt+HsoPzBVONnMS+sPX9eFDEisjj2eXykhkCPcsGG6B6LBMmF8MymFFrYVQuyBT+bL/P8
 heqI+BD3o7Rw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173064595"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="173064595"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 12:47:43 -0800
IronPort-SDR: J99MpRU04KF3GIln+hqK3oHkDBnwhyypo3ZyT8C7RkVKg1Tl/ReLfsSR8Nrj+g76X9fbJAvLdr
 hmImRM6v95qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="335262466"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 01 Dec 2020 12:47:42 -0800
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 12:47:41 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 02:17:39 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 2 Dec 2020 02:17:39 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Shashank Sharma <shashank.sharma@amd.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [v12 15/15] drm/i915/display: [NOT FOR MERGE] Reduce
 blanking to support 4k60@10bpp for LSPCON
Thread-Index: AQHWxDRXVCdQoXHAx0uDGNhB9rkQ7qngLvsAgAKMTHA=
Date: Tue, 1 Dec 2020 20:47:39 +0000
Message-ID: <5c46d4b766f04eda89d5731e67a7a744@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
 <20201126210314.7882-16-uma.shankar@intel.com>
 <056dbfca-53ae-570f-0cc9-09c34a0dbb77@amd.com>
In-Reply-To: <056dbfca-53ae-570f-0cc9-09c34a0dbb77@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v12 15/15] drm/i915/display: [NOT FOR MERGE]
 Reduce blanking to support 4k60@10bpp for LSPCON
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Shashank
> Sharma
> Sent: Monday, November 30, 2020 4:43 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [v12 15/15] drm/i915/display: [NOT FOR MERGE] Reduce
> blanking to support 4k60@10bpp for LSPCON
> 
> Hello Uma,
> 
> This expectations from user-space of having to adjust the timings of video mode
> doesn't seem like a good idea to me.
> 
> This seems more like a quirk, and it should be better kept in I915 layer itself.
> 
> 
> Else, it will enforce user space to write a lot of vendor specific code, like:
> 
> - Is it Intel device ?
> 
> - Is it GEN9 ?
> 
> - Is it Gen9 + LSPCON ?
> 
> - Are we planning for a HDR playback ?
> 
> which is not what most of the compositors developers would be interested in.
> 
> 
> I was talking to some of the Kodi folks and they also seem to think that it should
> go in driver.
> 
> Any reason why can't we add this code in encoder->compute_config() or
> mode_fixup() ?
> 
> compute_config() will have all the information above required, as this might be
> required for future LSPCON based devices as well.

Hi Shashank,
My initial idea was to have it inside kernel itself. But this actually tweaks the display timing from the standard one
what sink has given, so Ville's suggestion was to keep this out from kernel, and let userspace components
force the adjusted timings.

This is more of a limitation coming from DP spec wrt HBR2 bandwidths.

@ville.syrjala@linux.intel.com What do you suggest. I have merged the changes leaving this patch out as of
now.

Based on recommendation, I can re-work this and merge if we all are aligned on this one.

Thanks & Regards,
Uma Shankar

> 
> Regards
> 
> Shashank
> 
> On 27/11/20 2:33 am, Uma Shankar wrote:
> > Blanking needs to be reduced to incorporate DP and HDMI timing/link
> > bandwidth limitations for CEA modes (4k@60 at 10 bpp). DP can drive
> > 17.28Gbs while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps.
> > This will cause mode to blank out. Reduced Htotal by shortening the
> > back porch and front porch within permissible limits.
> >
> > Note: This is for reference for userspace, not to be merged in kernel.
> >
> > v2: This is marked as Not for merge and the responsibilty to program
> > these custom timings will be on userspace. This patch is just for
> > reference purposes. This is based on Ville's recommendation.
> >
> > v3: updated commit message.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0f89dbfa958a..f6f66033176b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -741,8 +741,10 @@ intel_dp_mode_valid(struct drm_connector
> > *connector,  {
> >  	struct intel_dp *intel_dp =
> intel_attached_dp(to_intel_connector(connector));
> >  	struct intel_connector *intel_connector =
> > to_intel_connector(connector);
> > +	struct intel_encoder *intel_encoder =
> > +intel_attached_encoder(intel_connector);
> >  	struct drm_display_mode *fixed_mode = intel_connector-
> >panel.fixed_mode;
> >  	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> > +	struct intel_lspcon *lspcon = enc_to_intel_lspcon(intel_encoder);
> >  	int target_clock = mode->clock;
> >  	int max_rate, mode_rate, max_lanes, max_link_clock;
> >  	int max_dotclk = dev_priv->max_dotclk_freq; @@ -778,6 +780,21 @@
> > intel_dp_mode_valid(struct drm_connector *connector,
> >  	if (target_clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> >
> > +	/*
> > +	 * Reducing Blanking to incorporate DP and HDMI timing/link bandwidth
> > +	 * limitations for CEA modes (4k@60 at 10 bpp). DP can drive 17.28Gbs
> > +	 * while 4k modes (VIC97 etc) at 10 bpp required 17.8 Gbps. This will
> > +	 * cause mode to blank out. Reduced Htotal by shortening the back
> porch
> > +	 * and front porch within permissible limits.
> > +	 */
> > +	if (lspcon->active && lspcon->hdr_supported &&
> > +	    mode->clock > 570000) {
> > +		mode->clock = 570000;
> > +		mode->htotal -= 180;
> > +		mode->hsync_start -= 72;
> > +		mode->hsync_end -= 72;
> > +	}
> > +
> >  	max_link_clock = intel_dp_max_link_rate(intel_dp);
> >  	max_lanes = intel_dp_max_lane_count(intel_dp);
> >
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298421A0F17
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 16:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2A688161;
	Tue,  7 Apr 2020 14:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E18F6E0B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 14:26:16 +0000 (UTC)
IronPort-SDR: scPPZOpLQtqYEioN2BmN4yHlBYxZq2Z6yDySyhZYLCrKcs40CSySMAQIqIBNFqN6yYJN37A4L2
 BjYrcTum55Nw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 07:26:15 -0700
IronPort-SDR: oIveXKNOtHyJcE9qPVcOYtwiczgG9hoZtlVghMQg2AMriktP4F03Ec8guWcqtevqIEXf5K9OJf
 +WxpZnT/UlEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="451239196"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 07 Apr 2020 07:26:15 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 07:26:15 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 07:26:15 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 7 Apr 2020 07:26:14 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.36]) with mapi id 14.03.0439.000;
 Tue, 7 Apr 2020 19:54:50 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/display: Enable DP Display
 Audio WA
Thread-Index: AQHWDOLGEWVZVhvXvE6A3GForGdwkKhtVu4AgABfNrA=
Date: Tue, 7 Apr 2020 14:24:49 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82447B0C@BGSMSX104.gar.corp.intel.com>
References: <20200407141257.30076-1-uma.shankar@intel.com>
 <alpine.DEB.2.21.2004071651380.2957@eliteleevi.tm.intel.com>
In-Reply-To: <alpine.DEB.2.21.2004071651380.2957@eliteleevi.tm.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Enable DP Display
 Audio WA
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
Cc: "Vehmanen, Kai" <kai.vehmanen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Sent: Tuesday, April 7, 2020 7:42 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vehmanen, Kai <kai.vehmanen@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Enable DP Display Audio WA
> 
> Hi,
> 
> thanks Uma! It's good to see the implementation is this localized and doesn't need
> changes elsewhere. Other reviewers already covered most parts, but a few notes:
> 
> On Tue, 7 Apr 2020, Uma Shankar wrote:
> 
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum pipe pipe = crtc->pipe;
> > +	u32 link_clks_available, link_clks_required;
> > +	u32 tu_data, tu_line, link_clks_active;
> > +	u32 hblank_rise, hblank_early_prog;
> > +	u32 h_active, h_total, hblank_delta, pixel_clk, v_total;
> > +	u32 fec_coeff, refresh_rate, cdclk;
> 
> hmm, minor thing, but why are these u32 and not just unsigned ints?

No major reasons as such. Will switch to unsigned int.

> > +	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
> > +	      crtc_state->pipe_bpp && cdclk)) {
> > +		drm_err(&i915->drm, "Null Parameters received\n");
> > +		WARN_ON(1);
> > +		return -EINVAL;
> 
> This is still not very informative. "Invalid parameters for hblank_early"..?

Ok Sure, will improve this message.
 
> > +	if (samples_room < 3) {
> > +		*val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> > +		*val |= NUMBER_SAMPLES_PER_LINE(pipe, samples_room);
> > +	} else {
> > +		*val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> > +		*val |= NUMBER_SAMPLES_PER_LINE(pipe, 0x0);
> > +	}
> 
> This is a bit hard to follow in terms of logic. Maybe worth a comment that 0x0
> means to take all samples from the buffer.

Sure, will add comments to make this more clear.

Thanks Kai for the feedback. Will address and send the next version.

Regards,
Uma Shankar

> Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

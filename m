Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D771A0EEF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 16:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA12389F71;
	Tue,  7 Apr 2020 14:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106DA89F49
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 14:11:41 +0000 (UTC)
IronPort-SDR: pJIcI8MZ+BHh+FKQkF8Rlppk+RJer9OFr7aw9juVNiC0qwwjaTSIrIS3YDh0whZl2cyS3pxGYM
 O8dgDejA0pCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 07:11:40 -0700
IronPort-SDR: QdKr2bS66HcOWactfzQ3oSOHVWCIfX25gXrklE2MBuw5f7RCDTfZ7jIjstq8FxYirda1TfkWr5
 7DZ1HKyxu6yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="243778465"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008.fm.intel.com with ESMTP; 07 Apr 2020 07:11:39 -0700
Date: Tue, 7 Apr 2020 17:11:38 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Uma Shankar <uma.shankar@intel.com>
In-Reply-To: <20200407141257.30076-1-uma.shankar@intel.com>
Message-ID: <alpine.DEB.2.21.2004071651380.2957@eliteleevi.tm.intel.com>
References: <20200407141257.30076-1-uma.shankar@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
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
Cc: kai.vehmanen@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

thanks Uma! It's good to see the implementation is this localized and 
doesn't need changes elsewhere. Other reviewers already covered most 
parts, but a few notes:

On Tue, 7 Apr 2020, Uma Shankar wrote:

> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +	u32 link_clks_available, link_clks_required;
> +	u32 tu_data, tu_line, link_clks_active;
> +	u32 hblank_rise, hblank_early_prog;
> +	u32 h_active, h_total, hblank_delta, pixel_clk, v_total;
> +	u32 fec_coeff, refresh_rate, cdclk;

hmm, minor thing, but why are these u32 and not just unsigned ints? 

> +	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
> +	      crtc_state->pipe_bpp && cdclk)) {
> +		drm_err(&i915->drm, "Null Parameters received\n");
> +		WARN_ON(1);
> +		return -EINVAL;

This is still not very informative. "Invalid parameters for 
hblank_early"..?

> +	if (samples_room < 3) {
> +		*val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> +		*val |= NUMBER_SAMPLES_PER_LINE(pipe, samples_room);
> +	} else {
> +		*val &= ~NUMBER_SAMPLES_PER_LINE_MASK(pipe);
> +		*val |= NUMBER_SAMPLES_PER_LINE(pipe, 0x0);
> +	}

This is a bit hard to follow in terms of logic. Maybe worth a comment 
that 0x0 means to take all samples from the buffer. 

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

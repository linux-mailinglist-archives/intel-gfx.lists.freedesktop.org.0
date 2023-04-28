Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3C86F13D7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2AD510EC87;
	Fri, 28 Apr 2023 09:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586E810EC87
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682672857; x=1714208857;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=q+zEKf9MgxGMvvbn+0KO99DtWgUf+MEnQKjy1/8ioJ8=;
 b=hBxojnhMq+8to1O0ptu7Vh+a5qGIS6myl7t/pqGxU5S48kvYvrmjCLw8
 meZK7ldbFJihzw/1sKIgYk/aNedzZ1mLCUlBQhyDjINUSOSoiZYziJpN3
 9RaCt5YnlW0DfeAL5NplNNitCN3w00xnwHFC8SDERoz65mp6mQkybRcjL
 iH4lrBOkWwkZsflWvdU4MrCJBrSWFw2KQbr3jd6vWGEvTbgPMgzhS1aIN
 awwNqPica6FckeWlQK6PyeshvFpHLLecqBA9Jcc8A8NgP0F+SOPEgd4eB
 pal7JgNavVeYO6mjwPu4uRogOeR5G8ikUjN1ENbiS0Cao4YscoDaXqWRH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="410783190"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="410783190"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="941029061"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="941029061"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:07:23 -0700
Date: Fri, 28 Apr 2023 11:07:21 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEuMyQBKY4dfAEAV@ashyti-mobl2.lan>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-2-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-2-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/mtl: C20 PLL programming
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

Hi Mika,

> +static void intel_c20_pll_program(struct drm_i915_private *i915,
> +				  const struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
> +{
> +	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
> +	bool dp = false;
> +	int lane = crtc_state->lane_count == 4 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
> +	bool cntx;
> +	int i;
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		dp = true;
> +
> +	/* 1. Read current context selection */
> +	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
> +		PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* 2. If there is a protocol switch from HDMI to DP or vice versa, clear
> +	 * the lane #0 MPLLB CAL_DONE_BANK DP2.0 10G and 20G rates enable MPLLA.
> +	 * Protocol switch is only applicable for MPLLA
> +	 */
> +	if (intel_c20_protocol_switch_valid(encoder)) {
> +		for (i = 0; i < 4; i++)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
> +		msleep(4);

can you use usleep_range() here?

Andi

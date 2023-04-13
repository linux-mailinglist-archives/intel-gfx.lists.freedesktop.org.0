Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A516E126F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3167D10EB7A;
	Thu, 13 Apr 2023 16:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BE3A10EB7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681403814; x=1712939814;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=K5FGgsF8sQk5IhSE3QyESCCh4L2OxOb8dOlvbE/geZc=;
 b=gOUp6MYs0j9xeu0IcOGs8aXFDdfyhmSpVZR2za4IrTjEM9J0cNkuOEzw
 DVCGribwsqZSBGJvKtzQZ9IQloeKlg2yu75+mKlm5Pvb5bB/3GmL5zDL1
 udSFkmEgVJhkwpXtfV9cORSOgCb7hcp0Y9H9CKmS6Rhi7VaYIn21WxMvY
 TK6jydYBh69vxr8YmfHQtRmaPMmsFJHEDqs0Ei0jg7EedJpLS5NyQzrVE
 +KNMlt71S0oUps+pXBi++bed4jwMdjyUpiF+Y+09hWBOnVW6gN1KqRedl
 ZCzBXvwsy+WgQmIxT+jDCxf4J2Q0iMEXtNcaxpDUqvBbiy7WA334RNsz8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324588569"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="324588569"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="722129592"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="722129592"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:36:52 -0700
Date: Thu, 13 Apr 2023 19:36:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZDgvoPOj/5/jZmEA@ideak-desk.fi.intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
 <20230412224925.1309815-9-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412224925.1309815-9-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/mtl: Add C10 phy programming
 for HDMI
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 12, 2023 at 03:49:24PM -0700, Radhakrishna Sripada wrote:
> [...]
> +/* Precomputed C10 HDMI PLL tables */
> +static const struct intel_c10pll_state mtl_c10_hdmi_25175 = {
> +	.clock = 25175,
> +	.tx = 0x10,
> +	.cmn = 0x1,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0x00,
> +	.pll[2] = 0xB0,
> +	.pll[3] = 0x00,
> +	.pll[4] = 0x00,
> +	.pll[5] = 0x00,
> +	.pll[6] = 0x00,
> +	.pll[7] = 0x00,
> +	.pll[8] = 0x20,
> +	.pll[9] = 0xFF,
> +	.pll[10] = 0xFF,
> +	.pll[11] = 0x55,
> +	.pll[12] = 0xE5,
> +	.pll[13] = 0x55,
> +	.pll[14] = 0x55,
> +	.pll[15] = 0x0D,
> +	.pll[16] = 0x09,
> +	.pll[17] = 0x8F,
> +	.pll[18] = 0x84,
> +	.pll[19] = 0x23,
> +};

Something off with the above table, 
intel_c10pll_calc_port_clock() calculates 25200 clock rate for it. So
either .clock above needs to be the same rate, or the PLL params need to
be corrected for the 25175 rate.

> [...]
> @@ -690,9 +1315,20 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
>  static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>  				   struct intel_encoder *encoder)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	const struct intel_c10pll_state * const *tables;
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  	int i;
>  
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		if (intel_c10_phy_check_hdmi_link_rate(crtc_state->port_clock)
> +		    != MODE_OK) {
> +			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d on phy %c.\n",
> +				    crtc_state->port_clock, phy_name(phy));
> +			return -EINVAL;
> +		}
> +	}

The above check is not needed, covered already by the loop later in
the function.

> +
>  	tables = intel_c10pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return -EINVAL;

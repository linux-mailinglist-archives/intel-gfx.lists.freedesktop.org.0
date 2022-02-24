Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C53F4C2927
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 11:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8A110F696;
	Thu, 24 Feb 2022 10:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E474310F69A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 10:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645698011; x=1677234011;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=57Ycoz4s/WmXIb7MxZ2x+Df+gYE3ry/CWMu9b6nkTLs=;
 b=WA4Q+g6CXJEw0BiwulsdCL82yW+IeEKw9kk9CxBr2nwrt3wPhRr1iBhC
 dIGinguHRkbkyfki+8/h1GV9bnFsUQo2KvMpHg2m5DAYvwU9okhTlI98+
 5wOsapKmmSg7xEX98X0XK/oUSY2MEzZg5IN6pwARgV/axASnN7e31jbu6
 YNvc7xKPOinS+DApxHZK0Ingu554i6H2/IKbBqt8VPEhR6bLtXB2z7VHB
 3SOk/LJqkVvRIiUztY0qP0+m1encNtNXNBtAgs3PI9wvIrk0M3s3GCohX
 oyLQj2qXh0juOl6g2Heh4WMVdhQNNBhcGhAKRTWIiPkSYxGORzeRFRWNH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="276828316"
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="276828316"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 02:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,393,1635231600"; d="scan'208";a="684230314"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 24 Feb 2022 02:20:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 12:20:01 +0200
Date: Thu, 24 Feb 2022 12:20:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yhdb0UMM8gskEDmt@intel.com>
References: <20220223205551.813749-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223205551.813749-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Use unions per
 platform in intel_dpll_hw_state
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

On Wed, Feb 23, 2022 at 12:55:51PM -0800, José Roberto de Souza wrote:
<snip>
> +	union {
> +		/* icl+ TC */
> +		struct {
> +			u32 mg_refclkin_ctl;
> +			u32 mg_clktop2_coreclkctl1;
> +			u32 mg_clktop2_hsclkctl;
> +			u32 mg_pll_div0;
> +			u32 mg_pll_div1;
> +			u32 mg_pll_lf;
> +			u32 mg_pll_frac_lock;
> +			u32 mg_pll_ssc;
> +			u32 mg_pll_bias;
> +			u32 mg_pll_tdc_coldst_bias;
> +			u32 mg_pll_bias_mask;
> +			u32 mg_pll_tdc_coldst_bias_mask;
> +		};
> +
> +		/* bxt */
> +		struct {
> +			/* bxt */
> +			u32 ebb0;
> +			u32 ebb4;
> +			u32 pll0;
> +			u32 pll1;
> +			u32 pll2;
> +			u32 pll3;
> +			u32 pll6;
> +			u32 pll8;
> +			u32 pll9;
> +			u32 pll10;
> +			u32 pcsdw12;
> +		};

Wasn't there some funny compiler bug around anonymous unions?
git log --grep='anon.*union' seems to agree. Please double check
that stuff to make sure this is actually safe.

-- 
Ville Syrjälä
Intel

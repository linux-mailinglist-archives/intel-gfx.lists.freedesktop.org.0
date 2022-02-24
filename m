Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F834C2CE9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 14:25:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E7F10E118;
	Thu, 24 Feb 2022 13:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C45010E118
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 13:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645709110; x=1677245110;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jcsbnPJNFNF/aY/ApljzGcutB1x943HFFDttSV5gRhk=;
 b=SI+YnN5di9XvAOsSnJqdtWHKhha2kZlowsy/9KbcUG91qH5KnPNet4+2
 /PLyvmiTWpogLSCeGQWRl1s21rli/qyYyzgaP/Je55wcymteXQfVL6I//
 RbvYdmugjQjPyBW193WCES6Mm4n2rSM8KdbFTiEkHXN9HBW+ZAQbPiUUY
 KYnLuWbE7Y3Es2BODijjIYGDBgcW8xXqBTTdkEHfbhSb171VMAunaqyzy
 8j1MDQ4zQk8NRaaYhB3P4Ftm1W1eF55lhuDIMJo6QaTdt0LpHUxkqyIpZ
 ft66aNyqCbzuKrH4swk5GofOlwX3T6XOoo432Ix8+5XOshFlSSV8eg9Jj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="276859062"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="276859062"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 05:25:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="506319135"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 24 Feb 2022 05:25:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 15:25:06 +0200
Date: Thu, 24 Feb 2022 15:25:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YheHMunjbW0z4tg2@intel.com>
References: <20220223205551.813749-1-jose.souza@intel.com>
 <Yhdb0UMM8gskEDmt@intel.com>
 <bcd7d64a3c2fcecd78efbfc4a711721fa9e32e16.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bcd7d64a3c2fcecd78efbfc4a711721fa9e32e16.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 24, 2022 at 01:17:35PM +0000, Souza, Jose wrote:
> On Thu, 2022-02-24 at 12:20 +0200, Ville Syrjälä wrote:
> > On Wed, Feb 23, 2022 at 12:55:51PM -0800, José Roberto de Souza wrote:
> > <snip>
> > > +	union {
> > > +		/* icl+ TC */
> > > +		struct {
> > > +			u32 mg_refclkin_ctl;
> > > +			u32 mg_clktop2_coreclkctl1;
> > > +			u32 mg_clktop2_hsclkctl;
> > > +			u32 mg_pll_div0;
> > > +			u32 mg_pll_div1;
> > > +			u32 mg_pll_lf;
> > > +			u32 mg_pll_frac_lock;
> > > +			u32 mg_pll_ssc;
> > > +			u32 mg_pll_bias;
> > > +			u32 mg_pll_tdc_coldst_bias;
> > > +			u32 mg_pll_bias_mask;
> > > +			u32 mg_pll_tdc_coldst_bias_mask;
> > > +		};
> > > +
> > > +		/* bxt */
> > > +		struct {
> > > +			/* bxt */
> > > +			u32 ebb0;
> > > +			u32 ebb4;
> > > +			u32 pll0;
> > > +			u32 pll1;
> > > +			u32 pll2;
> > > +			u32 pll3;
> > > +			u32 pll6;
> > > +			u32 pll8;
> > > +			u32 pll9;
> > > +			u32 pll10;
> > > +			u32 pcsdw12;
> > > +		};
> > 
> > Wasn't there some funny compiler bug around anonymous unions?
> > git log --grep='anon.*union' seems to agree. Please double check
> > that stuff to make sure this is actually safe.
> 
> I don't see any patch referring to compiler issues with 'git log --grep='anon.*union', what I see is other subsystems making use of it too.
> Can you share the commit hash that you are referring to?

$ git log --format=oneline --grep='anon.*union' -- drivers/gpu/drm/i915

-- 
Ville Syrjälä
Intel

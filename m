Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B264C3419
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 18:55:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23F310ECA1;
	Thu, 24 Feb 2022 17:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8986810EC98
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 17:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645725329; x=1677261329;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yOv6D77pW2BxSP4GZ68RS0MyWyTzTM7PjPAbGmEeKHk=;
 b=F1ugkjk7GLTLMHrzNpIhNPyhwY/V+CB+ZCJuBpkU20zufMvJsazE1449
 7jhXewldA4oRlAIV4/eiHjGQrsJVPbkDXKdvwhdYl75sRJpTXsmUHEFfd
 z5FSge9H0UruZFcUvGXOUoy+ywA4uIIvWQmjyDrCAn/60A9lRS/uLdwuv
 BB2wySu977rYtiBQHnp0tfxBr3Za9qP2ysuClVVUGMo8gt8tdIHDF2Jiy
 h/jFz2AQn4syRSOKcft7RCqGPV6fIKfVWObQX4FyLKCPoa4q/v0Ka32ck
 RIu9dZOYIr4RpnL+eTsDLIwh0TLiNB2EXmjO7HMIAsgB6vrAFhxulVD9n Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252498402"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="252498402"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 09:55:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="543786217"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 24 Feb 2022 09:55:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 19:55:25 +0200
Date: Thu, 24 Feb 2022 19:55:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YhfGjbiC+2roWxbD@intel.com>
References: <20220223205551.813749-1-jose.souza@intel.com>
 <Yhdb0UMM8gskEDmt@intel.com>
 <bcd7d64a3c2fcecd78efbfc4a711721fa9e32e16.camel@intel.com>
 <YheHMunjbW0z4tg2@intel.com>
 <d91dc9dc9f015a279dddfe45f88bd1ec0cbec013.camel@intel.com>
 <YhemsCLTJNyc+KLe@intel.com>
 <9d5049fe87faf41fba7649335cecbd64fba0c77a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9d5049fe87faf41fba7649335cecbd64fba0c77a.camel@intel.com>
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

On Thu, Feb 24, 2022 at 05:48:10PM +0000, Souza, Jose wrote:
> On Thu, 2022-02-24 at 17:39 +0200, Ville Syrjälä wrote:
> > On Thu, Feb 24, 2022 at 01:49:36PM +0000, Souza, Jose wrote:
> > > On Thu, 2022-02-24 at 15:25 +0200, Ville Syrjälä wrote:
> > > > On Thu, Feb 24, 2022 at 01:17:35PM +0000, Souza, Jose wrote:
> > > > > On Thu, 2022-02-24 at 12:20 +0200, Ville Syrjälä wrote:
> > > > > > On Wed, Feb 23, 2022 at 12:55:51PM -0800, José Roberto de Souza wrote:
> > > > > > <snip>
> > > > > > > +	union {
> > > > > > > +		/* icl+ TC */
> > > > > > > +		struct {
> > > > > > > +			u32 mg_refclkin_ctl;
> > > > > > > +			u32 mg_clktop2_coreclkctl1;
> > > > > > > +			u32 mg_clktop2_hsclkctl;
> > > > > > > +			u32 mg_pll_div0;
> > > > > > > +			u32 mg_pll_div1;
> > > > > > > +			u32 mg_pll_lf;
> > > > > > > +			u32 mg_pll_frac_lock;
> > > > > > > +			u32 mg_pll_ssc;
> > > > > > > +			u32 mg_pll_bias;
> > > > > > > +			u32 mg_pll_tdc_coldst_bias;
> > > > > > > +			u32 mg_pll_bias_mask;
> > > > > > > +			u32 mg_pll_tdc_coldst_bias_mask;
> > > > > > > +		};
> > > > > > > +
> > > > > > > +		/* bxt */
> > > > > > > +		struct {
> > > > > > > +			/* bxt */
> > > > > > > +			u32 ebb0;
> > > > > > > +			u32 ebb4;
> > > > > > > +			u32 pll0;
> > > > > > > +			u32 pll1;
> > > > > > > +			u32 pll2;
> > > > > > > +			u32 pll3;
> > > > > > > +			u32 pll6;
> > > > > > > +			u32 pll8;
> > > > > > > +			u32 pll9;
> > > > > > > +			u32 pll10;
> > > > > > > +			u32 pcsdw12;
> > > > > > > +		};
> > > > > > 
> > > > > > Wasn't there some funny compiler bug around anonymous unions?
> > > > > > git log --grep='anon.*union' seems to agree. Please double check
> > > > > > that stuff to make sure this is actually safe.
> > > > > 
> > > > > I don't see any patch referring to compiler issues with 'git log --grep='anon.*union', what I see is other subsystems making use of it too.
> > > > > Can you share the commit hash that you are referring to?
> > > > 
> > > > $ git log --format=oneline --grep='anon.*union' -- drivers/gpu/drm/i915
> > > > 
> > > 
> > > I see issues with initialization of anonymous union but we don't initialize intel_dpll_hw_state.
> > > Also it was fixed on GCC 4.6 that is older than current GCC requirement to build kernel(GCC 5.1).
> > > 
> > > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=10676
> > 
> > OK. However, after pondering this a bit I think naming things wpild
> > probably be better here. You have a bunch of if ladders now where each
> > branch only operates on one of the structs inside the union. IMO the
> > anonymity is making it rather hard to see if the code is even correct.
> 
> Just to mare sure we are in the same page, you want to have this?
> 
> 
> struct icl_tc {
> 	u32 mg_refclkin_ctl;
> 	u32 mg_clktop2_coreclkctl1;
> 	u32 mg_clktop2_hsclkctl;
> 	u32 mg_pll_div0;
> 	u32 mg_pll_div1;
> 	u32 mg_pll_lf;
> 	u32 mg_pll_frac_lock;
> 	u32 mg_pll_ssc;
> 	u32 mg_pll_bias;
> 	u32 mg_pll_tdc_coldst_bias;
> 	u32 mg_pll_bias_mask;
> 	u32 mg_pll_tdc_coldst_bias_mask;
> };

struct {
	....
} whatever;

In this case the name that immediately came to mind was just "mg"
(+ then drop the extra mg_ namespace in the members).

We could name the types too I guess if we wanted to use those
somewhere. Eg. instead of passing in the whole union to some
function we could just pass in the specific substruct.

> 
> So we would need to access members with icl_tc.mg_refclkin_ctl?
> 
> I can do that but the diff will be huge.
> Are you okay with that too Imre?
> 
> 
> > 
> 

-- 
Ville Syrjälä
Intel

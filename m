Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B914E410F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 15:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92E310E2FC;
	Tue, 22 Mar 2022 14:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9446D10E2FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 14:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647958658; x=1679494658;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eH8rr5TSCCtw/xrRuVL/V4A10okYU+IJngMsMUcovak=;
 b=mMLvbtPnS4UPutCSEyvaR5j0JaSheb1CNSOpQ7+HeBMGbCPePsBd8lVk
 3KzTGrDD9O5N7+MAI4mItI8R3JbAAKAzOA65KmuODQRlg9E0v1GIQopzM
 XHaNzArqKFgYZYQDLq1ZM21lCE/qdUZFA61Ig2OjDqiLxRE+FE/OgYU6G
 lH6lYy8bIBGj3fdCJxxnxb6L6cbvALNKWJwlqF5l+oRQLcWyTcBUVw7mP
 6z8JCZFy38V9O/DbBkz+44YmqQeJGY4PqF4qz62AjeQiW9YWahq3Lbs4e
 OUtr38rVOXE9MqmicUn8T2ug8E04zstWf9M8oBt+FEt1+QAvSNXpQgm+3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="321028587"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="321028587"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 07:17:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="543707503"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 07:17:36 -0700
Date: Tue, 22 Mar 2022 16:18:09 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Mark Pearson <markpearson@lenovo.com>
Message-ID: <20220322141809.GA31222@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <9e70bec0-66b6-9ac7-1b5d-9d8679700523@lenovo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e70bec0-66b6-9ac7-1b5d-9d8679700523@lenovo.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] drm/i915/adl_p: Increase CDCLK by 15% if PSR2 is
 used
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

On Tue, Mar 22, 2022 at 09:55:35AM -0400, Mark Pearson wrote:
> Hi,
> 
> On 3/21/22 06:49, Stanislav Lisovskiy wrote:
> > We are currently getting FIFO underruns, in particular
> > when PSR2 is enabled. There seem to be no existing workaround
> > or patches, which can fix that issue(were expecting some recent
> > selective fetch update and DBuf bw/SAGV fixes to help,
> > which unfortunately didn't).
> > Current idea is that it looks like for some reason the
> > DBuf prefill time isn't enough once we exit PSR2, despite its
> > theoretically correct.
> > So bump it up a bit by 15%(minimum experimental amount required
> > to get it working), if PSR2 is enabled.
> > For PSR1 there is no need in this hack, so we limit it only
> > to PSR2 and Alderlake.
> > 
> > v2: - Added comment(Jose Souza)
> >     - Fixed 15% calculation(Jose Souza)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 8888fda8b701..92d57869983a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2325,6 +2325,32 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  					dev_priv->max_cdclk_freq));
> >  	}
> >  
> > +
> > +	/*
> > +	 * HACK.  We are getting FIFO underruns, in particular
> > +	 * when PSR2 is enabled. There seem to be no existing workaround
> > +	 * or patches as of now.
> > +	 * Current idea is that it looks like for some reason the
> > +	 * DBuf prefill time isn't enough once we exit PSR2, despite its
> > +	 * theoretically correct.
> > +	 * So bump it up a bit by 15%(minimum experimental amount required
> > +	 * to get it working), if PSR2 is enabled.
> > +	 * For PSR1 there is no need in this hack, so we limit it only
> > +	 * to PSR2 and Alderlake.
> > +	 */
> > +	if (IS_ALDERLAKE_P(dev_priv)) {
> > +		struct intel_encoder *encoder;
> > +
> > +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> > +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +
> > +			if (intel_dp->psr.psr2_enabled) {
> > +				min_cdclk = DIV_ROUND_UP(min_cdclk * 115, 100);
> > +				break;
> > +			}
> > +		}
> > +	}
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> 
> Not sure if this will get thru as I'm not subscribed to this list but I
> tested the patch below on my X1 Yoga 7 (Intel ADL-P with Step C0
> silicon) and it didn't fix some screen tearing issues I'm seeing there
> that are PSR2 related
> 
> I also tried increasing the timeout to *300 to see if that made any
> difference and it didn't.
> 
> Let me know if there's anything else I can try out - I have a couple of
> ADL-P machines I can test against and both are seeing screen tearing

Are you getting this screen tearing because of the FIFO underruns?
Those should be visible in dmesg. This patch can fix only part of underrun
issues caused by PSR2. 
If your screen tearing caused by PSR2, but there are no underruns that 
patch won't help for sure.

Stan

> 
> Thanks
> Mark

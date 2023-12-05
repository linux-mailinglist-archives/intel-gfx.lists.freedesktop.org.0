Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 753898057E1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 15:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD7410E55F;
	Tue,  5 Dec 2023 14:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7679810E55D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 14:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701787847; x=1733323847;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xYHz9Di7uHTfomHHnxKuXCuSiuAfBIQ5H4cNADH4u3w=;
 b=neYMHTe1kQ5dp3xgT+gc/ly/rnyqMaaAxTvCBm+lAWRc+iaznUC4sNVR
 vlH20a5OceAY2ma/cxuZwYRxwntGox6uve8LRswn/Pog0l6QPWjcFw0yJ
 niom0Zoa7Ksd8HWLbnVGxPmdBQ1xQij+dYp8wuHZOOW00GIswlkwzXlac
 5tamYOaknFUCV1ZmKLzBfm93IQh3QitjxLj6i8FuAgKgEZF3O1j+p49eU
 JdY68YEhELS0aqc1G2H/ULi2wXh25XlHUDOHtLA0dGHwX5X6lZbeZmWcq
 kt9eVsvi8Z+GSKZhbImGAWON3jo3kFkatsSO2fSpuZIH7nM5WLK26x65j Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="392768302"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="392768302"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 06:50:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="764346307"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="764346307"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 05 Dec 2023 06:50:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Dec 2023 16:50:43 +0200
Date: Tue, 5 Dec 2023 16:50:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZW84wy_FCG8s506B@intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-4-ville.syrjala@linux.intel.com>
 <170146161860.74196.15128036322042431763@gjsousa-mobl2>
 <ZW4xGvqAYpc9HHF7@intel.com>
 <170172278840.19717.10772744295565186200@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170172278840.19717.10772744295565186200@gjsousa-mobl2>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/cdclk: Remove the assumption
 that cd2x div==2 when using squashing
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

On Mon, Dec 04, 2023 at 05:46:28PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2023-12-04 17:05:46-03:00)
> >On Fri, Dec 01, 2023 at 05:13:38PM -0300, Gustavo Sousa wrote:
> >> Quoting Ville Syrjala (2023-11-28 08:51:33-03:00)
> >> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> >Currently we have a hardcoded assumption that the cd2x divider
> >> >is always 2 when squahsing is used.
> >> 
> >> It seems the code was actually making the assumption that the
> >> divider is always 1. With the current code, when squashing is used, we
> >> have that bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) is equivalent to
> >> bxt_cdclk_cd2x_div_sel(dev_priv, vco / 2, vco), meaning that the
> >> returned value will always be BXT_CDCLK_CD2X_DIV_SEL_1.
> >
> >The real cd2x divider is half of our 'divider' because we
> >specify the full vco->cdclk divider instead of the vco->cd2xclk
> >divider. 
> 
> Got it.
> 
> >
> >Alternatively you can think of it as being the cd2x divider
> >specified in .1 binary fixed point format.
> >
> >But yeah, saying "cd2x divider is 2" probably isn't the best
> >way to put this.
> 
> Yeah, maybe because of my little time with the driver code, but I had
> interpreted it as the one used right after the PLL output (I'm taking
> the diagram from MTL specs as reference).
> 
> Did I miss some comment in the code explaning that? Should one be added?

Looks like we've at least attempted to document this:

struct intel_cdclk_vals {
	u32 cdclk;
	u16 refclk;
	u16 waveform;
	u8 divider;     /* CD2X divider * 2 */
	u8 ratio;
};

> 
> >
> >> 
> >> > While that is true for all
> >> >current platforms it might not hold in the future. So eliminate
> >> 
> >> Not sure about the other platforms, but for MTL, I have checked the
> >> BSpec table and also did some calculations by hand, and it seems like
> >> the cd2x divider is actually always 1.
> >> 
> >> Unless I'm missing something in my analysis above, I believe s/2/1/ in
> >> the commit message is necessary. With that,
> >> 
> >> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Considering that the above understanding about the divider is the common
> sense, the r-b stands without the tweaks in the commit messages. Thanks
> for the clarification!

I can try to tweak it a bit anyway for extra clarity.

And thanks for the review.

> 
> --
> Gustavo Sousa
> 
> >> 
> >> >the assumption and calculate the correct divider from the other
> >> >parameters.
> >> >
> >> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >---
> >> > drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++----
> >> > 1 file changed, 2 insertions(+), 4 deletions(-)
> >> >
> >> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >index 87d5e5b67c4e..d45071675629 100644
> >> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> >@@ -1899,10 +1899,8 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >> > 
> >> >         waveform = cdclk_squash_waveform(dev_priv, cdclk);
> >> > 
> >> >-        if (waveform)
> >> >-                clock = vco / 2;
> >> >-        else
> >> >-                clock = cdclk;
> >> >+        clock = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
> >> >+                                  cdclk_squash_divider(waveform));
> >> 
> >> Nit: maybe take the opportunity to rename "clock" to "unsquashed" for
> >> clarity?
> >> 
> >> > 
> >> >         if (HAS_CDCLK_SQUASH(dev_priv))
> >> >                 dg2_cdclk_squash_program(dev_priv, waveform);
> >> >-- 
> >> >2.41.0
> >> >
> >
> >-- 
> >Ville Syrjälä
> >Intel

-- 
Ville Syrjälä
Intel

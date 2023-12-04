Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 646AA803EFC
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 21:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD2510E373;
	Mon,  4 Dec 2023 20:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4A910E3EF
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 20:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701720350; x=1733256350;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=prZwHTN50GHT2LBBF1LW2j989mNL74Be67pE8u9cWD0=;
 b=Efzp7G6EQFXhKXSst6ZOF2u30kcCmBguNw0ufdiakwhm+6azUK6FzzWk
 XIocOcviC12dVWZUamSBktjBdfIKkrc9E6ef9OtOqiLvSp7ii8sPZmh2/
 cYrHbsWe24/oZbpNaNQrHHFSIS31CCcc1xdgKpeuV+TqClMtSV9RiTsfX
 LyC+0lDf64mtRNApjbQqIXiOt+IwK80gsOvQST5mmXMGNcQIZJ3x3JCAQ
 jjmVbfloPVRpH4BsoEHwVHc5uxIj3vL+LV2NsWKmHGkehemIrxYi0nNpS
 +vD/Mr+yw5MPC48tRYDhU9nHbRn4f8mFIu6bBLtJSQaDS62cp42UpNaw6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="373234768"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="373234768"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 12:05:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="764077079"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="764077079"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 04 Dec 2023 12:05:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Dec 2023 22:05:46 +0200
Date: Mon, 4 Dec 2023 22:05:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZW4xGvqAYpc9HHF7@intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-4-ville.syrjala@linux.intel.com>
 <170146161860.74196.15128036322042431763@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170146161860.74196.15128036322042431763@gjsousa-mobl2>
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

On Fri, Dec 01, 2023 at 05:13:38PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjala (2023-11-28 08:51:33-03:00)
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Currently we have a hardcoded assumption that the cd2x divider
> >is always 2 when squahsing is used.
> 
> It seems the code was actually making the assumption that the
> divider is always 1. With the current code, when squashing is used, we
> have that bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) is equivalent to
> bxt_cdclk_cd2x_div_sel(dev_priv, vco / 2, vco), meaning that the
> returned value will always be BXT_CDCLK_CD2X_DIV_SEL_1.

The real cd2x divider is half of our 'divider' because we
specify the full vco->cdclk divider instead of the vco->cd2xclk
divider. 

Alternatively you can think of it as being the cd2x divider
specified in .1 binary fixed point format.

But yeah, saying "cd2x divider is 2" probably isn't the best
way to put this.

> 
> > While that is true for all
> >current platforms it might not hold in the future. So eliminate
> 
> Not sure about the other platforms, but for MTL, I have checked the
> BSpec table and also did some calculations by hand, and it seems like
> the cd2x divider is actually always 1.
> 
> Unless I'm missing something in my analysis above, I believe s/2/1/ in
> the commit message is necessary. With that,
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> >the assumption and calculate the correct divider from the other
> >parameters.
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++----
> > 1 file changed, 2 insertions(+), 4 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >index 87d5e5b67c4e..d45071675629 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >@@ -1899,10 +1899,8 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > 
> >         waveform = cdclk_squash_waveform(dev_priv, cdclk);
> > 
> >-        if (waveform)
> >-                clock = vco / 2;
> >-        else
> >-                clock = cdclk;
> >+        clock = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
> >+                                  cdclk_squash_divider(waveform));
> 
> Nit: maybe take the opportunity to rename "clock" to "unsquashed" for
> clarity?
> 
> > 
> >         if (HAS_CDCLK_SQUASH(dev_priv))
> >                 dg2_cdclk_squash_program(dev_priv, waveform);
> >-- 
> >2.41.0
> >

-- 
Ville Syrjälä
Intel

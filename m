Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD8E85820B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 17:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E7B10EBBA;
	Fri, 16 Feb 2024 16:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ob20U0k+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B2D10EBC5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 16:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708099238; x=1739635238;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OjTJXrvasFSXBBj409rs7XbZvtsSP2C1Rb2xEELT0fk=;
 b=Ob20U0k+zWmcsHWHAtU2vctupzONE019cEaGUkweBlMk7IMQMk24Jql5
 eCNBvWWGL57H7gMYeEgL7g3RFpwAMcucCYwv2Hb6ANkkZEE/xzkNOn4IN
 A6FF1Pa4X6LfewcZhu2urXMY9px+CxZoSpyxvjUnudQg49oiVbnDB5IUv
 ke4ZlFMOWUIPy3gvWn0Y6DsQIHSByCWlGKyo6+1kt2uOAcXNdY8iO6oOa
 HNNmTqOmKdtWUAfRjSlJzO3rJW8eNpIa0TVYHLsFqjP3PBBJeNCKjekg2
 PQmofni8YixHvUC8FY1hgm0mB6g6N5MNeejfOFo+W5QWWlbgRT5odORVn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="6058065"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; 
   d="scan'208";a="6058065"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 08:00:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="826593265"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="826593265"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 16 Feb 2024 08:00:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Feb 2024 18:00:34 +0200
Date: Fri, 16 Feb 2024 18:00:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/cdclk: Document CDCLK update methods
Message-ID: <Zc-GoouJUlYI-LPo@intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
 <20240207013334.29606-5-ville.syrjala@linux.intel.com>
 <170808789627.10917.12293971835741985062@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170808789627.10917.12293971835741985062@gjsousa-mobl2>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 16, 2024 at 09:51:36AM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjala (2024-02-06 22:33:34-03:00)
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Add a bit of documentation to briefly explain the methods
> >by which we can change the CDCLK frequency.
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_cdclk.c | 9 +++++++++
> > 1 file changed, 9 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >index ca00586fdbc8..30dae4fef6cb 100644
> >--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >@@ -63,6 +63,15 @@
> >  * DMC will not change the active CDCLK frequency however, so that part
> >  * will still be performed by the driver directly.
> >  *
> >+ * Several methods exist to change the CDCLK frequency, which ones are
> >+ * supported depends on the platform:
> >+ * - Full PLL disable + re-enable with new VCO frequency. Pipes must be inactive.
> >+ * - CD2X divider update. Single pipe can be active as the divider update
> >+ *   can be synchronized with the pipe's start of vblank.
> >+ * - Crawl the PLL smoothly to the new VCO frequency. Pipes can be active.
> >+ * - Squash waveform update. Pipes can be active.
> >+ * - Crawl and squash can also be done back to back. Pipes can be active.
> >+ *
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks. Pushed the series.

> 
> I think it would also be nice to have some explanation of the components
> involved in the generation of the CDCLK. I would prepend this paragraph
> with something like:
> 
>     The are multiple components involved in the generation of the CDCLK
>     frequency:
> 
>     - We have the CDCLK PLL, which generates an output clock
>       based on a reference clock.
> 
>     - The CD2X Divider, which divides the output of the PLL based on a
>       divisor selected from a set of pre-defined choices.
> 
>     - The CD2X Squasher, which further divides the output based on a
>       waveform represented as a sequence of bits where each zero
>       "squashes out" a clock cycle.
> 
>     - And finally a fixed divider that divides the output frequency by
>       2.
> 
>     As such, the resulting CDCLK frequency can be calculated with the
>     following formula:
> 
>         cdclk = vco / cd2x_div / (sq_len / sq_div) / 2
> 
>     , where vco is the frequency output from the PLL; cd2x_div
>     represents the CD2X Divider; sq_len and sq_div are the bit length
>     and the number of high bits for the CD2X Squasher waveform; and 2
>     represents the fixed divider.
> 
>     Note that some older platforms do not contain the CD2X Divider
>     and/or CD2X Squasher, in which case we can ignore their respective
>     factors in the formula above.
> 
> In case you like it, we could either add it to this patch or I could send as
> a separate patch. Your call.

Looks reasonable. Please send it as a separate patch.

> 
> --
> Gustavo Sousa
> 
> >  * RAWCLK is a fixed frequency clock, often used by various auxiliary
> >  * blocks such as AUX CH or backlight PWM. Hence the only thing we
> >  * really need to know about RAWCLK is its frequency so that various
> >-- 
> >2.43.0
> >

-- 
Ville Syrjälä
Intel

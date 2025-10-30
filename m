Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5C7C20F88
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 16:38:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF9210E9F5;
	Thu, 30 Oct 2025 15:38:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GHOJH1cD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F5510E9F5;
 Thu, 30 Oct 2025 15:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761838689; x=1793374689;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lLr4AivaQlPV7wHa+pgrP+uVfuTawc5Dv0d11VGBE1g=;
 b=GHOJH1cDgyOmg22RXF6VwIceL72B1wXZgiNX5Wtsm/VKMSXXaPaLdYg+
 VIAQN679Hbg6kMTvsn0Mf3btBiSEPrdGDZVDm/mufOHJbXb29/Nh8KcUR
 V2id4bO0lShHnDoWKemrEs0z9vkS2UawfBlarFRiWp4JdPOPe83U2RTew
 xwQ0bGayTprPT1CevkXpsvQA0c/dbZexkDoU0fkZBaM6N03GqINlkeTYF
 0F5z2drgwOYAC3vCl9QY4Rmr8oCqw6bnOSt6NSG2Y+u8Csmtqam3mqjHF
 ynIAiGvfr8SsSdis6bhu+pkdyTx4WTXZlpBUPqbVsv/0qB3J/nqs/m4le A==;
X-CSE-ConnectionGUID: GzyN86blRkiVgsCx8CwUNA==
X-CSE-MsgGUID: 2hd8HJprQsmbvTJbzYtTpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="81401574"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="81401574"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 08:38:09 -0700
X-CSE-ConnectionGUID: Orh9h+hnTNaEXRWbVA+dyQ==
X-CSE-MsgGUID: QTQalogSSyOIXMfysnhorg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="190057984"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.234])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 08:38:05 -0700
Date: Thu, 30 Oct 2025 17:38:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2 14/32] drm/i915/wm: Reorder adjust_wm_latency() for
 Xe3_LPD
Message-ID: <aQOGWm9x-ZERKfZA@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
 <aQKTXsWok4HaRCdv@intel.com> <aQKW3rfS1l4BdDdh@intel.com>
 <176183195677.3303.15857641770094558190@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <176183195677.3303.15857641770094558190@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 30, 2025 at 10:45:56AM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjälä (2025-10-29 19:36:14-03:00)
> >On Thu, Oct 30, 2025 at 12:22:01AM +0200, Ville Syrjälä wrote:
> >> On Tue, Oct 21, 2025 at 09:28:39PM -0300, Gustavo Sousa wrote:
> >> > In an upcoming change related to Xe3p_LPD, we will need to (i) update
> >> > wm[0] in adjust_wm_latency() and (ii) do the same increase_wm_latency()
> >> > that is currently done when (wm[0] == 0).
> >> > 
> >> > Because make_wm_latency_monotonic() depends on wm[0], part (i) needs to
> >> > be done before it gets called.  In order to keep (i) and (ii) as a
> >> > contiguous logical sequence, let's reorder adjust_wm_latency(), making
> >> > make_wm_latency_monotonic() the last thing to be done.
> >> > 
> >> > Also take this opportunity to simplify the code by doing the call to
> >> > increase_wm_latency() only once.
> >> > 
> >> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++----
> >> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >> > 
> >> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> > index c141d575009f..57260a2a765a 100644
> >> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> > @@ -3213,14 +3213,13 @@ static void
> >> >  adjust_wm_latency(struct intel_display *display)
> >> >  {
> >> >          u16 *wm = display->wm.skl_latency;
> >> > +        int inc = 0;
> >> >  
> >> >          if (display->platform.dg2)
> >> >                  multiply_wm_latency(display, 2);
> >> >  
> >> >          sanitize_wm_latency(display);
> >> >  
> >> > -        make_wm_latency_monotonic(display);
> >> > -
> >> 
> >> I was thinking that by doing this early we avoid potentially papering
> >> over our own bugs in the later adjustments. But Windows does appear to
> >> do this after the read latency adjustment.
> >
> >Hmm, I suppose it doesn't really matter whether it's before or after
> >since the read latency adjustment applies to all wm levels. So I think
> >I still prefer to keep it early to avoid papering over our own bugs.
> 
> Okay.  In this case, I guess I can drop this patch then and go back to
> the original approach + moving the assignment of "wm[0] = 0" to be done
> earlier.
> 
> >
> >> 
> >> And it looks like Windows actually stopped doing this for xe3 and now
> >> it rejects non-monotonic values. And it also does that after the read
> >> latency adjustment.
> >> 
> >> So I guess what we want to do is move this later, only call it for 
> >> pre-xe3, and add another step after it to validate that the latencies
> >> are indeed monotonic.
> 
> I guess in our case, we would reject them in sanitize_wm_latency(),
> making everything after the invalid level (i.e. wm[level] < wm[level -
> 1]) be forced to zero, right?
> 
> In summary, with keeping make_wm_latency_monotonic() early, something
> like this?
> 
>     |diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>     |index c141d575009f..6cf1565dcefd 100644
>     |--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>     |+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>     |@@ -3183,11 +3183,16 @@ static void sanitize_wm_latency(struct intel_display *display)
>     | 	int level, num_levels = display->wm.num_levels;
>     | 
>     | 	/*
>     |-	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
>     |-	 * need to be disabled. We make sure to sanitize the values out
>     |-	 * of the punit to satisfy this requirement.
>     |+	 * Two types of sanitization are done here:
>     |+	 * 1) If a level n (n > 1) has a 0us latency, all levels m (m >= n)
>     |+	 *    need to be disabled. We make sure to sanitize the values out of
>     |+	 *    the punit to satisfy this requirement.
>     |+	 * 2) For Xe3 onward, only accept monotonic ranges.
>     | 	 */
>     | 	for (level = 1; level < num_levels; level++) {
>     |+		if (DISPLAY_VER(display) >= 30 && wm[level] < wm[level - 1])
>     |+			wm[level] = 0;

I don't think we want to sweep these under the rug.

IMO we should simply not call make_wm_latency_monotonic() on xe3+,
and do some kind of drm_WARN(!is_wm_latency_monotonic()) once
we're done with all the adjustments.

>     |+
>     | 		if (wm[level] == 0)
>     | 			break;
>     | 	}
>     |@@ -3201,6 +3206,9 @@ static void make_wm_latency_monotonic(struct intel_display *display)
>     | 	u16 *wm = display->wm.skl_latency;
>     | 	int level, num_levels = display->wm.num_levels;
>     | 
>     |+	if (DISPLAY_VER(display) < 30)
>     |+		return;
>     |+
>     | 	for (level = 1; level < num_levels; level++) {
>     | 		if (wm[level] == 0)
>     | 			break;
> 
> If so, I could include this patch as part of this series to avoid
> conflicts or keep it as a separate patch...
> 
> --
> Gustavo Sousa
> 
> >> 
> >> >          /*
> >> >           * WaWmMemoryReadLatency
> >> >           *
> >> > @@ -3229,7 +3228,7 @@ adjust_wm_latency(struct intel_display *display)
> >> >           * from the punit when level 0 response data is 0us.
> >> >           */
> >> >          if (wm[0] == 0)
> >> > -                increase_wm_latency(display, wm_read_latency(display));
> >> > +                inc += wm_read_latency(display);
> >> >  
> >> >          /*
> >> >           * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
> >> > @@ -3238,7 +3237,12 @@ adjust_wm_latency(struct intel_display *display)
> >> >           * to avoid any underrun.
> >> >           */
> >> >          if (need_16gb_dimm_wa(display))
> >> > -                increase_wm_latency(display, 1);
> >> > +                inc += 1;
> >> > +
> >> > +        if (inc)
> >> > +                increase_wm_latency(display, inc);
> >> 
> >> I don't see that variable being helpful in any real way.
> >> Just makes the function more complicated for no good reason.
> >> It also has nothing to do with the rest of this patch.
> >> 
> >> > +
> >> > +        make_wm_latency_monotonic(display);
> >> >  }
> >> >  
> >> >  static void mtl_read_wm_latency(struct intel_display *display)
> >> > 
> >> > -- 
> >> > 2.51.0
> >> 
> >> -- 
> >> Ville Syrjälä
> >> Intel
> >
> >-- 
> >Ville Syrjälä
> >Intel

-- 
Ville Syrjälä
Intel

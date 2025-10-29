Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 302F5C1D9A2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 23:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D1010E865;
	Wed, 29 Oct 2025 22:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4micpBA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522D610E865;
 Wed, 29 Oct 2025 22:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761777595; x=1793313595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MZAMPoxevbaS+QAiM1BITmbo7zZtDjyHifQAckm5pV8=;
 b=b4micpBAh4UXEQSG50FL7llcZLY+ZEiimCOjBD5N073I0W6+Y+FBWAbT
 nfMIy6WG3/tmWTzoyS7m80PQo60PMe+cflvGXg48maHbHftXm4jR5JZ3Q
 5cMmFDzHNlYS/AisZQ3igr12AiejFk6G3SVuJ3WGRvKkPB4MolbX2n+QR
 RucVQgz5fb+gwySs3InuQoiPUs/nuWi2MNWkI7lDaP9WEDtIGM7txfdxm
 vVm2nuhDaPVykIoRjLchVbnRA2uFnv8jJxkW5cWdaTPCCcd9/O9G6MtBm
 ve7Mcc7OBsEMrFxUpg6LjhJyIvmyxa2fjwc7mvaO4MhXZ93DqbMSl9P9x Q==;
X-CSE-ConnectionGUID: xszgO+CMTpKuQ9yiDVL+Eg==
X-CSE-MsgGUID: E6vjfjUiTmq4BET4vaThuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63611626"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63611626"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:39:54 -0700
X-CSE-ConnectionGUID: r3zJVP8sTbyQwDoQRei86g==
X-CSE-MsgGUID: WhJgtS+dREOOUWOpILXpCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="185874424"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.136])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 15:39:50 -0700
Date: Thu, 30 Oct 2025 00:39:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2 15/32] drm/i915/xe3p_lpd: Always apply level-0
 watermark adjustment
Message-ID: <aQKXsx9qEMAljmiN@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-15-10eae6d655b8@intel.com>
 <20251029220800.GF2806654@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251029220800.GF2806654@mdroper-desk1.amr.corp.intel.com>
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

On Wed, Oct 29, 2025 at 03:08:00PM -0700, Matt Roper wrote:
> On Tue, Oct 21, 2025 at 09:28:40PM -0300, Gustavo Sousa wrote:
> > When reading memory latencies for watermark calculations, previous
> > display releases instructed to apply an adjustment of adding a certain
> > value (e.g. 6us) to all levels when the level 0's memory latency read
> > from hardware was zero.
> > 
> > For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
> > add that value to the other levels.  Update adjust_wm_latency()
> > accordingly.
> > 
> > While previously the adjustment was considered a workaround by the
> > driver, for Xe3p_LPD that is part of the formal specification.  So,
> > let's make sure that we differentiate those two in the driver code, even
> > if there is a bit of redundancy with "inc += wm_read_latency(display)"
> > appearing twice in the code.
> > 
> > v2:
> >   - Rebased after addition of prep patch "drm/i915/wm: Reorder
> >     adjust_wm_latency() for Xe3_LPD".
> > 
> > Bspec: 68986, 69126
> > Cc: Matt Atwood <matthew.s.atwood@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 25 +++++++++++++++++--------
> >  1 file changed, 17 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 57260a2a765a..5bb6cdc4ad2c 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3220,15 +3220,24 @@ adjust_wm_latency(struct intel_display *display)
> >  
> >  	sanitize_wm_latency(display);
> >  
> > -	/*
> > -	 * WaWmMemoryReadLatency
> > -	 *
> > -	 * punit doesn't take into account the read latency so we need
> > -	 * to add proper adjustment to each valid level we retrieve
> > -	 * from the punit when level 0 response data is 0us.
> > -	 */
> > -	if (wm[0] == 0)
> > +	if (DISPLAY_VER(display) >= 35) {
> > +		/*
> > +		 * Xe3p asks to ignore wm[0] read from the register and always
> > +		 * use the adjustment that adds the read latency to all valid
> > +		 * latency values.
> > +		 */
> > +		wm[0] = 0;
> >  		inc += wm_read_latency(display);
> > +	} else if (wm[0] == 0) {
> > +		/*
> > +		 * WaWmMemoryReadLatency
> > +		 *
> > +		 * punit doesn't take into account the read latency so we need
> > +		 * to add proper adjustment to each valid level we retrieve
> > +		 * from the punit when level 0 response data is 0us.
> > +		 */
> > +		inc += wm_read_latency(display);
> > +	}
> 
> Wouldn't it be simpler to just have a separate
> 
>         /*
>          * Xe3p and beyond should ignore level 0's reported latency and
>          * always apply WaWmMemoryReadLatency logic.
>          */
>         if (DISPLAY_VER(display) >= 35)
>                 wm[0] = 0;
> 
> and leave the rest of the code unchanged?

That, and I think just stuff it into sanitize_wm_latency() so that
the bogus value gets nuked before we use it for anything.

> 
> Either way, matches the spec so
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> 
> Matt
> 
> >  
> >  	/*
> >  	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
> > 
> > -- 
> > 2.51.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Ville Syrjälä
Intel

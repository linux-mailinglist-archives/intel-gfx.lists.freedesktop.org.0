Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B488E1F1583
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 11:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC37289D7D;
	Mon,  8 Jun 2020 09:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6785689D7D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 09:37:10 +0000 (UTC)
IronPort-SDR: 1sV/HNOpqblAkGikBp7r60R8kJKXFiXAqxZlwUnOnjoB9e/mvx7zwVNpz24g/rdH70vh4iZ5vs
 pUuReEBMEF4A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:37:09 -0700
IronPort-SDR: xk+su21YrIdgT2aWREiswkDkopRu37IAH4WbUKdf5rcalWsPV9o9X7q//ZoRRZfu+1tTxjG9hW
 yoPK5vMYB3UQ==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="446672028"
Received: from bklaps-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 02:37:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy\, Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <20200608083540.GA22223@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200608065552.21728-1-stanislav.lisovskiy@intel.com>
 <87img2x91h.fsf@intel.com> <20200608083540.GA22223@intel.com>
Date: Mon, 08 Jun 2020 12:37:05 +0300
Message-ID: <878sgxyk3i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Remove unneeded hack now
 for CDCLK"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 08 Jun 2020, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> On Mon, Jun 08, 2020 at 11:21:14AM +0300, Jani Nikula wrote:
>> On Mon, 08 Jun 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
>> > This reverts commit 82ea174dc5425d4e85e25d0c4ba961a2e494392a.
>> >
>> 
>> Please explain why. What's going on, why we need the revert.
>> 
>> It's fine to reply here, the commit message can be amended by whoever
>> applies the patch.
>
> Yes, 
>
> Unfortunately according to our recent findings there is still some
> unidentified factor, requiring CDCLK to be set higher - otherwise we 
> still get underruns on some multipipe configurations, despite CDCLK being set
> according to BSpec formula. So getting again back into debug mode to
> indentify the cause, meanwhile setting CDCLK=Pixel rate back in order
> to remove regression in 10% of the cases due to FIFO underruns.

Thanks, pushed.

BR,
Jani.


>
> Stan 
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> > Fixes: cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
>> >  1 file changed, 12 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > index 08468b121d02..45f7f33d1144 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> > @@ -2071,6 +2071,18 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>> >  	/* Account for additional needs from the planes */
>> >  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>> >  
>> > +	/*
>> > +	 * HACK. Currently for TGL platforms we calculate
>> > +	 * min_cdclk initially based on pixel_rate divided
>> > +	 * by 2, accounting for also plane requirements,
>> > +	 * however in some cases the lowest possible CDCLK
>> > +	 * doesn't work and causing the underruns.
>> > +	 * Explicitly stating here that this seems to be currently
>> > +	 * rather a Hack, than final solution.
>> > +	 */
>> > +	if (IS_TIGERLAKE(dev_priv))
>> > +		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
>> > +
>> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>> >  		drm_dbg_kms(&dev_priv->drm,
>> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

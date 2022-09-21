Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFC95BFC41
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 12:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A2B10E3C1;
	Wed, 21 Sep 2022 10:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E5710E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 10:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663755842; x=1695291842;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qDWk86dn1qc/ospRbyEfsHSWl+DFwYemlYsqtjj2H0A=;
 b=IvnvozC4nQozmMLpV6z8gIPtUuDeyoIoZNk66WnPGMb2Bxoa4VJNW4kk
 vmK6EIbGSmmEZVge+bZS453hFfW0jzNXqVbvNWmqMmEfPwoVLGO1LX1ac
 spr2rzb80KCDn7s/K88HsmiZjNaLUH1tdU3Frp/4PYI0eP36cJgFC86ta
 eR5VFJDCtVXDSG47D9PTtvAkI9PqAY8uuAG4gD7R9W6S1deXh9ybq/tWl
 jFPcFlqBB0EtCcCwKQ9fZYq4xHXTjnJvPDix/cY8rwMQygUOe2yd9dpV2
 WowTxSJS0qoFzbZt01/mw1Zfq7do1SzE55lWB3uHEm2sOyzqF06HMqbmu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298680789"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="298680789"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 03:24:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="681713886"
Received: from skam-mobl.amr.corp.intel.com (HELO localhost) ([10.252.35.114])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2022 03:24:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
In-Reply-To: <20220920175601.d22uiwycs46zhkbf@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com> <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
 <20220920175601.d22uiwycs46zhkbf@ldmartin-desk2.lan>
Date: Wed, 21 Sep 2022 13:23:43 +0300
Message-ID: <87r1056n68.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Tue, 20 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Sep 20, 2022 at 02:04:33PM -0300, Gustavo Sousa wrote:
>>Hi, Jani.
>>
>>On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
>>> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> > Make the code more readable, which will be more apparent as new
>>> > platforms with different hotplug inversion needs are added.
>>> >
>>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> > ---
>>> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
>>> >  1 file changed, 16 insertions(+), 9 deletions(-)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>>> > index de06f293e173..c53d21ae197f 100644
>>> > --- a/drivers/gpu/drm/i915/i915_irq.c
>>> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>>> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>>> >  	spin_unlock_irq(&dev_priv->irq_lock);
>>> >  }
>>> >
>>> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
>>> > +{
>>> > +	u32 invert_bits;
>>> > +
>>> > +	if (HAS_PCH_DG1(dev_priv))
>>> > +		invert_bits = INVERT_DDIA_HPD |
>>> > +			      INVERT_DDIB_HPD |
>>> > +			      INVERT_DDIC_HPD |
>>> > +			      INVERT_DDID_HPD;
>>>
>>> Nitpick, the indentation will be off compared to automated indentation.
>>
>>What do you mean by automated indentation?
>>
>>>
>>> > +	else
>>> > +		return;
>>> > +
>>> > +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
>>> > +}
>>> > +
>>> >  static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>>> >  			       enum hpd_pin pin)
>>> >  {
>>> > @@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>>> >
>>> >  static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	u32 val;
>>> > -
>>> > -	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
>>> > -	val |= (INVERT_DDIA_HPD |
>>> > -		INVERT_DDIB_HPD |
>>> > -		INVERT_DDIC_HPD |
>>> > -		INVERT_DDID_HPD);
>>> > -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
>>> > -
>>> > +	setup_hotplug_inversion(dev_priv);
>>>
>>> Since you're already in a platform specific function here, seems a bit
>>> odd to call a new generic function that needs to have another if ladder
>>> platform check. What are we gaining here? The end result is
>>> de-duplicating just one line of intel_uncore_rmw(). I'm not convinced.
>>
>>It is true that the proposed refactor repeats a platform check, but the proposed
>>refactor has its benefits. As more platforms with hotplug inversion needs are
>>added (e.g. MTL), we will have a common place for the logic of hotplug
>>inversion. That arguably makes the code more readable and makes future refactors
>>easier when we need split a function that has become too complex due to platform
>>checks.
>>
>>To make that last point clearer, I am quoting Lucas' (copied here as well)
>>comment (which was what convinced me) from a discussion regarding the advantage
>>of using such a helper:
>>
>>    that is what helpers are for, so you don't have to open code it in every
>>    platform-fork of the function that needs it. See how the various
>>    "Sequences to initialize display" are done in the driver... When we are
>>    extending it to a future platform, if the change is small enough we just
>>    add e few if/else in the same function. But it doesn't take too long for
>>    those functions to become unreadable if there are several branches the
>>    code path may take.  So then we "fork" the function for a new platform,
>>    but reuse the helpers doing the individual steps.
>
> the missing information here is that there are changes in the pipeline
> for platforms that have different bits to be inverted, or none at
> all, with a different register to program. Adding the if/else in this
> function seems unrelated churn.
>
> Another possibility would be to just let the caller handle the if/else
> decision, passing the bits (and possibly register) to invert. The noise
> in xxx_hpd_irq_setup() function may be avoid by
>
> #define INVERT_DII_HPD		(INVERT_DDIA_HPD | INVERT_DDIB_HPD | INVERT_DDIC_HPD | INVERT_DDID_HPD)
> #define XXX_INVERT_DII_HPD	(...)
>
> Third possibility since the function is already very small is to just go
> ahead and use another _setup() for the next platforms.

IMO if you already have platform specific functions, it can get
confusing if you call generic helpers that again spread out to platform
specific functions, possibly with different conditions than the first
one. We've had a bunch of those where you eventually realize there's
conditions in the helper that never happen.

I'd probably just add small *platform specific* hpd invert
functions. dg1_hpd_invert() and mtl_hpd_invert() etc.

Compare with *_hpd_detection_setup(), and wonder what that would look
like if it were a generic helper. Pretty bad, huh?

Also note how bxt actually handles hpd invert within
bxt_hpd_detection_setup().


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

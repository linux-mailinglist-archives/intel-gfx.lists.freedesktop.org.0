Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 051A05BFBDA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 11:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC1610E2F2;
	Wed, 21 Sep 2022 09:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049FF10E2F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 09:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663754381; x=1695290381;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MxSteWrytfNVKzq2oyU3PFSFxTQVNythZYFKHAPAVo0=;
 b=moWPjltgAjl79pYJHW7wmFyIl9+EPLYpfYNTIl306ZPNcs8I0hRMjoYb
 vsRGZw7iN9x21fR0YPw7TooMJl1Rm+8h99ThOKGLwI7a9YmlEDZQI5SA1
 C16KTPjKHlrYTw6o+OzthRETWZzMRJPG0zFfd+wW/9bitr8jXn3bWiANY
 uARqQ44SQwznV9zRshJeOEr82n9dhDp3Z3in4d1Uw8ODwmjnqGxQheN/R
 LNTIzvkgaagFfOW0TiZZSLRqnpdcjND8RfiZKBvv79Gdd9TFl/ZQCvk9P
 xK2FKbruGE8TwJZ3ZQ5nrpfDOlie3uhvG1IpM4IfCF3N9425CfOWhY4a6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="280331047"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="280331047"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 02:59:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="948080005"
Received: from skam-mobl.amr.corp.intel.com (HELO localhost) ([10.252.35.114])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2022 02:59:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
In-Reply-To: <20220920162742.3x6z2z6p24bkea6x@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <20220920070136.nyhompdd6yvpa65n@ldmartin-desk2.lan>
 <20220920162742.3x6z2z6p24bkea6x@gjsousa-mobl2>
Date: Wed, 21 Sep 2022 12:59:22 +0300
Message-ID: <87v8ph6oat.fsf@intel.com>
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

On Tue, 20 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> On Tue, Sep 20, 2022 at 12:01:36AM -0700, Lucas De Marchi wrote:
>> On Mon, Sep 19, 2022 at 11:56:59AM -0300, Gustavo Sousa wrote:
>> > Make the code more readable, which will be more apparent as new
>> > platforms with different hotplug inversion needs are added.
>> > 
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
>> > 1 file changed, 16 insertions(+), 9 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> > index de06f293e173..c53d21ae197f 100644
>> > --- a/drivers/gpu/drm/i915/i915_irq.c
>> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>> > 	spin_unlock_irq(&dev_priv->irq_lock);
>> > }
>> > 
>> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
>> 
>> new users of drm_i915_private should use "i915" as variable name rather
>> than dev_priv.
>
> Thanks. I will update this.
>
> Is there any documentation where we can find information like this?

WIP:

https://gitlab.freedesktop.org/jani/i915-check/-/blob/main/i915-style-guide.rst

BR,
Jani.

>
>> 
>> other than that,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> 
>> 
>> Lucas De Marchi
>> 
>> > +{
>> > +	u32 invert_bits;
>> > +
>> > +	if (HAS_PCH_DG1(dev_priv))
>> > +		invert_bits = INVERT_DDIA_HPD |
>> > +			      INVERT_DDIB_HPD |
>> > +			      INVERT_DDIC_HPD |
>> > +			      INVERT_DDID_HPD;
>> > +	else
>> > +		return;
>> > +
>> > +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
>> > +}
>> > +
>> > static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>> > 			       enum hpd_pin pin)
>> > {
>> > @@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>> > 
>> > static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> > {
>> > -	u32 val;
>> > -
>> > -	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
>> > -	val |= (INVERT_DDIA_HPD |
>> > -		INVERT_DDIB_HPD |
>> > -		INVERT_DDIC_HPD |
>> > -		INVERT_DDID_HPD);
>> > -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
>> > -
>> > +	setup_hotplug_inversion(dev_priv);
>> > 	icp_hpd_irq_setup(dev_priv);
>> > }
>> > 
>> > -- 
>> > 2.37.3
>> > 

-- 
Jani Nikula, Intel Open Source Graphics Center

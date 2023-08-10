Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFDC777836
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 14:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9DF10E514;
	Thu, 10 Aug 2023 12:24:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511D010E51F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 12:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691670247; x=1723206247;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g2nqWOUyNIxxpz/0EgFNSy2S+sb6Peo79QKpfnQm3ek=;
 b=JJ3FFSFPULN6MT7sUSgYxhLVYpgYMjLFbZ0H9qLy19uKSTp4Fluras/G
 Kq6uI1HwxCbofE3766d9tlc/0fJneZ9DdQt0aOdOeXHAx/1E0+uiE5qz8
 xExCrseprcLhs5BlpPaycDomc6KdqJovrz8X5gZiULl8whGDWk1UmgeE7
 TvB9w8jZ13EDEM1q63ggbiFtofIdvYd9Fs+7nJKVq0jrB7AAn9DexFBhn
 fvS2+ryJVwwX/OSgF1+J5d50GTEIb5mk371K6O2yRJaPqbsULzoDHVobu
 alGjImC2oG5kear2RI5ZFQ62cLHIYberMi/aJFnHQKCuEf5pOXT7hk4mQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="356350241"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="356350241"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 05:24:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="978776435"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="978776435"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 05:24:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZNKuZ7Q9xhg6g8uB@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1691509966.git.jani.nikula@intel.com>
 <fe51744aec9e2f465caf0d699b8a15591859f89e.1691509966.git.jani.nikula@intel.com>
 <ZNKuZ7Q9xhg6g8uB@intel.com>
Date: Thu, 10 Aug 2023 15:24:02 +0300
Message-ID: <87v8dnqe59.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/irq: move all PCH irq
 postinstall calls to display code
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

On Tue, 08 Aug 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Aug 08, 2023 at 06:53:31PM +0300, Jani Nikula wrote:
>> Unify on making the calls from display code. Need to add an if ladder in
>> gen8_de_irq_postinstall() for now, but the function looks like it could
>> be overall be better split by platform. Something for the future.
>> 
>> The display version check for mtp seems a bit suspect, but this matches
>> current code.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 19 ++++++++++++-------
>>  .../gpu/drm/i915/display/intel_display_irq.h  |  2 --
>>  drivers/gpu/drm/i915/i915_irq.c               |  8 --------
>>  3 files changed, 12 insertions(+), 17 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index a697e0b32c34..62ce55475554 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1537,7 +1537,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>>   * to avoid races with the irq handler, assuming we have MSI. Shared legacy
>>   * interrupts could still race.
>>   */
>> -void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>> +static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_uncore *uncore = &dev_priv->uncore;
>>  	u32 mask;
>> @@ -1624,6 +1624,9 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>  		      display_mask | extra_mask);
>>  }
>>  
>> +static void mtp_irq_postinstall(struct drm_i915_private *i915);
>> +static void icp_irq_postinstall(struct drm_i915_private *i915);
>
> thanks for doing that... made review easier, although this patch almost got me
> confused.
>
> maybe worth a follow up to change the functions placement and void this
> extra declaration and also ensure they are all together?
>
> anyway,
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed the series to din.

BR,
Jani.

>
>> +
>>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_uncore *uncore = &dev_priv->uncore;
>> @@ -1641,6 +1644,13 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>  	if (!HAS_DISPLAY(dev_priv))
>>  		return;
>>  
>> +	if (DISPLAY_VER(dev_priv) >= 14)
>> +		mtp_irq_postinstall(dev_priv);
>> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>> +		icp_irq_postinstall(dev_priv);
>> +	else if (HAS_PCH_SPLIT(dev_priv))
>> +		ibx_irq_postinstall(dev_priv);
>> +
>>  	if (DISPLAY_VER(dev_priv) <= 10)
>>  		de_misc_masked |= GEN8_DE_MISC_GSE;
>>  
>> @@ -1721,7 +1731,7 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
>>  	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
>>  }
>>  
>> -void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>> +static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_uncore *uncore = &dev_priv->uncore;
>>  	u32 mask = SDE_GMBUS_ICP;
>> @@ -1745,11 +1755,6 @@ void dg1_de_irq_postinstall(struct drm_i915_private *i915)
>>  	if (!HAS_DISPLAY(i915))
>>  		return;
>>  
>> -	if (DISPLAY_VER(i915) >= 14)
>> -		mtp_irq_postinstall(i915);
>> -	else
>> -		icp_irq_postinstall(i915);
>> -
>>  	gen8_de_irq_postinstall(i915);
>>  	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
>>  			   GEN11_DISPLAY_IRQ_ENABLE);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
>> index 2ccc3e53cec3..2a090dd6abd7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>> @@ -58,9 +58,7 @@ void vlv_display_irq_reset(struct drm_i915_private *i915);
>>  void gen8_display_irq_reset(struct drm_i915_private *i915);
>>  void gen11_display_irq_reset(struct drm_i915_private *i915);
>>  
>> -void ibx_irq_postinstall(struct drm_i915_private *i915);
>>  void vlv_display_irq_postinstall(struct drm_i915_private *i915);
>> -void icp_irq_postinstall(struct drm_i915_private *i915);
>>  void ilk_de_irq_postinstall(struct drm_i915_private *i915);
>>  void gen8_de_irq_postinstall(struct drm_i915_private *i915);
>>  void gen11_de_irq_postinstall(struct drm_i915_private *i915);
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index d63f79259637..1bfcfbe6e30b 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -792,11 +792,6 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
>>  
>>  static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>> -		icp_irq_postinstall(dev_priv);
>> -	else if (HAS_PCH_SPLIT(dev_priv))
>> -		ibx_irq_postinstall(dev_priv);
>> -
>>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
>>  	gen8_de_irq_postinstall(dev_priv);
>>  
>> @@ -809,9 +804,6 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>>  	struct intel_uncore *uncore = gt->uncore;
>>  	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
>>  
>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>> -		icp_irq_postinstall(dev_priv);
>> -
>>  	gen11_gt_irq_postinstall(gt);
>>  	gen11_de_irq_postinstall(dev_priv);
>>  
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center

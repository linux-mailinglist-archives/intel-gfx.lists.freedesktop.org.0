Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE7E70285F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 11:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B7510E18A;
	Mon, 15 May 2023 09:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E758610E18B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 09:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684142608; x=1715678608;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Iz4ryu0BItyfkO824Lvj0NdkjgAfrqSiI8mHjLU9Fig=;
 b=FC6ulJF2lPYazRiQA/zAj6krxiTlW8zWsF6NK480BNy45161/DUcsNOH
 4a7cCFDPfOZygXUDpBQubJtStfLMnLwRkBtnisKxgJLRYg6YwtEWK1VtM
 pEh2CaNcf8H+q9PYj4uzPHO8W/pw8C8ru2n7N06SikugL+vXMeUkxUmQ/
 CBw6gr6thUiZTa0ggj2cCoZRCZkko6pc0abSHPyUnHAQY2FU2yMFenv/x
 96oTgZPPapC49QIBwXYsLznIXENSSPBGC5YR0Qt5kYFvQiUe3vZ3jDLEF
 E0crAhioaU+pHOC3weG58wuSyfqFa77YGl+VJUSlA1Ue5nIymVKuZ43lW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="348648302"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="348648302"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:23:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="790589906"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="790589906"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 02:23:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZF5HpaE2MTwDguRz@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230512110444.1448231-1-jani.nikula@intel.com>
 <ZF5HpaE2MTwDguRz@rdvivi-mobl4>
Date: Mon, 15 May 2023 12:23:18 +0300
Message-ID: <87y1lqhrsp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dpll: drop a useless
 I915_STATE_WARN_ON()
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

On Fri, 12 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Fri, May 12, 2023 at 02:04:41PM +0300, Jani Nikula wrote:
>> In general, we don't do assertions that a function gets called on the
>> right platforms, and if we did, it should not be a state warn.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.


>> ---
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 --
>>  1 file changed, 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> index ed372d227aa7..936b8de9e439 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> @@ -464,8 +464,6 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
>>  	u32 val;
>>  	bool enabled;
>>  
>> -	I915_STATE_WARN_ON(!(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
>> -
>>  	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
>>  	enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
>>  			    DREF_SUPERSPREAD_SOURCE_MASK));
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 619F4509058
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 21:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CACB10EAE3;
	Wed, 20 Apr 2022 19:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC2010EAE3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 19:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650482492; x=1682018492;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=WDIAlASwROBHfUuj9NlHbbZZbFY4bKWfBvj1VMHp3tY=;
 b=aPlYcuBCMYMSMyrGZDiEYCsJq1I8Ab9Tn3EHavSUSYblqV07kMn/IBOr
 +NkuFebiazWZuCHpAujH8jf3bf8fI7IWgX/o/3wgotKR6GSkCtCwiyTNt
 ZV4nqrnsciWKr2vBwsTTpK1n3Nl9VG6KwgukThxaaMAYPvxZowa0z8TeK
 eI02NQaUjd85lPxLsE1USeo5Uyrg/kP8fhsn3YHpxZ64cSStJZOaZf48L
 9vXyEQvd3QYMv9DFLb86XzLU4hXCkYt56cASOUyq08HgTFc+E70Ic4JIJ
 MWNMd1frr7M7QN0xAMloHNepc/zyyjX1MZrLBXCFOQf4EjAn82qxHZyCV Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="350585034"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="350585034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:21:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="576759399"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:21:23 -0700
Date: Wed, 20 Apr 2022 22:21:19 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YmBdL2A3xOumaL4Z@ideak-desk.fi.intel.com>
References: <20220420190921.419345-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420190921.419345-1-rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable DC5 before going to DC9
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 20, 2022 at 03:09:21PM -0400, Rodrigo Vivi wrote:
> According to BSPec:
> 	Sequence to Allow DC9:
> 		1. Follow Sequence to Disallow DC5.
> 
> which is:
> 	Sequence to Disallow DC5 and DC6
> 		Set DC_STATE_EN Dynamic DC State Enable = "Disable".
> 
> I understand that we haven't had any issue so far. But since
> DC9 is a software thing, it is better to disable DC5 before
> to avoid any conflict. And respect the spec to avoid potential
> future issues.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6a5695008f7c..b3cf5182044f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -883,6 +883,9 @@ static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
>  {
>  	assert_can_enable_dc9(dev_priv);
>  
> +	/* Disable DC5 before enabling DC9 */
> +	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);

For DC9 DMC should be disabled already, along with DC states and other
dependencies like power well 1, etc. That happens in
bxt/icl_display_core_uninit().

> +
>  	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
>  	/*
>  	 * Power sequencer reset is not needed on
> -- 
> 2.34.1
> 

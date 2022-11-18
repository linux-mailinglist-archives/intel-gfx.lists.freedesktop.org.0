Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0024162FED8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 21:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D090710E241;
	Fri, 18 Nov 2022 20:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A238310E241;
 Fri, 18 Nov 2022 20:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668803390; x=1700339390;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yVZaRfu0PHQWaVrZjL9yfrCcnFVBQ8mjOJRJCM1r4Kc=;
 b=Iz3EikAy8kjSLe2OV3F2nFrkEMZ+KAfHRjJYkmm2nBa763MtAKBpo1R8
 2ZrRiW1uid+iUbtOmIuYeyYlQOGyzBNWSf8uJdCUvAdtwRasoaQWTw0Ca
 9STr3TcVz/K8emmdfKkBx9RauicxYLBYCz5qNg6AffY/modELpvTbgIIX
 AMpXO08Vv2Hy1crGIRQTAgjZXrdNs6OC6IOGZiVNJvXLJrHMJUtO68kel
 NCkuP7tR/3ildI7hn0RV4InaFtGMfF5K3rggVsm9qLHrigovoDeyQQpqp
 A2rqoCiJQCyaEB1RgoE8ktnQqKGa1eWKHl3y92gCSLvrnciQmEVmWz+9o g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="311931990"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="311931990"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 12:29:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="746134423"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="746134423"
Received: from richieox-mobl1.ger.corp.intel.com (HELO [10.213.209.178])
 ([10.213.209.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 12:29:48 -0800
Message-ID: <651d4399-8ec5-5c75-a634-6ea3ed0f0231@linux.intel.com>
Date: Fri, 18 Nov 2022 20:29:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221109001328.732000-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221109001328.732000-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Drop force_probe requirement
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
Cc: dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/11/2022 00:13, Matt Roper wrote:
> DG2 has been very usable for a while now, and all of the uapi changes
> related to fundamental platform usage have been finalized.  Recent CI
> results have also been healthy, so we're ready to drop the force_probe
> requirement and enable the platform by default.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
> 
> There was some recent offline discussion questioning whether we'd fully
> identified the root cause of some historic CI failures, or whether it
> was possible we might still have a bug lurking somewhere causing
> sporadic failures.  Let's use this patch to centralize discussion about
> any remaining concerns and make sure they're addressed before we apply
> this.

The two main issues were analysed and I am satisfied that they are 
either very sporadic and with impact limited to i915/DG2, or sporadic 
with impact limited to a small subset of DG2 functionality. Furthermore, 
there are already fixes for both which seem most probably will be merged 
inside the 6.2 fixes window. Therefore I agree that we can proceed with 
dropping the force_probe protection. I also understand our upstream 
maintainer has acked the plan to finish up in the fixes window.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

>   drivers/gpu/drm/i915/i915_pci.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 211913be40ce..0866300243aa 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1078,7 +1078,6 @@ static const struct intel_device_info dg2_info = {
>   	XE_LPD_FEATURES,
>   	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>   			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> -	.require_force_probe = 1,
>   };
>   
>   static const struct intel_device_info ats_m_info = {

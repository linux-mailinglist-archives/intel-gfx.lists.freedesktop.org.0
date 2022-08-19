Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF69599B43
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 13:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E0A10E3FA;
	Fri, 19 Aug 2022 11:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2349D10E7CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 11:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910018; x=1692446018;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tP/EDepom5nt10+TkvK8KnP/Z6f3lyt0kG18Dthc+3g=;
 b=aWJPG5aQG1kg4LAtaUB2scAGak6HY0BQYtTE9Aaf5dO+v5mRASaiDOPr
 zvWHK5Xq5bEcLIyc/mOIBugKfaNVDAG5lNIrtySaSjgnj2e3qmUk03BJP
 60/LC7+bV9M94H4CfNO7xfpF6/XLEGKORdheXxE6QaEh4MCGl4T9uAV7+
 ltSsC/awhK5SgT1tMMPSPWIjfFuWavTFre8nIp7ZEjowQCwAZqQ3Lx3tJ
 Y2IH1d9ugR1q5XPkWb+x0h0s4GF2tkW/PkJWAaLWeeP4IgcdXZyOHbwMI
 HSNPRDMpcnXbTi8qRZvx3aFDCDx0FhtUYYdG9DNS7hRTOO/j6t+J3ShXF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="291753316"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="291753316"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 04:53:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="936194922"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.30])
 ([10.213.9.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 04:53:35 -0700
Message-ID: <3aeae2e6-ebe3-5241-bfa1-ee36a0d5ec94@intel.com>
Date: Fri, 19 Aug 2022 13:53:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Juston Li <justonli@chromium.org>, intel-gfx@lists.freedesktop.org
References: <20220818174205.2412730-1-justonli@chromium.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220818174205.2412730-1-justonli@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18.08.2022 19:42, Juston Li wrote:
> pxp will not start correctly until after mei_pxp bind completes and
> intel_pxp_init_hw() is called.
> Wait for the bind to complete before proceeding with startup.
> 
> This fixes a race condition during bootup where we observed a small
> window for pxp commands to be sent, starting pxp before mei_pxp bind
> completed.
> 
> Changes since v2:
> - wait for pxp_component to bind instead of returning -EAGAIN (Daniele)
> 
> Changes since v1:
> - check pxp_component instead of pxp_component_added (Daniele)
> - pxp_component needs tee_mutex (Daniele)
> - return -EAGAIN so caller knows to retry (Daniele)
> 
> Signed-off-by: Juston Li <justonli@chromium.org>

In typical usage of component framework driver postpones initialization 
till component is bound. In such case checking/waiting for component as 
in this patch is not necessary and the code is more straightforward.
I wonder how it behaves on component unbind.

Anyway:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp.c | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 15311eaed848..17109c513259 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -176,6 +176,18 @@ static void pxp_queue_termination(struct intel_pxp *pxp)
>   	spin_unlock_irq(&gt->irq_lock);
>   }
>   
> +static bool pxp_component_bound(struct intel_pxp *pxp)
> +{
> +	bool bound = false;
> +
> +	mutex_lock(&pxp->tee_mutex);
> +	if (pxp->pxp_component)
> +		bound = true;
> +	mutex_unlock(&pxp->tee_mutex);
> +
> +	return bound;
> +}
> +
>   /*
>    * the arb session is restarted from the irq work when we receive the
>    * termination completion interrupt
> @@ -187,6 +199,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
>   	if (!intel_pxp_is_enabled(pxp))
>   		return -ENODEV;
>   
> +	if (wait_for(pxp_component_bound(pxp), 250))
> +		return -ENXIO;
> +
>   	mutex_lock(&pxp->arb_mutex);
>   
>   	if (pxp->arb_is_valid)


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D451501C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 18:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B72610E68A;
	Fri, 29 Apr 2022 16:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C326110E68A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 16:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651248044; x=1682784044;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FSRuPvM38YYLMGyAqahRup5DZLgz3sKcHdsmS0CF79A=;
 b=FypwF/jHzi+EQJum129zJeHMjox95nGNRh/qQuFyQroRMQH+X9EovpqA
 UrBzhgCPfw23F2OKOmcbkQhJJZ+w4qaz7uMNsnQmysU424vviUxJqZ1cv
 viq69AknXC0LOGAFAw44n1qo9tbpGWySt/IDm1Cc6HDdxvvu/RM8aJ2no
 hT/GgFDiGa4nwfeNTR28pyCPLuWu8arDLPQhy9JtrrZkmikW9wI5dAK7x
 uhDPgjqSiInTtRAhB8n+qq5Ji9+25Rs7vLDpTFjScLEXfdjveM3fPT9mf
 rmWRNtfpXLbHAEKY09FtvvMC/hTOpjMDWnTaNu7gpLuVy2NNt04PWSH5C Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="264270821"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="264270821"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 09:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="566195202"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 29 Apr 2022 09:00:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Apr 2022 19:00:40 +0300
Date: Fri, 29 Apr 2022 19:00:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YmwLqETt7MXafIRg@intel.com>
References: <20220428211058.399630-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220428211058.399630-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Do not schedule DRRS
 work thread when it is not active
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

On Thu, Apr 28, 2022 at 02:10:56PM -0700, José Roberto de Souza wrote:
> Frontbuffer updates were scheduling the execution of DRRS work thread
> even if DRRS is not active.
> There was no issues with it because intel_drrs_downclock_work() checks
> if DRRS is active but there is no reason to keep scheduling this work
> thread and wasting CPU time.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 166caf293f7bc..04bc296761be0 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -236,6 +236,11 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
>  		else
>  			crtc->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
>  
> +		if (!intel_drrs_is_active(crtc)) {
> +			mutex_unlock(&crtc->drrs.mutex);
> +			continue;
> +		}

Should be impossible due to crtc->drrs.frontbuffer_bits==0.

> +
>  		/* flush/invalidate means busy screen hence upclock */
>  		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
>  
> -- 
> 2.36.0

-- 
Ville Syrjälä
Intel

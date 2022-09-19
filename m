Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7795BC54F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 11:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613A310E5E2;
	Mon, 19 Sep 2022 09:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A85910E5E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 09:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663579602; x=1695115602;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=z6f3KzpQmooBKLmx5xMc3InY9Gbl2t7OYId5KYkfmf8=;
 b=LeZ1FLJE+nMX05SRn/6QBNNfoo3lM/zgR+gB/6F41YiU/JfBAF8a2rbl
 EPsIomRfq4U5tmsrNdC4WmEv8RJzIapiScDPv2Ky1CY6omZQGwB16kE20
 UZgtZ1MxKuBp4ccS+oHGxAyvkr6qcKjQl7hhp+Zb8Dhx4SBS0Dv4Ng7ii
 5H5uZZkv3X9/f++LlXh1NFuV4edxZLEs7B2KzdoWlMEGRjnhnygIZs7b4
 Bo+drZBmsEmVh920hkrBxzxjW6FNLWKN18k5EXamwkB9w6LJkDRdlSZJW
 aynn0RYNx7bwlIQRYHmudmEEiak7QBpom3tXFYiRmSYr0h+SKXTpflurI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="385640857"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="385640857"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:26:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="618418543"
Received: from jjohns2-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.205])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 02:26:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220917004404.414981-3-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-3-anusha.srivatsa@intel.com>
Date: Mon, 19 Sep 2022 12:26:19 +0300
Message-ID: <87y1ufpves.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display: add cdclk action
 struct to cdclk_config
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

On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> The struct has the action to be performed - squash, crawl
> or modeset and the corresponding cdclk which is the desired
> cdclk. This is the structure that gets populated during
> atomic check once it is determined what the cdclk change looks
> like
>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index c674879a84a5..3869f93e8ad2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -11,13 +11,27 @@
>  #include "intel_display.h"
>  #include "intel_global_state.h"
>  
> +#define	MAX_CDCLK_ACTIONS	1

Okay, this review is just nitpicks, but they'll need to get fixed
eventually so here goes.

No tab after #define.

> +
>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  
> +enum cdclk_sequence {

Needs to be named intel_ something.

> +	CDCLK_INVALID_ACTION = -1,
> +
> +	CDCLK_SQUASH_ONLY = 0,
> +	CDCLK_CRAWL_ONLY,
> +	CDCLK_LEGACY,
> +};
> +
>  struct intel_cdclk_config {
>  	unsigned int cdclk, vco, ref, bypass;
>  	u8 voltage_level;
> +	struct cdclk_step {

Needs to be named intel_ something.

Since this is used independently, I'd prefer it to be defined outside of
struct intel_cdclk_config.

> +		enum cdclk_sequence action;
> +		u32 cdclk;
> +	} steps[MAX_CDCLK_ACTIONS];
>  };
>  
>  struct intel_cdclk_state {

-- 
Jani Nikula, Intel Open Source Graphics Center

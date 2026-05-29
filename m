Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJxFF86UGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:29:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 103FC602DFD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D536510FF31;
	Fri, 29 May 2026 13:29:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwoVQvmw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53CCF10FF2F;
 Fri, 29 May 2026 13:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780061384; x=1811597384;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=71sOesqiaHj4JhCD+9Hp64zuCWJ5C+w+x7JVSPreLQ8=;
 b=MwoVQvmwWJkTAmJmULcHbTWiJhCggL1nVS3mjjhjWcGTShepk/9s60Vg
 BcN5JSPlA8E6diRO0CUn5ISmA33A3q8uuaL05WPbsOvZ1Tbm66MObpx9i
 NADf/IhgHdfZ7+3w7ThXMk2bKhbqLkfFwm0wPBaXjlTQDDVvKX0rWifch
 ub1R5a5AT4eoaPbXnuWDRmerCTo9Q2aMU3u3G3iHMMxJaT8urwdEoqgmQ
 vLhWs+5qZy4iBj7wLoLpgbgqT1G/Qt7PswKhoouAVWRo0pOH1SDacNOsx
 F1yGvk1brbYdChvlQrf0bXvABW6EoWSiFp9hxGQcU3UTZQAEeB8APDhvw A==;
X-CSE-ConnectionGUID: kO2vYPQcQ1CCXGERuXMN8A==
X-CSE-MsgGUID: YW+AF//0RAKyFfa+rCcCgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80812827"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80812827"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:29:44 -0700
X-CSE-ConnectionGUID: mL1xh5hPRmijtE9Oggpl3g==
X-CSE-MsgGUID: V4M8DU/5R1GWyj/iv9P7uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="273165205"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:29:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nikita Zhandarovich <n.zhandarovich@fintech.ru>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Nikita Zhandarovich <n.zhandarovich@fintech.ru>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org
Subject: Re: [PATCH] drm/i915/edp: Check supported link rates DPCD read
In-Reply-To: <20260529120921.1633346-1-n.zhandarovich@fintech.ru>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260529120921.1633346-1-n.zhandarovich@fintech.ru>
Date: Fri, 29 May 2026 16:29:37 +0300
Message-ID: <f1e1c04a873c00cbc58729e09531d932c793dc00@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[fintech.ru,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,linuxtesting.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linuxtesting.org:url,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 103FC602DFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026, Nikita Zhandarovich <n.zhandarovich@fintech.ru> wrote:
> intel_edp_set_sink_rates() reads DP_SUPPORTED_LINK_RATES into a local
> stack array and then parses the array unconditionally. If the read
> fails or returns less data than requested, the array contents are not
> valid and may result in bogus sink link rates being used.
>
> Check that the full DPCD block was read before parsing it. If not, fall
> back to the default sink rate handling.
>
> Found by Linux Verification Center (linuxtesting.org) with static
> analysis tool SVACE.

Thanks for the patch.

>
> Fixes: 68f357cb7347 ("drm/i915/dp: generate and cache sink rate array for all DP, not just eDP 1.4")
> Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ef2a0043cda..b6650a12ca54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4678,10 +4678,16 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  
>  	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>  		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
> +		ssize_t ret;
>  		int i;
>  
> -		drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
> -				 sink_rates, sizeof(sink_rates));
> +		ret = drm_dp_dpcd_read(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
> +				       sink_rates, sizeof(sink_rates));

Please switch to drm_dp_dpcd_read_data(). It'll return < 0 for errors,
and is easier to deal with.

> +		if (ret != sizeof(sink_rates)) {
> +			drm_dbg_kms(display->drm,
> +				    "Unable to read eDP supported link rates, using default rates\n");
> +			goto use_default_rates;

I think I'd avoid the goto and use:

	memset(sink_rates, 0, sizeof(sink_rates));

BR,
Jani.

> +		}
>  
>  		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>  			int rate;
> @@ -4715,6 +4721,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
>  	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
>  	 */
> +use_default_rates:
>  	if (intel_dp->num_sink_rates)
>  		intel_dp->use_rate_select = true;
>  	else

-- 
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tjjjEMiuOWoKwQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:53:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 945DA6B28AA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:53:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SU1B0I6s;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A2610E829;
	Mon, 22 Jun 2026 21:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B24C10E0D5;
 Mon, 22 Jun 2026 21:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782165187; x=1813701187;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=9a+BWkdIe5Fv3VHYBbFOtVx1WUYtixO3tIPiAynTq2U=;
 b=SU1B0I6sXDwbljjrz52swxlzR+d7Ao+LxL3ZNYjZK5ip1pyY8j6QtKLX
 QL2b9OmBdQWZ93Nktvf4XEUpPQZCLhSEBMv49PzM1IMs/MZJE3GjTB7Eq
 dB3Z3ptFH4CqHoT25jb8JE+cwFSjZOveLkr6WJg8z2aYxOsHWLP1OnRQG
 q+MyJYNd6vDb0fThvIREANd3qRbjp9ScIqr78pJ+yQv+o9Nd0rZqKxVPR
 K0Y8IW7/3DzK75fYPUg42M5b0omvv5zxzpe9Am5Tj7Ix4lea7x/WgIUsN
 rbIZYN4h60xF7sCitwA/zkRiDvD8EwbDuuLkAiJqigGrU45XOU8EYxKv3 A==;
X-CSE-ConnectionGUID: mVYon41iQoWu3iRWES/zkQ==
X-CSE-MsgGUID: h9YBPaC7RL677PvMC92p/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82774386"
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="82774386"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:53:07 -0700
X-CSE-ConnectionGUID: Z9PMiDZDSiGKIWg8jmT0bQ==
X-CSE-MsgGUID: aNFG+VRuQJaOz4mSWutQOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="246425470"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:53:06 -0700
Date: Mon, 22 Jun 2026 23:53:04 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Imre Deak <imre.deak@intel.com>
cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 01/28] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
In-Reply-To: <20260616200849.3534628-2-imre.deak@intel.com>
Message-ID: <dd3dd224-1be3-f921-5038-1bb6fe587732@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1589200003-1782157685=:605841"
Content-ID: <5da133fd-656b-155a-141e-d3bcabf250b5@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 945DA6B28AA

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1589200003-1782157685=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <810bcdbe-5831-df14-1db8-64ac2a410087@intel.com>

On Tue, 16 Jun 2026, Imre Deak wrote:
> Rename intel_dp_link_config to intel_dp_link_config_entry to prepare
> for tracking a link configuration in both an internal packed and a
> public unpacked format. A follow-up change will add
> struct intel_dp_link_config representing the public unpacked format.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
> drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++--------
> 2 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6cd102a3b610c..c71edea145878 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1840,7 +1840,7 @@ struct intel_dp {
> #define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
> #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
> 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
> -		struct intel_dp_link_config {
> +		struct intel_dp_link_config_entry {
> 			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> 			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> 		} configs[INTEL_DP_MAX_LINK_CONFIGS];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3569e61e7feea..00eb3f5103383 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -699,18 +699,18 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
> }
>
> static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> -				     const struct intel_dp_link_config *lc)
> +				     const struct intel_dp_link_config_entry *lc)
> {
> 	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);

I'm wondering about s/lc/lce/ and s/lc_/lce_/ since I assume the var
name derives from link_config, and now it will be changed. This could be
beneficial given that next patch introduces back struct
intel_dp_link_config. Whether it applies or not:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> }
>
> -static int intel_dp_link_config_lane_count(const struct intel_dp_link_config *lc)
> +static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
> {
> 	return 1 << lc->lane_count_exp;
> }
>
> static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> -				   const struct intel_dp_link_config *lc)
> +				   const struct intel_dp_link_config_entry *lc)
> {
> 	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> 					 intel_dp_link_config_lane_count(lc));
> @@ -719,8 +719,8 @@ static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
> {
> 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
> -	const struct intel_dp_link_config *lc_a = a;
> -	const struct intel_dp_link_config *lc_b = b;
> +	const struct intel_dp_link_config_entry *lc_a = a;
> +	const struct intel_dp_link_config_entry *lc_b = b;
> 	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
> 	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
>
> @@ -734,7 +734,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
> static void intel_dp_link_config_init(struct intel_dp *intel_dp)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> -	struct intel_dp_link_config *lc;
> +	struct intel_dp_link_config_entry *lc;
> 	int num_common_lane_configs;
> 	int i;
> 	int j;
> @@ -769,7 +769,7 @@ static void intel_dp_link_config_init(struct intel_dp *intel_dp)
> void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> -	const struct intel_dp_link_config *lc;
> +	const struct intel_dp_link_config_entry *lc;
>
> 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
> 		idx = 0;
> @@ -788,7 +788,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
> 	int i;
>
> 	for (i = 0; i < intel_dp->link.num_configs; i++) {
> -		const struct intel_dp_link_config *lc = &intel_dp->link.configs[i];
> +		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
>
> 		if (lc->lane_count_exp == lane_count_exp &&
> 		    lc->link_rate_idx == link_rate_idx)
> -- 
> 2.49.1
>
>
--8323329-1589200003-1782157685=:605841--

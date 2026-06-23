Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zwj7F1lOOmrf5gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:14:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3B86B5AA4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 11:14:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Jnu1qWU0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C201410EA2F;
	Tue, 23 Jun 2026 09:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CD710EA2B;
 Tue, 23 Jun 2026 09:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782206036; x=1813742036;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aJPnT7jtSY9Orv8tcVp+XJHWQex1eAxy52Os3S+gJH4=;
 b=Jnu1qWU0QM72bbAFZrwzy1qKLGm9BqsaAy79MN/tKpkf5U5EEXFB4yr9
 bSnu/OT+42XA3I5vU1TRHo2dJgGcPGO1PleswDV0LQggh+0E+krBQBdCy
 4hEnaPj7PnGCWnNC/drM6QQr1BJ+mGiA5iogsdq+8jDqzTxc/R2Bxc+Yl
 tTXM6RlyyGCue2bO7jTG132n8U4JCvmkw4cvlAO9DRzpmrX4FxycQFUZK
 nr32Xdhdbz6YaqbVQN3bx723BIhmb3kan4akFdHQhPxZUbmJeducJaSwf
 220CnfLqPj5ChDkJUqO3m69/ao5NuF4bLGA3rUVqZKR2JJKe99gtgXL39 g==;
X-CSE-ConnectionGUID: 8IzD6XzGTKy6U31OqC6Dnw==
X-CSE-MsgGUID: EXt3oAWDTreWIOiXAq6PqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82948763"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82948763"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:13:56 -0700
X-CSE-ConnectionGUID: WKCp6T9XTImZ1dkPRngltg==
X-CSE-MsgGUID: FwixhfvYSmapzGrKE15Acw==
X-ExtLoop1: 1
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.35])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 02:13:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/dp: Decode dsc max delta bpp from sink dpcd
In-Reply-To: <20260619113905.1413453-5-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260619113905.1413453-1-nemesa.garg@intel.com>
 <20260619113905.1413453-5-nemesa.garg@intel.com>
Date: Tue, 23 Jun 2026 12:13:52 +0300
Message-ID: <111b5aa834e7e94cd9bd487f5583594b21afb803@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A3B86B5AA4

On Fri, 19 Jun 2026, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Add intel_dp_dsc_max_delta_bppx16() to parse sink dsc max
> delta bpp from dpcd when DP_DSC_MAX_BPP_DELTA_AVAILABILITY
> is set. This helper decodes the delta range for both RGB/YCbCr444
> and YCbCr420 formats from DP_DSC_MAX_BPP_DELTA.
>
> With this addition, the flow becomes:
> 1. First, check for a format-specific range and use it to calculate
> max compressed bpp.
> 2. If not, check for sink supported max compressed bpp and
> use that
> 3. If this is also not there go with mandatory
> max range supported bpp.
>
> v2: Reorder the check flow for max_bpp. [Ankit]
> v3: Put RGB and YCbCr444 mask assignment in the same line. [Ankit]
> v4: Zero max_bpp for reserved RGB/YCbCr444 delta values. [sashiko]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging via drm-misc-next

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 43 +++++++++++++++++++++++--
>  1 file changed, 41 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3569e61e7fee..28b887ee5cf1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2184,17 +2184,56 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>  	return -EINVAL;
>  }
>  
> +static u16 intel_dp_dsc_max_delta_bppx16(const struct intel_connector *connector,
> +					 enum intel_output_format output_format)
> +{
> +	const u8 *dsc_dpcd = connector->dp.dsc_dpcd;
> +	u8 max_bpp_delta_v1 = dsc_dpcd[DP_DSC_MAX_BPP_DELTA_VERSION_1 - DP_DSC_SUPPORT];
> +	int max_bpp;
> +
> +	if (!(dsc_dpcd[DP_DSC_MAX_BITS_PER_PIXEL_HI - DP_DSC_SUPPORT] &
> +	    DP_DSC_MAX_BPP_DELTA_AVAILABILITY))
> +		return 0;
> +
> +	switch (output_format) {
> +	case INTEL_OUTPUT_FORMAT_RGB:
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		max_bpp =  max_bpp_delta_v1 & DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK;
> +		if (max_bpp >= 1 && max_bpp <= 21)
> +			max_bpp =  max_bpp + DP_DSC_BPP_DELTA_444 - 1;
> +		else
> +			max_bpp = 0;
> +		break;
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		max_bpp = (max_bpp_delta_v1 & DP_DSC_NATIVE_YCbCr420_MAX_BPP_DELTA_MASK) >>
> +			  DP_DSC_BPP_DELTA_SHIFT_420;
> +		if (max_bpp >= 1 && max_bpp <= 7)
> +			max_bpp = max_bpp + DP_DSC_BPP_DELTA_420 - 1;
> +		break;
> +	default:
> +		MISSING_CASE(output_format);
> +		return 0;
> +	}
> +
> +	return max_bpp << 4;
> +}
> +
>  static
>  u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
>  					    enum intel_output_format output_format,
>  					    int bpc)
>  {
> -	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
> +	u16 max_bppx16 = intel_dp_dsc_max_delta_bppx16(connector, output_format);
> +
> +	if (max_bppx16)
> +		return max_bppx16;
> +
> +	max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
>  
>  	if (max_bppx16)
>  		return max_bppx16;
>  	/*
> -	 * If support not given in DPCD 67h, 68h use the Maximum Allowed bit rate
> +	 * If support not given in DPCD 67h, 68h, 6Eh, 6Fh use the Maximum Allowed bit rate
>  	 * values as given in spec Table 2-157 DP v2.0
>  	 */
>  	switch (output_format) {

-- 
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOaRImea32nXWQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 16:02:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8CD405182
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 16:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C5D10E6E5;
	Wed, 15 Apr 2026 14:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PzLLOfDJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B23DC10E6E5;
 Wed, 15 Apr 2026 14:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776261720; x=1807797720;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WInybRaUn48yiAju247Yk3CEbGRqQjq/YIy+vOZD2Ks=;
 b=PzLLOfDJUaNDIOk8bHhKS70bpjo2meRcehHZowYDLzmXfkWVeObL9oyA
 VykSGYeEy7UD5YkjLzs2HaGpG74N9gk2lfEUQh40PqNI7Fy7u+zIdlmBm
 I/ikHb6voTYhSiFi2+p2tLSf55AErXWArXV3TSXO628joojY/qVNcUwyb
 ErKiSYvao+2jRcqujK5p3DBNmwbw+62NjVNUPdaMqs1V9727LOkrng/Tj
 YP133d6M8vXNHU+Ufp9JyAVtf9cxz2Z/X018TInfOfdSR8kdjbSmfo+U/
 4wOdl0DcNZICwiv16eXfCSd2O3fbPQHjHE8Urly/o1WVr/+bOOh+ghtDV Q==;
X-CSE-ConnectionGUID: RrkATvHAT3yZYuMsTW+Mzg==
X-CSE-MsgGUID: d1kb0CzGQJKa9N31yoq2EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="79821415"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="79821415"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:02:00 -0700
X-CSE-ConnectionGUID: 6c2Gf+2ORPKTF0s4s+P8UQ==
X-CSE-MsgGUID: leDcJSXGQfGyHYRjF/p/Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227774090"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:01:58 -0700
Date: Wed, 15 Apr 2026 17:01:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jake S <j@metarealtyinc.ca>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com, rodrigo.vivi@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: allow eDP VRR when EDID has
 adaptive sync range
Message-ID: <ad-aU37tZVL3Hkkk@intel.com>
References: <20260415130626.10523-1-j@metarealtyinc.ca>
 <20260415130626.10523-3-j@metarealtyinc.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260415130626.10523-3-j@metarealtyinc.ca>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.78 / 15.00];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[j.metarealtyinc.ca:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,metarealtyinc.ca:email]
X-Rspamd-Queue-Id: 6E8CD405182
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 09:06:26AM -0400, Jake S wrote:
> intel_vrr_is_capable() currently hard-gates eDP VRR on the VBT (Video
> BIOS Table) vrr flag. Many OEMs ship laptops with VRR-capable eDP OLED
> panels but do not set the VRR flag in the VBT, making VRR impossible
> on Linux even though the hardware supports it and works on Windows.
> 
> Relax the eDP check: if the VBT flag is not set but the EDID provides
> a valid monitor range with delta > 10Hz (now also populated from
> DisplayID Adaptive Sync blocks by the previous patch), allow VRR. The
> existing checks for DPCD Ignore MSA and monitor range delta still apply.

AFAICS the Windows driver does respect that VBT bit. So we should too.

> 
> This mirrors the approach taken by amdgpu, which has its own EDID-based
> VRR fallback (parse_edid_displayid_vrr) for exactly this class of panel.
> 
> Tested on Dell XPS 2026 (Intel Panther Lake / xe driver, LG Display
> OLED eDP, 3200x2000, VRR 20-120Hz confirmed via vblank event tracing).
> 
> Signed-off-by: Jake S <j@metarealtyinc.ca>
> ---
>  gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/gpu/drm/i915/display/intel_vrr.c b/gpu/drm/i915/display/intel_vrr.c
> index bea0057..f527471 100644
> --- a/gpu/drm/i915/display/intel_vrr.c
> +++ b/gpu/drm/i915/display/intel_vrr.c
> @@ -47,7 +47,12 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>  	 */
>  	switch (connector->base.connector_type) {
>  	case DRM_MODE_CONNECTOR_eDP:
> -		if (!connector->panel.vbt.vrr)
> +		/*
> +		 * Prefer VBT flag, but fall back to EDID monitor range
> +		 * for panels where OEM firmware omits the VBT VRR flag.
> +		 */
> +		if (!connector->panel.vbt.vrr &&
> +		    !(info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10))
>  			return false;
>  		fallthrough;
>  	case DRM_MODE_CONNECTOR_DisplayPort:
> -- 
> 2.53.0

-- 
Ville Syrjälä
Intel

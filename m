Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Dh6HKFr6mmhzAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 20:57:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6836A45642C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 20:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B287C10E36D;
	Thu, 23 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="azNnLgEF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764BF10E09B;
 Thu, 23 Apr 2026 18:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776970653; x=1808506653;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wKEN1wbbY38h+ZNf6pLdJyW35dWeJ3pFr2TOqCLpOMM=;
 b=azNnLgEFA5U71MeFr7ouam/9LZiU0Fvsd9GoPjUHPwCn8Rk6jqOYZTir
 xQVEEIrzgP3qoyE4w4E8xEiNuT58KgeIdVo84fsCfmy4LFoJ/oVesEAxN
 IWTd9abmWhaJCJlHq321GQKhEZwliKZbcHo+ChmNlPT2WeGfAJWOy3vyE
 bP5lT6c+o4J7S5icnESWiXknYBXNvmmL1gxvcAquXePvBktfqbOzNHc2z
 aqVwystR6U9SxnklFODjH8XF3BYoJKitOg7C9uR6D41p7TZSW9/q4UrSj
 DfNT0fPpaGOwWbAjUeTr3BBzP94GBI1Xwx9TmCrk6XPm7gA/B/jEOFAPL w==;
X-CSE-ConnectionGUID: TrOfUD5NSBuLFAGHY5c4Aw==
X-CSE-MsgGUID: 2/QO3m2ESiSPr9cvMTxvIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="100602843"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="100602843"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 11:57:32 -0700
X-CSE-ConnectionGUID: PHe7/TScSoy9IY801Vpskw==
X-CSE-MsgGUID: qC2ce3H2S9y/RcWxWwYoKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="232644317"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 11:57:30 -0700
Date: Thu, 23 Apr 2026 21:57:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
Message-ID: <aeprlsBb9-9Cs-HQ@intel.com>
References: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
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
X-Spamd-Result: default: False [0.90 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6836A45642C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 05:11:48PM +0300, Juha-Pekka Heikkila wrote:
> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> disabled on both Xe and i915 drivers. Here allow dg2 to use
> ccs again for framebuffers.

I don't think they got disabled on xe since it just (for whatever
random reason) checks for ADL in its has_auxccs().

With the commit message sorted out this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: Detect AuxCCS support via display parent interface")
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d31819758f3d..a4bd4f8e18b2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
>  {
>  	struct drm_i915_private *i915 = to_i915(drm);
>  
> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
> -	       IS_ALDERLAKE_P(i915) ||
> -	       IS_METEORLAKE(i915);
> +	return IS_GRAPHICS_VER(i915, 9, 12) &&
> +		!HAS_FLAT_CCS(i915);
>  }
>  
>  static bool has_fenced_regions(struct drm_device *drm)
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel

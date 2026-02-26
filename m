Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qG6TN5AOoGnbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 10:12:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2216A1A333E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 10:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F02710E897;
	Thu, 26 Feb 2026 09:12:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aaq7/Zgs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A4E10E896;
 Thu, 26 Feb 2026 09:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772097166; x=1803633166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=blMXsWAvuofUkGygXR2xg4VS4c6FdlmUnwcyorXruTo=;
 b=Aaq7/ZgsdbfB7KgOHY16a+3qxRpL0SEztBzzDeiTIT7XnCpi5aShMvKZ
 zPlYitfXHcFvyO2/zRxu7KpeGT1Hu0UfhKTLXbJM+Ccds6CqjeL7CsBe1
 5Nho9ve0/A4hMuCNAhZYBNT+dvTA5q+g03XIIFuz3H2KLDojJW7W/98EO
 ehiAvKJ3Rp2HHRxv4a/MqEi6XkZ7yOB5oS1NEOrBZQZk+2Jv4J+BVvQ1c
 HSD8LvWiWOHIfBbjqSeGFNScRpD5Lv/QORGruTt4wDKmnTtC5oGeoF7mc
 dwAvieh7/rsurC4T48qHGQ0ubWSLhqjn3xQHyaPpnTuhKoRlEmpeh+3ly Q==;
X-CSE-ConnectionGUID: LJEk5pnbRPyDtLDUuWxZEw==
X-CSE-MsgGUID: /1kYdqKWTZi+Xaq3yfhjpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73065116"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73065116"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 01:12:45 -0800
X-CSE-ConnectionGUID: SuBJDBysQ32+DR0sRD4BBg==
X-CSE-MsgGUID: ToLYcNFdS0q2cG3BEaoPUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="216648273"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 01:12:43 -0800
Date: Thu, 26 Feb 2026 11:12:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Animesh Manna <animesh.manna@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, stable@vger.kernel.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/alpm: ALPM disable fixes
Message-ID: <aaAOhwxyLDggl08O@intel.com>
References: <20260212062731.397801-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260212062731.397801-1-jouni.hogander@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.60 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.91)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail,gitlab.freedesktop.org:server fail];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2216A1A333E
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 08:27:31AM +0200, Jouni Högander wrote:
> PORT_ALPM_CTL is supposed to be written only before link training. Remove
> writing it from ALPM disable.
> 
> Also clearing ALPM_CTL_ALPM_AUX_LESS_ENABLE and is not about disabling ALPM
> but switching to AUX-Wake ALPM. Stop touching this bit on ALPM disable.

There's another open coded variant of this in intel_alpm_lobf_disable(),
and that thing also gets passed the wrong crtc_state (new instead of
old).

Also LOBF enable is now being done from two places (intel_alpm_lobf_enable()
and intel_psr_enable_source()). How those two interact is anyone's guess.

> 
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7153
> Fixes: 1ccbf135862b ("drm/i915/psr: Enable ALPM on source side for eDP Panel replay")
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.10+
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index e0a4a59dc025..b3334bc4d0f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -604,12 +604,7 @@ void intel_alpm_disable(struct intel_dp *intel_dp)
>  	mutex_lock(&intel_dp->alpm.lock);
>  
>  	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> -		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
> -		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> -
> -	intel_de_rmw(display,
> -		     PORT_ALPM_CTL(cpu_transcoder),
> -		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> +		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE, 0);
>  
>  	drm_dbg_kms(display->drm, "Disabling ALPM\n");
>  	mutex_unlock(&intel_dp->alpm.lock);
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel

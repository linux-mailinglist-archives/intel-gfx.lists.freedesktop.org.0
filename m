Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHbZIjIEzWnhZQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 13:40:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 017C43799F7
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 13:40:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E66E10ECE3;
	Wed,  1 Apr 2026 11:40:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N673zmYS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09CC10ECA6;
 Wed,  1 Apr 2026 11:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775043630; x=1806579630;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bcz45gsCitn29OWKtgkVdIvQKEpAbrGvGZd2gxuDAIE=;
 b=N673zmYSMVv7pNch5SlAvvnzF5UW665sLVhIBh1/ZPb3nzgOz7HAHACm
 Uh8aSoXi97eHCkF6jbAl01jPmcgBpAJM01+FddmoAZ1EwExZwSlUfIbkG
 G6qKsBsBafNS87vPC8DcuIDQPmwLHcsRuzEc96A2xkuy8lL7As+8/rUmH
 3t+7ANZSHTAneqSY/Vv2EYD0ovuyc8JD9nNrUf2TCJKeihWwVD+oMrVS1
 f+mzaJCxZvoTLM1MQgmSM4J67jtNp0JvHyOvad1BgRh79zsHMeO/SYF5T
 HlSi+N7VqdV7YTfsByNLKwr8XTUSiO69MA/DOwspIubuwB8u54KcAegpl Q==;
X-CSE-ConnectionGUID: WpQ2BQ0zRd2OqbQsiEGQSw==
X-CSE-MsgGUID: zgcv2mhxS/mhjpA4a75htg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="78670107"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="78670107"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 04:40:30 -0700
X-CSE-ConnectionGUID: bibSyEuAQDm8BbQ7Pg0Npw==
X-CSE-MsgGUID: hglQ3MkVRECZBu45mJhLYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="228264194"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 04:40:28 -0700
Date: Wed, 1 Apr 2026 14:40:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, pranay.samala@intel.com
Subject: Re: [PATCH 1/3] drm/i915/display: Copy color pipeline from plane in
 the primary joiner pipe
Message-ID: <ac0EKTbNPeaiHIQA@intel.com>
References: <20260401083841.4081587-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260401083841.4081587-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 017C43799F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 01, 2026 at 02:08:39PM +0530, Chaitanya Kumar Borah wrote:
> When copying plane color state in a joiner configuration, use the plane in
> the primary joiner pipe since it carries the pipeline number selected by
> the user-space.
> 
> This assumes that all pipes in the joiner are symmetric in their plane
> color capabilities.
> 
> Cc: stable@vger.kernel.org # v6.19+
> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index 5390ceb21ca4..82f445c83158 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -373,7 +373,7 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>  	bool changed = false;
>  	int i = 0;
>  
> -	iter_colorop = plane_state->uapi.color_pipeline;
> +	iter_colorop = from_plane_state->uapi.color_pipeline;
>  
>  	while (iter_colorop) {
>  		for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {

Hmm. This whole colorop thing seems a bit weird. So each plane/crtc/etc
doesn't actually have its full state in its state, but rather it points
to some other colorop state somewhere?

The mess here with the 'intel_atomic_state' here needs to get cleaned up.
At the very least we need to pass the full atomic state from the caller
instead of digging it out via the plane_state->uapi.state footgun.
That thing should never be used, and ideally we'd just nuke it entirely.

-- 
Ville Syrjälä
Intel

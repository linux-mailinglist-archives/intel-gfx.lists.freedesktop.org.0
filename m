Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NH9A6r5s2nWeQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:48:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95268282713
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EFFC10EBB2;
	Fri, 13 Mar 2026 11:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m79Rea7J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4193310E075;
 Fri, 13 Mar 2026 11:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773402534; x=1804938534;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/LS/IyeEb1igFkSxZmtAbCGZEHFNf1VnzySQql84wYY=;
 b=m79Rea7Jk3GvIdBEepYxsbRWyBU/4VM4eL3uooVUGV+CiOzsrDrRwVPB
 Y648Nh0PzW8z3l+bQMLGY8KtPux0ZMrIfllNYhcIT2z55m/epki/mqnQX
 wAsXYDmUV+yDmqbJziPfjzOXYic7AJK39HeK+a1WinE0qdRVTje12r2VU
 fJCN8AWtUJENLDrxJUZ56xSkSPAlcGUXx0XxllnieLgLyK8oEkmjsZG0O
 RvIK5JWD7EapsTYh42zQbsY84gWFBCf8kanLcruJxGBHNM7YzU37WzWof
 2jQFUS0/k7htSh2CCiPgVdWOYy+Drskd6rSC7qK5HGmPFqghReZi1zHJ0 g==;
X-CSE-ConnectionGUID: ikp5ecNmQ2+Dkegi7vtc0w==
X-CSE-MsgGUID: 5nh2tyvVSN2iNCvYskVHIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="77115296"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="77115296"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:48:54 -0700
X-CSE-ConnectionGUID: y1yPKDYRRKKv7p3LHXR/eg==
X-CSE-MsgGUID: ixXyzgAuRPWHVD7jUUihsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225262246"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:48:51 -0700
Date: Fri, 13 Mar 2026 13:48:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 03/19] drm/dp: Add bits for AS SDP FAVT Payload Fields
 Parsing support
Message-ID: <abP5oSlvo5-nwu8E@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-4-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
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
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 95268282713
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:05:55PM +0530, Ankit Nautiyal wrote:
> DP v2.1 introduced support for sending AS SDP payload bytes for FAVT.
> Add the relavant bits for the same.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  include/drm/display/drm_dp.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 49f0154eb93c..8d172863eba3 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -1205,6 +1205,7 @@
>  #define DP_DPRX_FEATURE_ENUMERATION_LIST_CONT_1					0x2214 /* 2.0 E11 */
>  # define DP_ADAPTIVE_SYNC_SDP_SUPPORTED						BIT(0)
>  # define DP_AS_SDP_FIRST_HALF_LINE_OR_3840_PIXEL_CYCLE_WINDOW_NOT_SUPPORTED	BIT(1)
> +# define DP_AS_SDP_FAVT_PAYLOAD_FIELDS_PARSING_SUPPORTED			BIT(2) /* 2.1 */

I wonder if this is what we should use to detect AS SDP v2 support?
The rule is that we can't send AS SDP v2 unless the sink is DP-2.1
or eDP-1.5.

eDP-1.5 we can supposedly identify from EDP_DPCD_REV (or EDP_REV
as it's now called in eDP-1.5+), but AFAIK there is no real way
to identify a DP-2.1 sink :/

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  # define DP_VSC_EXT_SDP_FRAMEWORK_VERSION_1_SUPPORTED				BIT(4)
>  
>  #define DP_128B132B_SUPPORTED_LINK_RATES       0x2215 /* 2.0 */
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

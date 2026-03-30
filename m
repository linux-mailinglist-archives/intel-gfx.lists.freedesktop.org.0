Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHkgKbO+ymkb/wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:19:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CC735FAD8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 20:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60DDA10E4D8;
	Mon, 30 Mar 2026 18:19:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RHbilb+j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF7E10E28B;
 Mon, 30 Mar 2026 18:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774894768; x=1806430768;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=athuPDSh7ZDG5D7w6W9Cuq+MIohY85UXonbcz6TElBg=;
 b=RHbilb+jmYx8MJlmOCTsvITSnV0edEYKjPg9le7mc4S9bLcr2MTDb50S
 hnmIVEXQdYO9cqGS1VIpi+299bJxCIFH9izkfs9RQfsLbrAWfUWL6GzF3
 PTIXeFMjyDjwZ+o8QsPu6Mt36JpzKV8XRvRoM27jCfn5v3yGkQ1uiX/qJ
 vSabaumj9xbxSyZK7dhbVHX+JfWoV1mL0/DCyj4V7ZHyJGvyRxbT9zsau
 SlyrIZD6XI922kjDQ6mf6JSfWe+Han75+Sd/+am1DRn7gvA8pUs58sLvY
 sSCc7AY5OD/J9ojW4vxfukisU9ilSWqrtUj/6AIztwZ8oCvnDigcP3lKU A==;
X-CSE-ConnectionGUID: S7XxWoOKSueh1BobwaIX6w==
X-CSE-MsgGUID: 400cDPbJQyq0LGtW559ePA==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="79498628"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="79498628"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:19:27 -0700
X-CSE-ConnectionGUID: BbBKv6KQR6OrkNmUY3B0kQ==
X-CSE-MsgGUID: hyeAMZ5oRbm7IDL0IHLLMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="227742995"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 11:19:24 -0700
Date: Mon, 30 Mar 2026 21:19:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 04/19] drm/dp: Add DPCD for configuring AS SDP for PR + VRR
Message-ID: <acq-qi3C8B8rQ4o8@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-5-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: E0CC735FAD8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:41AM +0530, Ankit Nautiyal wrote:
> Add additional DPCDs required to be configured to support VRR with Panel
> Replay. These DPCDs are specifically required for configuring Adaptive Sync
> SDP and are introduced in DP v2.1.
> 
> v2:
>  - Correct the shift for the bits. (Ville)
>  - Add DP_PR_ prefix for the PR-related fields.
> v3:
>  - Use macro values in their shifted form to match the convention (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  include/drm/display/drm_dp.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 8d172863eba3..93a188113d36 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -775,6 +775,11 @@
>  # define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
>  # define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
>  
> +#define PANEL_REPLAY_CONFIG3				0x11a /* DP 2.1 */

I would still define a DP_PR_AS_SDP_SETUP_TIME_MASK here, to
make it clear which bits are part of this.

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +# define DP_PR_AS_SDP_SETUP_TIME_T1			(0 << 6)
> +# define DP_PR_AS_SDP_SETUP_TIME_DYNAMIC		(1 << 6) /* DP 2.1 Table 2-227 */
> +# define DP_PR_AS_SDP_SETUP_TIME_T2			(2 << 6)
> +
>  #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>  #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>  #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

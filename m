Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPhUOZL6s2nWeQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:52:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C08112827EE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:52:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EE810EBBB;
	Fri, 13 Mar 2026 11:52:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eerrObw7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51BE10EBB9;
 Fri, 13 Mar 2026 11:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773402755; x=1804938755;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nsSVLwekEg5ts65/VQP6i0HhmKjpYMLekMNHTWHgWfc=;
 b=eerrObw7Jwta4Su7Aq5bwC5sJYdnL/I0UWjnf1CmrRyjdAD+tZ+Pnt9K
 ljmJEiZq638EmkQnFZcLmN6me9sthQDv9fqD6Da6zNfHn3M4WrYddTOiS
 nFTZUpxUEaz1Kmawac2zn6UuiXo7CYLGRPoMup797S6RcfhxeS9zuTgSl
 PM51avs3jmCgyxgnJeJqGNHqZ7ixGQVUMjmw/7DuKrXufsaygaunZiAjV
 3w+6HF7t6R8DbfQm4kRGj3X/wl13gM4JDXGK7Z2BpGP8x2OKBTZjuitCu
 viLnNNo1Ic8YaXciAMja1H66Jfpu/KdbuaiZzLA2rJUFY8+I3KC4L3wkJ g==;
X-CSE-ConnectionGUID: FS6u1V5UR+uOpXusdv2gdw==
X-CSE-MsgGUID: 969NqvreS8+q2a8bQ9uPMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78106706"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78106706"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:52:25 -0700
X-CSE-ConnectionGUID: u/miGJT5RE+mLJ9OW0hcGg==
X-CSE-MsgGUID: 0xUlyZN3SMixC8yrdEIciQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="220402411"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:52:22 -0700
Date: Fri, 13 Mar 2026 13:52:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 04/19] drm/dp: Add DPCD for configuring AS SDP for PR + VRR
Message-ID: <abP6czXUF_LuCBSi@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-5-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.95 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:?];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.962];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: C08112827EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:05:56PM +0530, Ankit Nautiyal wrote:
> Add additional DPCDs required to be configured to support VRR with Panel
> Replay. These DPCDs are specifically required for configuring Adaptive Sync
> SDP and are introduced in DP v2.1.
> 
> v2:
>  - Correct the shift for the bits. (Ville)
>  - Add DP_PR_ prefix for the PR-related fields.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  include/drm/display/drm_dp.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 8d172863eba3..e6752a92d5dc 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -775,6 +775,15 @@
>  # define DP_PANEL_REPLAY_SU_Y_GRANULARITY_EXTENDED_VAL_SEL_MASK  (0xf << 3)
>  # define DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE		 (1 << 7)
>  
> +#define PANEL_REPLAY_CONFIG3				0x11a /* DP 2.1 */
> +# define DP_PR_AS_SDP_SETUP_TIME_SHIFT			6
> +# define DP_PR_AS_SDP_SETUP_TIME_MASK			(3 << DP_PR_AS_SDP_SETUP_TIME_SHIFT)
> +# define DP_PR_AS_SDP_SETUP_TIME_T1			0
> +# define DP_PR_AS_SDP_SETUP_TIME_DYNAMIC		1 /* DP 2.1 Table 2-227 */
> +# define DP_PR_AS_SDP_SETUP_TIME_T2			2

The usual rule in drm_dp.h seems to be to define the values
as already shifted.

> +# define DP_PR_AS_SDP_SETUP_TIME(t)			(((t) << DP_PR_AS_SDP_SETUP_TIME_SHIFT) & \
> +							 DP_PR_AS_SDP_SETUP_TIME_MASK)
> +
>  #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
>  #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
>  #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel

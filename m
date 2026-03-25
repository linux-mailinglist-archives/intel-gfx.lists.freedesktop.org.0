Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBPVIDzQw2lBuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:08:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28CA3247CF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC8710E87B;
	Wed, 25 Mar 2026 12:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aazDhW+s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC7910E842;
 Wed, 25 Mar 2026 12:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774440505; x=1805976505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+rSuulWREqsT9iIQHpMZ2xXUjDOiIEet/x3Vo+41FFk=;
 b=aazDhW+sszQEh5vHnjfPKGri+HDpPVO07uERoY7FmunccJQ/Gk8Bm8xY
 YdxKPJlStO4nh35TTh/Ize0ceVCrQICrWXO6ZzaICjoMoONi4bUdKR81E
 4cBZnA+FSooLl4JIM2A6UpQPUHFkdvsgOb/K60rPsmweOf/t7RVlwV9iM
 hGt3GzQBof8olx+OyRBJHd7oe1VHhegTtOpv4zZeLBAZN0Wx5qQnpwFS7
 zYQfaOLcDLb6YRLPLh95AeCL1Ue/0xptpj1CDW4r7/79nMisI/pEHXcg3
 B5n5jwbd3z59Brw0+eD+hQdzfmw9rRD/sWUnzyq6ruShONk+OJNLsWcjC A==;
X-CSE-ConnectionGUID: rxWGhecWSBKPvcFuXlMHpA==
X-CSE-MsgGUID: q+Hei6XBRvG3Y7jawr9gJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79381712"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="79381712"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:08:24 -0700
X-CSE-ConnectionGUID: QEdL+GMYT/mFtnXreBv48g==
X-CSE-MsgGUID: RutsHh+oQwiGJyAFrtesfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="255161043"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:08:22 -0700
Date: Wed, 25 Mar 2026 14:08:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 08/26] drm/i915/writeback: Define encoder->get_hw_state
Message-ID: <acPQMrMRziNrueWg@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-9-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-9-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A28CA3247CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:26PM +0530, Suraj Kandpal wrote:
> Define the get_hw_state function for encoder which
> get's the encoder state, pipe config.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
>  .../drm/i915/display/intel_writeback_reg.h    |  3 ++
>  2 files changed, 52 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 765f62fa38f8..64769609aefe 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -17,7 +17,9 @@
>  #include "intel_de.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_writeback.h"
> +#include "intel_writeback_reg.h"
>  
>  struct intel_writeback_connector {
>  	struct intel_connector connector;
> @@ -98,6 +100,52 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
>  	.mode_valid = intel_writeback_mode_valid,
>  };
>  
> +static bool
> +intel_writeback_get_hw_state(struct intel_encoder *encoder,
> +			     enum pipe *pipe)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	u8 pipe_mask = 0;
> +	u32 tmp;
> +
> +	/* TODO need to be done for both the wd transcoder */

The encoder should know its transcoder.

> +	tmp = intel_de_read(display,
> +			    TRANSCONF_WD(TRANSCODER_WD_0));
> +	if (!(tmp & WD_TRANS_ENABLE))
> +		return false;

Is this register really different enough from the norm to
warrant its own register definitions?

> +
> +	tmp = intel_de_read(display,
> +			    WD_TRANS_FUNC_CTL(TRANSCODER_WD_0));
> +
> +	if (!(tmp & TRANS_WD_FUNC_ENABLE))
> +		return false;
> +
> +	switch (tmp & WD_INPUT_SELECT_MASK) {
> +	case WD_INPUT_PIPE_A:
> +		pipe_mask |= BIT(PIPE_A);
> +		break;
> +	case WD_INPUT_PIPE_B:
> +		pipe_mask |= BIT(PIPE_B);
> +		break;
> +	case WD_INPUT_PIPE_C:
> +		pipe_mask |= BIT(PIPE_C);
> +		break;
> +	case WD_INPUT_PIPE_D:
> +		pipe_mask |= BIT(PIPE_D);
> +		break;
> +	default:
> +		MISSING_CASE(tmp & WD_INPUT_SELECT_MASK);
> +		fallthrough;
> +	}
> +
> +	if (pipe_mask == 0)
> +		return false;
> +
> +	*pipe = ffs(pipe_mask) - 1;

What's the point of this pipe_mask?

> +
> +	return true;
> +}
> +
>  int intel_writeback_init(struct intel_display *display)
>  {
>  	struct intel_encoder *encoder;
> @@ -122,6 +170,7 @@ int intel_writeback_init(struct intel_display *display)
>  	encoder->type = INTEL_OUTPUT_WRITEBACK;
>  	encoder->pipe_mask = ~0;
>  	encoder->cloneable = 0;
> +	encoder->get_hw_state = intel_writeback_get_hw_state;
>  
>  	connector = &writeback_conn->connector;
>  	ret = intel_writeback_connector_alloc(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> index ffe302ef3dd9..5e7c6c99d191 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> @@ -19,6 +19,9 @@
>  /* Gen12 WD */
>  #define _MMIO_WD(tc, wd0, wd1)	_MMIO_TRANS((tc) - TRANSCODER_WD_0, wd0, wd1)
>  
> +#define TRANSCONF_WD(tc)	_MMIO_WD(tc,\
> +				PIPE_WD0_OFFSET,\
> +				PIPE_WD1_OFFSET)
>  #define WD_TRANS_ENABLE		REG_BIT(31)
>  #define WD_TRANS_STATE		REG_BIT(30)
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel

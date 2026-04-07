Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDtYNhnA1GnQwwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:28:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670633AB536
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 10:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09CE10E369;
	Tue,  7 Apr 2026 08:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rd5bVbf+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B7010E362;
 Tue,  7 Apr 2026 08:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775550487; x=1807086487;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bbP1WgaBd8Mr9jRyXDZWsBJL3Lm/xerKUCO9qe6RRG0=;
 b=Rd5bVbf+qYP9pHcUqkCdJMTkPYDYLgM/FjYffMIewAolIdGFlBQYr16Q
 +lzdJxomoZSaKW620jmdUd+DjrK5OPYonh4/VSbrex6guuVUMvnl/nP4G
 hz6vzfE36NDY58btV50H6hcS9S2NsWybjLM6yOAHoRJhCCI6L1gkWmSOb
 RHKpf8f5RDs5weaonEkwWsp45YHvq0ik1DsiOg3Ly/TTVRtwI0TiJHpUF
 gi430tOnlzsG8Mzo4yKHiK2EGQ/Cc1BhvcRVniWmu+FnfFTCUn2kDZv/3
 LG7sGRDKSKxamitkqkQZc9Le5l8nCJjalqUn3lxA3pxSmeo2lj863fPS0 g==;
X-CSE-ConnectionGUID: edPV0uCHSRWauhs+3IM/Xg==
X-CSE-MsgGUID: dqn5++xNR8+sXRnDZrgdaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76223990"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76223990"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:28:07 -0700
X-CSE-ConnectionGUID: +0791q5HQqyx2MobG55I4g==
X-CSE-MsgGUID: TK9vBI/bT+6UoeDN8uAQeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="251245612"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 01:28:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
 capture function
In-Reply-To: <20260325110744.1096786-19-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-19-suraj.kandpal@intel.com>
Date: Tue, 07 Apr 2026 11:28:00 +0300
Message-ID: <5384497d771f106f37172d84c7caf5fc0991b553@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 670633AB536
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Define the commit function to be called at atomic_commit_tail
> if drm_writeback_job is available. This function calls the
> capture function and queues the job to be called later via
> interrupt handler when the job is complete.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  3 +
>  .../gpu/drm/i915/display/intel_writeback.c    | 58 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_writeback.h    |  4 ++
>  3 files changed, 65 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d433ffaadd65..4cc3e0779e8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -126,6 +126,7 @@
>  #include "intel_vga.h"
>  #include "intel_vrr.h"
>  #include "intel_wm.h"
> +#include "intel_writeback.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
> @@ -7564,6 +7565,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>  
> +	intel_writeback_atomic_commit(state);
> +
>  	intel_wait_for_vblank_workers(state);
>  
>  	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index d45d5faaf7cc..c79e7330b81c 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -51,6 +51,12 @@ static const u32 writeback_formats[] = {
>  	DRM_FORMAT_XBGR2101010,
>  };
>  
> +static struct intel_writeback_connector
> +*conn_to_intel_writeback_connector(struct intel_connector *connector)
> +{
> +	return container_of(connector, struct intel_writeback_connector, connector);
> +}
> +
>  static struct intel_writeback_connector
>  *enc_to_intel_writeback_connector(struct intel_encoder *encoder)
>  {
> @@ -224,6 +230,58 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
>  	return 0;
>  }
>  
> +static void intel_writeback_capture(struct intel_atomic_state *state,
> +				    struct intel_connector *connector)
> +{
> +	struct intel_display *display = to_intel_display(connector);
> +	struct intel_writeback_connector *wb_conn =
> +		conn_to_intel_writeback_connector(connector);
> +	enum transcoder trans = wb_conn->trans;
> +	u32 val = 0;
> +
> +	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
> +	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> +		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
> +		     val);
> +
> +	if (intel_de_wait_for_set_ms(display, WD_FRAME_STATUS(trans),
> +				     WD_FRAME_COMPLETE, 50)) {
> +		drm_dbg_kms(display->drm,
> +			    "Frame was not captured after triggering a capture\n");
> +		intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
> +			     STOP_TRIGGER_FRAME,
> +			     STOP_TRIGGER_FRAME);
> +	} else {
> +		drm_writeback_signal_completion(&connector->base, 0);
> +		intel_de_write(display, WD_FRAME_STATUS(trans), WD_FRAME_COMPLETE);
> +		wb_conn->frame_num++;
> +		if (wb_conn->frame_num > 7)
> +			wb_conn->frame_num = 1;
> +		wb_conn->job = NULL;
> +	}
> +}
> +
> +void intel_writeback_atomic_commit(struct intel_atomic_state *state)
> +{
> +	struct drm_connector *connector;
> +	struct drm_connector_state *conn_state;
> +	int i;
> +
> +	for_each_new_connector_in_state(&state->base, connector, conn_state, i) {
> +		struct intel_connector *intel_connector = to_intel_connector(connector);
> +
> +		if (!conn_state)
> +			return;
> +
> +		if (conn_state->writeback_job && conn_state->writeback_job->fb) {
> +			WARN_ON(connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK);
> +
> +			drm_writeback_queue_job(connector, conn_state);
> +			intel_writeback_capture(state, intel_connector);
> +		}
> +	}
> +}
> +
>  static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
>  					   struct intel_encoder *encoder,
>  					   const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.h b/drivers/gpu/drm/i915/display/intel_writeback.h
> index 5911684cb81a..3c145cf73e20 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.h
> @@ -8,10 +8,14 @@
>  
>  #include <linux/types.h>

You don't actually need anything from here.

>  
> +#include "intel_display_types.h"
> +

Forward declaration is enough.

> +struct intel_atomic_state;
>  struct intel_display;
>  struct intel_writeback_connector;
>  
>  int intel_writeback_init(struct intel_display *display);
> +void intel_writeback_atomic_commit(struct intel_atomic_state *state);
>  
>  #endif /* __INTEL_WRITEBACK_H__ */

-- 
Jani Nikula, Intel

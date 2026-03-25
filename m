Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DBsDDfWw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:33:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91863324EEB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC75510E866;
	Wed, 25 Mar 2026 12:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DR786y0p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A48210E7FA;
 Wed, 25 Mar 2026 12:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774442036; x=1805978036;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cg4107XVw5qlZkEaG3Ts52/o/nhfPz88Bw9I+iwSFpY=;
 b=DR786y0pd8gGrrU0ynFYrvRkxTqZdGeuy7VQh0G8z+WgtTG6OToy9GAV
 6umxdfjy8IM7Cnvx41R4tofRSr8GG5A/dGdtu6DSmAU0BGxk3RGZ1q+c6
 aQ2PM9j2tlw07pO9BG77XJFOfmbVnBDDUv/O2mFffByInmN3+ZYygBXDE
 R5Pgja6OO+GayIPaqwBR5uwAvLa7/qQ/TH+lJzYRvQDtGkt0Wvqpt7MpC
 2wOEkys0IYdZmJxT/bhCAWo9XVxKrmbawoy8wk9uVBG0irtalc0Zy8118
 Y9wvmXyLe2Gw87I4eV392VpofCpVews6Igu7YIe5tnUtiEPX30VHCddhP A==;
X-CSE-ConnectionGUID: fc1uIzeeQ5eZ+twd7zwv2Q==
X-CSE-MsgGUID: McRF9MLdSTaa3mMQTwZrvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86846901"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86846901"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:33:55 -0700
X-CSE-ConnectionGUID: JW2rgvD2QFCWpA6X2UqS2g==
X-CSE-MsgGUID: I0m/9a6bTXKe/GUxp8qMIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="229603769"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:33:52 -0700
Date: Wed, 25 Mar 2026 14:33:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 18/26] drm/i915/writeback: Define writeback frame
 capture function
Message-ID: <acPWLdgT46MhXJL9@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-19-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-19-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
X-Rspamd-Queue-Id: 91863324EEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:36PM +0530, Suraj Kandpal wrote:
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

I think we need to hook up the interrupts to avoid this kind of thing.

The trigger we should probably just do from intel_pipe_update_end().

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
>  
> +#include "intel_display_types.h"
> +
> +struct intel_atomic_state;
>  struct intel_display;
>  struct intel_writeback_connector;
>  
>  int intel_writeback_init(struct intel_display *display);
> +void intel_writeback_atomic_commit(struct intel_atomic_state *state);
>  
>  #endif /* __INTEL_WRITEBACK_H__ */
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEEXIJSCBGrVKwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 15:54:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0514A53470D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 15:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A01110E23D;
	Wed, 13 May 2026 13:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kaRAq7SG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495E810E23D;
 Wed, 13 May 2026 13:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778680466; x=1810216466;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MUhNhtljgPnMk4Q/hSWxPNkEdmTh9T45ENKF4u6QOXM=;
 b=kaRAq7SGxewavyhCIwtxEUCYO0XkWOtj04APPM/KWwlcjCr2FXj59lAy
 fsxfvxoVh8Nj/2E49+bR1W5EqtaGgQyTVDFmUNOGy5YoHjtLiqnoF+ztr
 1DzCIhsGj2puL23d0scr/jGXmqLU6Q2D3SF9sQTm/WROEvVyn04aHQ0eT
 SJwe+kbtanGVC50+Z/6tehqYBoF5NZF3Q3xYZSUQvMWxKxX3tlPeqCSdn
 IJn3QSmtOSD7eDiPSTNxsSLgBwFmX+mLPHYFZs70p1KscDms7u9XBU5NV
 jNDsRwB+FopD4N1jjevyfFkAxm/u03obfAD/9HtK/yDhJtnIgqp9myN/H w==;
X-CSE-ConnectionGUID: Q6XHnx6aS4SRsBf5tbIi3A==
X-CSE-MsgGUID: jCLSl5RuSZeD4m5qgOvG0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="89913715"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="89913715"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 06:54:25 -0700
X-CSE-ConnectionGUID: ev6mgISLRzymUPoi2Bm/FQ==
X-CSE-MsgGUID: H+C6SzYxRBmycSQCrfcSew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="238341145"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.10])
 by orviesa007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 06:54:23 -0700
Date: Wed, 13 May 2026 16:54:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 2/6] drm/i915/irq: constify pipe stats parameters
Message-ID: <agSCjK1FIeaXrDEg@intel.com>
References: <cover.1778666967.git.jani.nikula@intel.com>
 <679387717b7d086174676714db5aa5eed8ef1643.1778666967.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <679387717b7d086174676714db5aa5eed8ef1643.1778666967.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 0514A53470D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 01:10:07PM +0300, Jani Nikula wrote:
> The pipe stat irq handling doesn't need to modify the pipe stats
> arrays. Make them const.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_irq.h | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index bf4b5e7b6011..d30b063714b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -597,7 +597,7 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
>  }
>  
>  void i915_pipestat_irq_handler(struct intel_display *display,
> -			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
> +			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	bool blc_event = false;
>  	enum pipe pipe;
> @@ -621,7 +621,7 @@ void i915_pipestat_irq_handler(struct intel_display *display,
>  }
>  
>  void i965_pipestat_irq_handler(struct intel_display *display,
> -			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
> +			       u32 iir, const u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	bool blc_event = false;
>  	enum pipe pipe;
> @@ -648,7 +648,7 @@ void i965_pipestat_irq_handler(struct intel_display *display,
>  }
>  
>  void valleyview_pipestat_irq_handler(struct intel_display *display,
> -				     u32 pipe_stats[I915_MAX_PIPES])
> +				     const u32 pipe_stats[I915_MAX_PIPES])
>  {
>  	enum pipe pipe;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index e2b1674fae06..d25b9ea4272b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -78,9 +78,9 @@ void i915_disable_pipestat(struct intel_display *display, enum pipe pipe, u32 st
>  
>  void i9xx_pipestat_irq_ack(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
>  
> -void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
> -void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
> -void valleyview_pipestat_irq_handler(struct intel_display *display, u32 pipe_stats[I915_MAX_PIPES]);
> +void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
> +void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, const u32 pipe_stats[I915_MAX_PIPES]);
> +void valleyview_pipestat_irq_handler(struct intel_display *display, const u32 pipe_stats[I915_MAX_PIPES]);
>  
>  void vlv_display_error_irq_ack(struct intel_display *display, u32 *eir, u32 *dpinvgtt);
>  void vlv_display_error_irq_handler(struct intel_display *display, u32 eir, u32 dpinvgtt);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel

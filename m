Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHnLL7Ln8WlZlAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:12:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3DB4935FF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 13:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2179D10EF51;
	Wed, 29 Apr 2026 11:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UFUoc5KM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897F910EF51;
 Wed, 29 Apr 2026 11:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777461168; x=1808997168;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R3ynsSgGydF2MWr8dU7H5uhrEbi6RxmHbFie/XQXfvk=;
 b=UFUoc5KMHjGZyEQPMwMBYL2UkHa1KbOpjGGYrgHpUIqwO+fARRNoQVk2
 +VgNXaRuz8JloC/NMbHa693psWFJL1WWLqF41gZbEqqMkvsdbMCpfN2xh
 Ai5Qqv7ONHLOAPeljb3cnpmxH/+5XRAV9qvYW/qemxhaASFnwbi8/H7pf
 wetPlQqp5bKyjpkyFNm5GgKc7F5nsENBOCfODniFDY1DY+0nOV5sVtmBM
 Vla+IJPTe2yunvOv9tSoIWjRO116XQHx7/co7fuWEXIfSEMGs7Nmma1b6
 tcwdE+L9C4Tm0OQ3h54t7Aboy8a2o62jQ07Ujc0+EylV8+ZCU4k+E/9+O Q==;
X-CSE-ConnectionGUID: R92WdlE3SLO1pds3mJet5w==
X-CSE-MsgGUID: VTAGYrL0QMev9gPfqq/UoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78281425"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="78281425"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:12:47 -0700
X-CSE-ConnectionGUID: O27xxbP/TiKmFkZMAiq8Yw==
X-CSE-MsgGUID: ILPkbb8URwiqviJWLbyOOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="264616901"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 04:12:46 -0700
Date: Wed, 29 Apr 2026 14:12:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/15] drm/i915/irq: move VLV/CHV LPE irq handler call
 after irq acks
Message-ID: <afHnqlNsDmPZtf6d@intel.com>
References: <cover.1777458161.git.jani.nikula@intel.com>
 <8932c31b9fec5c50f64dbb5d9f2e682b1e6d3d5c.1777458161.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8932c31b9fec5c50f64dbb5d9f2e682b1e6d3d5c.1777458161.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 2E3DB4935FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On Wed, Apr 29, 2026 at 01:24:50PM +0300, Jani Nikula wrote:
> The location of the intel_lpe_audio_irq_handler() call seems too
> early. Group the handler calls together slightly later.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index ef9eadf38a53..1c87f56d668d 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -282,10 +282,6 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  		 * signalled in IIR */
>  		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>  
> -		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
> -			   I915_LPE_PIPE_B_INTERRUPT))
> -			intel_lpe_audio_irq_handler(display);

This thing acks the irq too, so I believe it needs to stay here.

> -
>  		/*
>  		 * VLV_IIR is single buffered, and reflects the level
>  		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
> @@ -301,6 +297,10 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  		if (pm_iir)
>  			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
>  
> +		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
> +			   I915_LPE_PIPE_B_INTERRUPT))
> +			intel_lpe_audio_irq_handler(display);
> +
>  		if (hotplug_status)
>  			i9xx_hpd_irq_handler(display, hotplug_status);
>  
> @@ -372,11 +372,6 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		 * signalled in IIR */
>  		i9xx_pipestat_irq_ack(display, iir, pipe_stats);
>  
> -		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
> -			   I915_LPE_PIPE_B_INTERRUPT |
> -			   I915_LPE_PIPE_C_INTERRUPT))
> -			intel_lpe_audio_irq_handler(display);
> -
>  		/*
>  		 * VLV_IIR is single buffered, and reflects the level
>  		 * from PIPESTAT/PORT_HOTPLUG_STAT, hence clear it last.
> @@ -387,6 +382,11 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		intel_uncore_write(&dev_priv->uncore, VLV_IER, ier);
>  		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
>  
> +		if (iir & (I915_LPE_PIPE_A_INTERRUPT |
> +			   I915_LPE_PIPE_B_INTERRUPT |
> +			   I915_LPE_PIPE_C_INTERRUPT))
> +			intel_lpe_audio_irq_handler(display);
> +
>  		if (hotplug_status)
>  			i9xx_hpd_irq_handler(display, hotplug_status);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel

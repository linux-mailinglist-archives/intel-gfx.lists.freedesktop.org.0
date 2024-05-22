Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D813B8CC242
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 15:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A76810EE58;
	Wed, 22 May 2024 13:38:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GicCSrmS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E20D10EA87
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 13:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716385132; x=1747921132;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=TQuLvqR8Shtsg4rMtGhv7rACqrNg/vTB4Qpsg03t5B8=;
 b=GicCSrmS9+qV3NRnd0Ddkr72s7Td7IGQTu648uVWpAppL8kaWPz9WhGt
 nSVboJ7Q+JbzrNAaoo/tajROPaX9XYlk416b/WKCffuxynFEwBfjy2hkv
 9SLJBKt/ulzVRX6O8WGMU25yXnyUcfeBENmk/0up1WQHFncQQoWkj0+y3
 XG5+EzQCOhOqZPNmFFqG/tpkht06ayliceV4XcWQkEJvyIeOlXYdyZ8tT
 tcUhJlj8gCG4KylP0N5fexWVxNpNCqQyfiV8n4YYJ9NGjrjRUxBNQXvK0
 +lzX6wKbO2J7r/RLinV5tk0p+qhbNgMfdCxKYaDwzmmw5GXjmHASs+aUp w==;
X-CSE-ConnectionGUID: +hFUOLeZSM625HCh7OufrA==
X-CSE-MsgGUID: I8YKu6hEReC09lTh4xqnfg==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="24049523"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="24049523"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 06:38:51 -0700
X-CSE-ConnectionGUID: f4YD0XrcSj23r25XDrJL5Q==
X-CSE-MsgGUID: C62ggNJ/SCGmsfbmKKXE9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="37768799"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 06:38:50 -0700
Date: Wed, 22 May 2024 16:38:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 07/21] drm/i915/dp: Recheck link state after modeset
Message-ID: <Zk31bvX1nRy0QsTJ@ideak-desk.fi.intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240520185822.3725844-8-imre.deak@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 20, 2024 at 09:58:05PM +0300, Imre Deak wrote:
> [...]
> +static void intel_ddi_link_check_work_fn(struct work_struct *work)
> +{
> +	struct intel_digital_port *dig_port =
> +		container_of(work, typeof(*dig_port), check_link_work.work);
> +	struct intel_encoder *encoder = &dig_port->base;
> +	struct drm_modeset_acquire_ctx ctx;
> +	int ret;
> +
> +	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
> +		if (dig_port->dp.attached_connector)
> +			ret = intel_dp_retrain_link(encoder, &ctx);

ret should not be let here uninited making the loop spin forever. This
can't actually happen since the work won't get schedule w/o
dp.attached_connector, but the above check should be also just an assert
at this point (at least until handling HDMI is also added).

> +}
> +
> +void intel_ddi_init_link_check_work(struct intel_digital_port *dig_port)
> +{
> +	INIT_DELAYED_WORK(&dig_port->check_link_work, intel_ddi_link_check_work_fn);
> +}
> +
> +void intel_ddi_flush_link_check_work(struct intel_digital_port *dig_port)
> +{
> +	cancel_delayed_work_sync(&dig_port->check_link_work);
> +}
> +
> +void intel_ddi_queue_link_check(struct intel_digital_port *dig_port, int delay_ms)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> +	mod_delayed_work(i915->unordered_wq,
> +			 &dig_port->check_link_work, msecs_to_jiffies(delay_ms));
> +}
> +
>  static int intel_hdmi_reset_link(struct intel_encoder *encoder,
>  				 struct drm_modeset_acquire_ctx *ctx)
>  {
> @@ -4911,6 +4943,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
>  
>  	dig_port->aux_ch = AUX_CH_NONE;
>  
> +	intel_ddi_init_link_check_work(dig_port);
> +
>  	encoder = &dig_port->base;
>  	encoder->devdata = devdata;
>  

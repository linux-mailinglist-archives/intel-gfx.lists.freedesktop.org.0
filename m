Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E07736E1219
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E6F10E296;
	Thu, 13 Apr 2023 16:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2891310E296
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681402782; x=1712938782;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2g8PdwmAj4bwdg6uVCh9JKjX4657PconpUNsUQdrJKU=;
 b=efoO4dcPZwZqoRA5v1BJ/ptvbyvFjebqd9ldjVT8sF70zE9xGpIP0egC
 Gf8cFc/s+4s2YBFc52cFtYzNm96iWETkdB2m4rOn/m7ZtdqRNBPI/p2+a
 COBo2SyMRFg6qu5EBG/FteIgKt2r6IfmLhTStABFuxTqNJm4t0ViCHjNc
 WfFWW54gVNHfCngxB7HjwpOD9rJt7HW1mvMGmBBfjtLSx8z4gx7AzyL+e
 yZuTY9FX31UnQxcuj3nuV2xz1eevtl9j6fD9sepGQJWvDPJPrQjMqCale
 xlMg0UlurLKlvpgDG5n+MMS2a8ctOh7Ou/hTbTkrKM7uIBaIzxzvz4QrR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="332969930"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="332969930"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:18:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="833194847"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="833194847"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:17:59 -0700
Date: Thu, 13 Apr 2023 19:17:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZDgrNBvgpN9WOTH0@ideak-desk.fi.intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
 <20230412224925.1309815-7-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412224925.1309815-7-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/mtl/display: Implement
 DisplayPort sequences
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 12, 2023 at 03:49:22PM -0700, Radhakrishna Sripada wrote:
> [...]
> +static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	enum port port = encoder->port;
> +	u32 val;
> +
> +	/* 3.b Clear DDI_CTL_DE Enable to 0. */
> +	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
> +	if (val & DDI_BUF_CTL_ENABLE) {
> +		val &= ~DDI_BUF_CTL_ENABLE;
> +		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
> +
> +		/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
> +		mtl_wait_ddi_buf_idle(dev_priv, port);
> +	}
> +
> +	/* 3.d Disable D2D Link */
> +	mtl_ddi_disable_d2d_link(encoder);
> +
> +	/* 3.e Disable DP_TP_CTL */
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
> +		val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);

Only DP_TP_CTL_ENABLE should be cleared and could use intel_de_rmw().

> +		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> +	}
> +}

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E3B1C146
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 09:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A8F10E3BD;
	Wed,  6 Aug 2025 07:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SaYhkjXO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD8410E3B9;
 Wed,  6 Aug 2025 07:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754465129; x=1786001129;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=acNitU0acs3HqiqEPaRRxXWLp2lRi8kzER654lid6bA=;
 b=SaYhkjXOwkpHDRK6DJHuEo7mG+XL9fCBRbPhvWDfPf2Tvm7DOg0Mdtuz
 qdg3pO+X+X36IXwW7Wi9bpCSWKwQy+LP9GqYSgD5rMNsyMbPezZFvglxy
 75lqd6IrsztNYjQ3ucjsJz2x92UpsiJW/Ybv1hEVIgvib7GBn0Pu6Dkfs
 pYKW+DppGymAZ2XgXeVoBx29dKzGKV+9RNNAWeCd8SDsCEhwp0HkY0mV9
 aRrBgRvWhrbyxetTIMyu691N0Vni/hw8xe3ZGMNMhUzt/Qo6BrzZqlwHs
 S/H/4B3XKgi68RITMqp2FdSOrczmr+2ty7HcpcHF/nL1A9j8vTCz7VVHf A==;
X-CSE-ConnectionGUID: CQGND9R2RqaMqMIFDSLtOA==
X-CSE-MsgGUID: NvBYDDr2R5qymvkIET4SKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="55985792"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="55985792"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 00:25:29 -0700
X-CSE-ConnectionGUID: p79QJlreSI2khd+9FB2Wxw==
X-CSE-MsgGUID: K2H/HwkJRQywgU9p1IKpcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="201881019"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 00:25:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: nemesa.garg@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/scaler: Fix WA_14011503117
In-Reply-To: <20250806030856.3514127-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806030856.3514127-1-suraj.kandpal@intel.com>
Date: Wed, 06 Aug 2025 10:25:24 +0300
Message-ID: <06796b24cd8fcaf992601b92dd8261a13546d22d@intel.com>
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

On Wed, 06 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> This introduces and uses a variable id which is just uninitialized.
> What really needs to be used is the scaler_id.
>
> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 1374fa94ff5c..cd7ebbeb9508 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -959,11 +959,12 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_crtc_scaler_state *scaler_state =
>  		&crtc_state->scaler_state;
> -	int id;
>  
>  	if (!scaler_state && scaler_state->scaler_id == -1)

That check does also does not make any sense.

scaler_state == NULL && scaler_state->scaler_id

BR,
Jani.


>  		return;
>  
> -	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> +	intel_de_write_fw(display,
> +			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state->scaler_id),
> +			  1);
>  	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
>  }

-- 
Jani Nikula, Intel

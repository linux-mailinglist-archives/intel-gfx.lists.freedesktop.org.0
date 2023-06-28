Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E499074149E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 17:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BD410E106;
	Wed, 28 Jun 2023 15:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D0810E106
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 15:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687965035; x=1719501035;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=QtAG7jywCIiGxnG9rlD19faE4bb7jVMmfCyTkIss+W0=;
 b=FKATFGOFXDM29bHBkPHD8Db9WnNKE9CFCIBwoXO4X3wLpISM5HIUHq6P
 pPgPvl3xLc6iIu4Rr7dipYmjyyhgpZMEI9wAj2Npu1A7J/P370bWNQzsP
 5gwQWi05Ptq9VYji4DTMVj0CGj7O3NVcQKYfZll53keWKaTWd3ch9KeBD
 3p0GMBHiJAuv3WSZoJeEIfKKUzIAgDRYkNDHc8Cn2VQt5iNOBmiAjoqmh
 zmTGxvXSeG3pWL80pXSkxBpPuTG5jGscn9do5qKvsBzuV7114nCVv1+Ra
 n9EjxAmzQci3zWZF8idvLtRDSBG7hhhLhgPwC0G73hdFkIHwGiy5GkR6d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="360726744"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="360726744"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 08:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="694298872"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="694298872"
Received: from lzhiguno-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.165])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 08:10:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
Date: Wed, 28 Jun 2023 18:10:15 +0300
Message-ID: <87o7kzsjvs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't preserve dpll_hw_state for
 slave crtc in Bigjoiner
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

On Wed, 28 Jun 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> If we are using Bigjoiner dpll_hw_state is supposed to be exactly
> same as for master crtc, so no need to save it's state for slave crtc.

Could this help with [1]?

BR,
Jani.

[1] https://gitlab.freedesktop.org/drm/intel/-/issues/8720

>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 43d6ba980780..c3e93bdde29d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4568,7 +4568,6 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>  	saved_state->uapi = slave_crtc_state->uapi;
>  	saved_state->scaler_state = slave_crtc_state->scaler_state;
>  	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
> -	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
>  	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
>  
>  	intel_crtc_free_hw_state(slave_crtc_state);

-- 
Jani Nikula, Intel Open Source Graphics Center

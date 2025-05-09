Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876D8AB10CD
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EA010EA10;
	Fri,  9 May 2025 10:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WY0eDdPs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD1A10EA13;
 Fri,  9 May 2025 10:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746786846; x=1778322846;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oRT0K2ZZhDHYhQn053sonhnNpLWqGN2RBbKUbQiOgwo=;
 b=WY0eDdPslL2HVlJ5RxRL/g/KcEE1llfuyXBXtOg1GZQGreTARbS8fh/O
 AeR2xcvVoP6Fdm3Qmd1cBogyRMJKvvFk+XJRlAtJI15YF/agUasiU74vy
 AEwQtGMI703q3fNRrvcfvb+qlX20jaRtQIGOghsODDfJ4KlDjz4MlUGTS
 11p1Ujtiv2MhIhs3CIoPaeGkBfAj2+9XyCHtcdkjeTZzCBEOWIh1ojGvQ
 RcVJi+A52HYAnfj3sAoc3wAsT0VjjNwkgwP36lK98F/W4n9o3y/nooxfZ
 nmqav1nOnnH5CErpt0oKACirK8c1Vb/GkOPu922XZL/PCis9fLhBOh2+C A==;
X-CSE-ConnectionGUID: 0h28EHbOSv2SDfsiVgUKPA==
X-CSE-MsgGUID: nWB67sW9RnaAgR+9dLSeTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48727665"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48727665"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:34:06 -0700
X-CSE-ConnectionGUID: syor/m8+SiGhPuMulG3rOA==
X-CSE-MsgGUID: oTq6U1ZKRwi+2JMJDYqMBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="167662692"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:33:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 18/18] drm/i915/dpll: Rename intel_update_active_dpll
In-Reply-To: <20250509042729.1152004-19-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
 <20250509042729.1152004-19-suraj.kandpal@intel.com>
Date: Fri, 09 May 2025 13:33:41 +0300
Message-ID: <87wmaqjcoq.fsf@intel.com>
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

On Fri, 09 May 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Rename intel_update_active_dpll to intel_dpll_update_active in an
> effort to have function names which are exported to start with
> filenames they are exported from.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 66dea34ebcd3..be26e6b4bc97 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3650,7 +3650,7 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
>  
>  	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
>  					 intel_crtc_joined_pipe_mask(crtc_state))
> -		intel_update_active_dpll(state, pipe_crtc, encoder);
> +		intel_dpll_update_active(state, pipe_crtc, encoder);
>  }
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 05714e6fbad5..939d92b4cf0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4472,7 +4472,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
>  }
>  
>  /**
> - * intel_update_active_dpll - update the active DPLL for a CRTC/encoder
> + * intel_dpll_update_active - update the active DPLL for a CRTC/encoder
>   * @state: atomic state
>   * @crtc: the CRTC for which to update the active DPLL
>   * @encoder: encoder determining the type of port DPLL
> @@ -4481,7 +4481,7 @@ void intel_dpll_release(struct intel_atomic_state *state,
>   * from the port DPLLs reserved previously by intel_dpll_reserve(). The
>   * DPLL selected will be based on the current mode of the encoder's port.
>   */
> -void intel_update_active_dpll(struct intel_atomic_state *state,
> +void intel_dpll_update_active(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc,
>  			      struct intel_encoder *encoder)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index c2658ad409e4..821ffcc4b8d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -409,7 +409,7 @@ void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
>  				 struct intel_dpll_state *shared_dpll_state);
>  void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
>  			      enum icl_port_dpll_id port_dpll_id);
> -void intel_update_active_dpll(struct intel_atomic_state *state,
> +void intel_dpll_update_active(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc,
>  			      struct intel_encoder *encoder);
>  int intel_dpll_get_freq(struct intel_crtc_state *crtc_state,

-- 
Jani Nikula, Intel

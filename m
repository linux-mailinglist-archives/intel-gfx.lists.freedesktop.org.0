Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE5BAB10F5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A3910EA15;
	Fri,  9 May 2025 10:43:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WxC+MHzr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A60410EA15;
 Fri,  9 May 2025 10:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746787396; x=1778323396;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=e+s90RBoejuiSAn8yNFaymaUNdaIbZ0eXa/i7zpY5hM=;
 b=WxC+MHzrixZtF3vk45cvsO1nSUbx5jpS/4IzbDLvM1e7j7JrjQhphd5s
 BkAOFoCUTM9BhJJydKZ586oE+nWt9ETce/x0RjvbqT4hvv05z/YU0/nQG
 LF8vSUtvdlJbOuBoj0aB4rsUkhold5WRK98yGv/rjQaRamOfstSiRXe4Z
 FSuZFePNmcV9OrH892qTMUre1KLF+DKykHAF881RV1SDDy3CjCvtP6+b3
 tA8UCrS5Vd8PnaCccVHEcz6lOv/lXHxqHDEcMe/BLzPmepZS8QqVqInJA
 l2XqZFfpfT7HlGI6YKCxkPI5Equp6GZrnOIC2g0N+7dzb8RgbRZWLIaF5 g==;
X-CSE-ConnectionGUID: FPrBhHA3SPGIHaAa9v/JVw==
X-CSE-MsgGUID: 2pMOzYsyRzGH/w9AsqqayA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="47867897"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="47867897"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:43:14 -0700
X-CSE-ConnectionGUID: sbQveA0ISYW/IeWfqgf/Fw==
X-CSE-MsgGUID: SAEw32LpQkKCaLyUwJbfGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136466076"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 03:43:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/alpm: Make intel_alpm_enable_sink
 available for PSR
In-Reply-To: <20250508141701.3878486-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
 <20250508141701.3878486-2-jouni.hogander@intel.com>
Date: Fri, 09 May 2025 13:43:08 +0300
Message-ID: <87tt5ujc8z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 08 May 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We want to enable sink ALPM from PSR code. Make intel_alpm_enable_sink
> available for PSR.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 11 +++++++++--
>  drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
>  2 files changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/=
i915/display/intel_alpm.c
> index 1bf08b80c23f..9442483058d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -426,8 +426,15 @@ void intel_alpm_pre_plane_update(struct intel_atomic=
_state *state,
>  	}
>  }
>=20=20
> -static void intel_alpm_enable_sink(struct intel_dp *intel_dp,
> -				   const struct intel_crtc_state *crtc_state)
> +/**
> + * intel_alpm_enable_sink - Enable ALPM on sink
> + * @intel_dp: Intel DP struct
> + * @crtc_state: Intel CRTC struct
> + *
> + * This function is enabling DPCD on sink based on information from crtc=
_state.
> + */

Perhaps surprisingly I'm not a big fan of kernel-doc for all the simple
little functions like this.

The function name already says what it does, the parameters are
self-explanatory.

The kernel-doc is not even pulled into the Sphinx build... and why would
it be, nobody reading the kernel documentation would be interested in
this small detail.

I might add a small regular comment about writing DPCD as needed... but
might not.

The documentation comments we absolutely need more are the high level
descriptions at the top of files, which is a glaring omission in
intel_alpm.c (and many other places). What is ALPM, what does it do,
how, why, etc.

See commit b031ef5ea8b1 ("drm/i915/mst: add beginnings of DP MST
documentation") or intel_dp_mst.c for the kind of comments I'd love to
have more.

I'm not insisting you do that now, but perhaps consider dropping the
kernel-doc.


BR,
Jani.


> +void intel_alpm_enable_sink(struct intel_dp *intel_dp,
> +			    const struct intel_crtc_state *crtc_state)
>  {
>  	u8 val;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/=
i915/display/intel_alpm.h
> index d7126d65b60f..c9fe21e3e72c 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -23,6 +23,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *in=
tel_dp,
>  				    struct drm_connector_state *conn_state);
>  void intel_alpm_configure(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
> +void intel_alpm_enable_sink(struct intel_dp *intel_dp,
> +			    const struct intel_crtc_state *crtc_state);
>  void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
>  				 struct intel_crtc *crtc);
>  void intel_alpm_post_plane_update(struct intel_atomic_state *state,

--=20
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE127EA002
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0DD10E3B9;
	Mon, 13 Nov 2023 15:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EA510E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889514; x=1731425514;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7uHd/kXFiNc+/NcR7yx6JLhFZGr8byhGwkwzOasKVnQ=;
 b=kt4orqYiTaFCqK2X9uJnedCjuoxYEjGOppCOyer6paMsk3LfgBN0MJT2
 /VKugdw3wHiZLWFifVGz3xlrKTFHPFh4A5DSlMzyY9RucZ/MN0H1YSX8B
 oOcNYXX/uQ0BEc58GJbiVKCsoYBjl+TUJ1HH5j545xH+nIxtlMCZlfWJe
 xl32VVXnWJIR9hdaz5XTeTvl9MdtW+N1eGcJvLxhaoYNh5mGzrDCaqFIE
 Dwqt53enKaQy/W9b/5Bm0goT/DpEZLO9j/NNbAjocMSKURfWJzXC77l3S
 Qx29K8Z5fOqMYLjjX4b1Dltb2z+rhxzERxUYmrE7lHtQaPpx+2Bdoe/G/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="369791479"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="369791479"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="830264363"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="830264363"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:31:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231106211915.13406-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-2-ville.syrjala@linux.intel.com>
Date: Mon, 13 Nov 2023 17:31:49 +0200
Message-ID: <87fs19vfdm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915: Check pipe active state in
 {planes, vrr}_{enabling, disabling}()
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

On Mon, 06 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> {planes,vrr}_{enabling,disabling}() are supposed to indicate
> whether the specific hardware feature is supposed to be enabling
> or disabling. That can only makes sense if the pipe is active
> overall. So check for that before we go poking at the hardware.
>
> I think we're semi-safe currently on due to:
> - intel_pre_plane_update() doesn't get called when the pipe
>   was not-active prior to the commit, but this is actually a bug.
>   This saves vrr_disabling(), and vrr_enabling() is called from
>   deeper down where we have already checked hw.active.
> - active_planes mirrors the crtc's hw.active
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 9e9c03287869..f24c410cbd8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -902,12 +902,18 @@ static bool needs_async_flip_vtd_wa(const struct in=
tel_crtc_state *crtc_state)
>  static bool planes_enabling(const struct intel_crtc_state *old_crtc_stat=
e,
>  			    const struct intel_crtc_state *new_crtc_state)
>  {
> +	if (!new_crtc_state->hw.active)
> +		return false;
> +
>  	return is_enabling(active_planes, old_crtc_state, new_crtc_state);
>  }
>=20=20
>  static bool planes_disabling(const struct intel_crtc_state *old_crtc_sta=
te,
>  			     const struct intel_crtc_state *new_crtc_state)
>  {
> +	if (!old_crtc_state->hw.active)
> +		return false;
> +
>  	return is_disabling(active_planes, old_crtc_state, new_crtc_state);
>  }
>=20=20
> @@ -924,6 +930,9 @@ static bool vrr_params_changed(const struct intel_crt=
c_state *old_crtc_state,
>  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>  			 const struct intel_crtc_state *new_crtc_state)
>  {
> +	if (!new_crtc_state->hw.active)
> +		return false;
> +
>  	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
>  		(new_crtc_state->vrr.enable &&
>  		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
> @@ -933,6 +942,9 @@ static bool vrr_enabling(const struct intel_crtc_stat=
e *old_crtc_state,
>  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
>  			  const struct intel_crtc_state *new_crtc_state)
>  {
> +	if (!old_crtc_state->hw.active)
> +		return false;
> +
>  	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
>  		(old_crtc_state->vrr.enable &&
>  		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||

--=20
Jani Nikula, Intel

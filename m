Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9337DBA12
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 13:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5D710E2B5;
	Mon, 30 Oct 2023 12:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAA310E2B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698669862; x=1730205862;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=C+eCWpxlxD5dzVwHjABWLCTa/NiVWzajBof+NDlukWs=;
 b=A8KIdnsES/8PWN3xZZ1avZilanEtBnk0Uol2ixh0+jZN1Kl5E8x3y06E
 vFCRKyjfkHoh9iJDeSj23VcX/0FDX2m0Z+t/qFAc0TQAAziZ191EXbp5U
 15wBhnmy2v1hekAGW9gBK5srjNKmzY/kYI3BiIAOPGFcJupKhN2oob5/y
 ikaLkZJOgnaHBV0dSR0PhVRiRwBMosPEmQ4nNkIBIkDWH02ODbdqBGfkC
 t8dK2UH6i0GFBIRj7TmsB6hD1Z3EiGkmduX2UogEETMdE+AoCNhIeK/X4
 tmrUHDE/rCCFkrnI1Zbl1MGFY3htZuJBHapkU0dzopptx6A1O86+5UIz7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="391925012"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="391925012"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="1091610179"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="1091610179"
Received: from squtub-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.238])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:44:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231018154123.5479-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
 <20231018154123.5479-4-ville.syrjala@linux.intel.com>
Date: Mon, 30 Oct 2023 14:44:09 +0200
Message-ID: <87h6m85lgm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/mst: Clear ACT just before
 triggering payload allocation
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

On Wed, 18 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Follow the bspec sequqnece more closely and clear ACT sent just
> before triggering the allocation. Can't see why we'd want to
> deviate from the spec sequence here.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 57eb581b8a50..3c66a3e3cc5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -791,8 +791,6 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>=20=20
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>=20=20
> -	clear_act_sent(encoder, pipe_config);
> -
>  	if (intel_dp_is_uhbr(pipe_config)) {
>  		const struct drm_display_mode *adjusted_mode =3D
>  			&pipe_config->hw.adjusted_mode;
> @@ -806,6 +804,8 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>=20=20
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>=20=20
> +	clear_act_sent(encoder, pipe_config);
> +
>  	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
>  		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);

--=20
Jani Nikula, Intel

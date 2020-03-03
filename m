Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C70501783D9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8E06E947;
	Tue,  3 Mar 2020 20:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5642B6E947
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 20:21:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 12:21:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="412881303"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 03 Mar 2020 12:21:43 -0800
Date: Tue, 3 Mar 2020 12:21:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200303202143.GP174531@mdroper-desk1.amr.corp.intel.com>
References: <20200302231421.224322-1-jose.souza@intel.com>
 <20200302231421.224322-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302231421.224322-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Move and restrict
 Wa_1408615072
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 02, 2020 at 03:14:21PM -0800, Jos=E9 Roberto de Souza wrote:
> Following the changes in the previous patch
> "drm/i915/gen11: Moving WAs to rcs_engine_wa_init()" also moving TGL
> Wa_1408615072 to rcs_engine_wa_init() this way after a engine
> reset it will be reapplied also restricting it to B0 as it is fixed in
> B0 stepping.

I think you meant to say "restricting it to *A0* as it is fixed in B0?"

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> =

> BSpec: 52890
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  drivers/gpu/drm/i915/intel_pm.c             | 4 ----
>  2 files changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 90e1c48dd6be..cb7d85c42f13 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1380,6 +1380,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  		 * Wa_14010229206:tgl
>  		 */
>  		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> +
> +		/* Wa_1408615072:tgl */
> +		wa_masked_en(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +			     VSUNIT_CLKGATE_DIS_TGL);
>  	}
>  =

>  	if (IS_TIGERLAKE(i915)) {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index d3df00445787..e7f36ebc282d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6792,10 +6792,6 @@ static void tgl_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  	u32 vd_pg_enable =3D 0;
>  	unsigned int i;
>  =

> -	/* Wa_1408615072:tgl */
> -	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -			 0, VSUNIT_CLKGATE_DIS_TGL);
> -
>  	/* This is not a WA. Enable VD HCP & MFX_ENC powergate */
>  	for (i =3D 0; i < I915_MAX_VCS; i++) {
>  		if (HAS_ENGINE(dev_priv, _VCS(i)))
> -- =

> 2.25.1
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

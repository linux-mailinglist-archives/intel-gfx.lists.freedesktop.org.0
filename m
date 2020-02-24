Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 784B416AB55
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9FAC89568;
	Mon, 24 Feb 2020 16:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0744D89568
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 16:27:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 08:27:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="349947947"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2020 08:27:32 -0800
Date: Mon, 24 Feb 2020 08:27:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200224162732.GJ3112363@mdroper-desk1.amr.corp.intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
 <20200222020815.50599-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222020815.50599-4-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/tgl: Add Wa_1409085225,
 Wa_14010229206
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

On Fri, Feb 21, 2020 at 06:08:11PM -0800, Jos=E9 Roberto de Souza wrote:
> From: Matt Atwood <matthew.s.atwood@intel.com>
> =

> Disable Push Constant buffer addition for TGL.
> =

> v2: typos, add additional Wa reference
> v3: use REG_BIT macro, move to rcs_engine_wa_init, clean up commit
> message.
> =

> Bspec: 52890
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 3 +++
>  2 files changed, 9 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index fbed5bdc9e04..e9619c493e6a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1369,6 +1369,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  		wa_masked_en(wal,
>  			     GEN7_ROW_CHICKEN2,
>  			     GEN12_DISABLE_EARLY_READ);
> +
> +		/*
> +		 * Wa_1409085225:tgl
> +		 * Wa_14010229206:tgl
> +		 */
> +		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
>  	}
>  =

>  	if (IS_TIGERLAKE(i915)) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 49872a1dc7a4..78164fa9e574 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9159,6 +9159,9 @@ enum {
>  #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
>  #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
>  =

> +#define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
> +#define   GEN12_DISABLE_TDL_PUSH	REG_BIT(9)
> +
>  #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
>  #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
>  =

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

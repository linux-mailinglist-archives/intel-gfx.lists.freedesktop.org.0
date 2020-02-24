Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C6816AB36
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D0C6E588;
	Mon, 24 Feb 2020 16:20:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B616E588
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 16:20:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 08:20:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="435953004"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with ESMTP; 24 Feb 2020 08:20:20 -0800
Date: Mon, 24 Feb 2020 08:20:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200224162020.GI3112363@mdroper-desk1.amr.corp.intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
 <20200222020815.50599-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222020815.50599-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/tgl: Implement Wa_1409804808
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

On Fri, Feb 21, 2020 at 06:08:09PM -0800, Jos=E9 Roberto de Souza wrote:
> This workaround the CS not done issue on PIPE_CONTROL.
> =

> BSpec: 52890
> BSpec: 46218
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 5 +++--
>  2 files changed, 9 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 887e0dc701f7..57a5a39ee902 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1367,6 +1367,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  			     GEN12_DISABLE_EARLY_READ);
>  	}
>  =

> +	if (IS_TIGERLAKE(i915)) {
> +		/* Wa_1409804808:tgl */
> +		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
> +			     GEN12_PUSH_CONSTANT_DEREFERENCE_HOLD_DISABLE);
> +	}
> +
>  	if (IS_GEN(i915, 11)) {
>  		/* This is not an Wa. Enable for better image quality */
>  		wa_masked_en(wal,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f45b5e86ec63..cfc238ffd4ae 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9149,8 +9149,9 @@ enum {
>  #define   THROTTLE_12_5				(7 << 2)
>  #define   DISABLE_EARLY_EOT			(1 << 1)
>  =

> -#define GEN7_ROW_CHICKEN2		_MMIO(0xe4f4)
> -#define GEN12_DISABLE_EARLY_READ	BIT(14)
> +#define GEN7_ROW_CHICKEN2				_MMIO(0xe4f4)
> +#define GEN12_DISABLE_EARLY_READ			BIT(14)
> +#define GEN12_PUSH_CONSTANT_DEREFERENCE_HOLD_DISABLE	BIT(8)

We should probably take this opportunity to s/BIT/REG_BIT/ too.

This is also kind of a long name.  You could potentially shorten some of
the words like we do for other bit names.  E.g.,
GEN12_PUSH_CONST_DEREF_HOLD_DIS..  Up to you.

Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  =

>  #define GEN7_ROW_CHICKEN2_GT2		_MMIO(0xf4f4)
>  #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
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

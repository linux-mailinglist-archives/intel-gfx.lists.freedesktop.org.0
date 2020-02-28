Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FFF174157
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 22:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07826E11B;
	Fri, 28 Feb 2020 21:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB6476E11B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 21:16:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 13:16:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="231203653"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 28 Feb 2020 13:16:56 -0800
Date: Fri, 28 Feb 2020 13:16:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200228211656.GC174531@mdroper-desk1.amr.corp.intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
 <20200227220101.321671-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227220101.321671-8-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 08/11] drm/i915/tgl: Add note about
 Wa_1409142259
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

On Thu, Feb 27, 2020 at 02:00:58PM -0800, Jos=E9 Roberto de Souza wrote:
> Different issues with the same fix, so justing adding
> Wa_1409142259, Wa_1409252684, Wa_1409217633, Wa_1409207793,
> Wa_1409178076 and 1408979724 to the comment so other devs can check if
> this Was were implemetend with a simple grep.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 0cdd3c50e0ae..ba0265763484 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -580,7 +580,15 @@ static void icl_ctx_workarounds_init(struct intel_en=
gine_cs *engine,
>  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				     struct i915_wa_list *wal)
>  {
> -	/* Wa_1409142259:tgl */
> +	/*
> +	 * Wa_1409142259:tgl
> +	 * Wa_1409347922:tgl
> +	 * Wa_1409252684:tgl
> +	 * Wa_1409217633:tgl
> +	 * Wa_1409207793:tgl
> +	 * Wa_1409178076:tgl
> +	 * Wa_1408979724:tgl
> +	 */
>  	WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
>  			  GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
>  =

> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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

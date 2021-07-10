Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFD73C32F0
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 07:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CF26EAD2;
	Sat, 10 Jul 2021 05:06:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C446EAD2
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 05:06:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273642326"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273642326"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 22:06:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="458570467"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 22:06:06 -0700
Date: Fri, 9 Jul 2021 22:06:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210710050604.GP951094@mdroper-desk1.amr.corp.intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708211827.288601-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Implement Wa_1508744258
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

On Thu, Jul 08, 2021 at 02:18:22PM -0700, Jos=E9 Roberto de Souza wrote:
> Same bit was required for Wa_14012131227 in DG1 now it is also

This is a DG1-specific number; the general lineage number given here and
in the comment should be 22011054531 (and this lineage number does apply
to TGL, RKL, ADL-S, ADL-P, and DG1 too).

> required as Wa_1508744258 to TGL, RKL, DG1, ADL-S and ADL-P.

Technically it's still working its way through the process to become
official on RKL, but given that it's already an official workaround
under the other number, I think it's safe to assume this one will become
official too.

> =

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index e5e3f820074a9..c346229e2be00 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -670,6 +670,13 @@ static void gen12_ctx_workarounds_init(struct intel_=
engine_cs *engine,
>  	       FF_MODE2_GS_TIMER_MASK,
>  	       FF_MODE2_GS_TIMER_224,
>  	       0);
> +
> +	/*
> +	 * Wa_14012131227:dg1
> +	 * Wa_1508744258:tgl,rkl,dg1,adl-s,adl-p
> +	 */
> +	wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
> +		     GEN9_RHWO_OPTIMIZATION_DISABLE);
>  }
>  =

>  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> -- =

> 2.32.0
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

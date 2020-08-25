Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E55F0252363
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 00:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC876E9CB;
	Tue, 25 Aug 2020 22:11:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295D96E9CB
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 22:11:19 +0000 (UTC)
IronPort-SDR: U6zhxhlC/Kg1ZWA+CeBpfFauLaaqpVhgdZCYGu8l98zBLZHKi5dUMM/NibtqOYP2Dpewg+U8hl
 4jgqo5HIbklg==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="135754987"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="135754987"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:11:18 -0700
IronPort-SDR: yUvDeKyg8zj2H81OJLeAyx5BaRu51zhGbdebVV7dib7iHXLQd2EhNEiSkPvsnp70W8vevAVKzs
 V9XLztr9C+Uw==
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="500014612"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:11:18 -0700
Date: Tue, 25 Aug 2020 15:11:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <20200825221117.GI3934000@mdroper-desk1.amr.corp.intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
 <20200825215434.6009-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825215434.6009-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Implement WA_1406941453
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 25, 2020 at 02:54:34PM -0700, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> =

> Enable HW Default flip for small PL.
> =

> bspec: 52890
> bspec: 53508
> bspec: 53273
> =

> v2: rebase to drm-tip
> v3: move from ctx to gt workarounds. Remove whitelist.

I think we actually want to move this one to the rcs_engine_wa_init()
since the register appears to be part of the render engine specifically.
Since this register doesn't hold its value across engine resets[*] we
want to re-apply the workaround any time the RCS engine is reset.

[*] There's been a bit of ambiguity and confusion about what registers
do/don't survive engine resets, but we're starting to get more clarity
on that from the hardware teams now.  There's usually a field in the
bspec's register description that says "GTIReset" --- if that says "DEV"
it's an engine register that should be handled in rcs_engine_wa_init (or
xcs_engine_wa_init for other engine types), whereas if it says "BUS"
it's a GT register that should go in gt_workarounds_init.


Matt

> =

> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index a3f72b75c61e..0aecb97fd41c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1211,6 +1211,9 @@ gen12_gt_workarounds_init(struct drm_i915_private *=
i915,
>  			  struct i915_wa_list *wal)
>  {
>  	wa_init_mcr(i915, wal);
> +
> +	/* Wa_1406941453:gen12 */
> +	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE, ENABLE_SMALLPL);
>  }
>  =

>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index ac691927e29d..ab4b1abd4364 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9315,6 +9315,7 @@ enum {
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
>  =

>  #define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
> +#define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  =

>  /* IVYBRIDGE DPF */
> -- =

> 2.28.0
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

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D058816AABE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:08:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41556E55E;
	Mon, 24 Feb 2020 16:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBFA6E55E
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 16:08:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 08:08:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="229877771"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 24 Feb 2020 08:08:52 -0800
Date: Mon, 24 Feb 2020 08:08:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200224160852.GH3112363@mdroper-desk1.amr.corp.intel.com>
References: <20200222020815.50599-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200222020815.50599-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/tgl: Extend Wa_1409825376
 stepping
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

On Fri, Feb 21, 2020 at 06:08:08PM -0800, Jos=E9 Roberto de Souza wrote:
> This workaround is only fixed in C0 stepping to extend it to B0 too.
> =

> BSpec: 52890
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 1 +
>  drivers/gpu/drm/i915/intel_pm.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 4305ccc4c683..57282b719ece 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1575,6 +1575,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_ICELAKE(p) && IS_REVID(p, since, until))
>  =

>  #define TGL_REVID_A0		0x0
> +#define TGL_REVID_B0		0x1

revid 1 is CPU + GT B0, but already has display C0 stepping
incorporated.  I forget...do the display workaround limits in the bspec
refer to display stepping or CPU/GT stepping?

For reference, bspec 44455.


Matt

>  =

>  #define IS_TGL_REVID(p, since, until) \
>  	(IS_TIGERLAKE(p) && IS_REVID(p, since, until))
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index ffac0b862ca5..33149bccd117 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6852,7 +6852,7 @@ static void tgl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  		   I915_READ(POWERGATE_ENABLE) | vd_pg_enable);
>  =

>  	/* Wa_1409825376:tgl (pre-prod)*/
> -	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
> +	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
>  		I915_WRITE(GEN9_CLKGATE_DIS_3, I915_READ(GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
>  }
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

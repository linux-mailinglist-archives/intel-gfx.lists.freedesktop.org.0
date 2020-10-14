Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 001E828DF78
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DCC6EA37;
	Wed, 14 Oct 2020 10:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 562A46EA37
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 10:57:04 +0000 (UTC)
IronPort-SDR: 7vejP7s+ZFi46h2VWIt+l8OsOBHGVXaTBRgfzGtQ16F9LCXU4H73Veh3BR27I3GyY821Qc4VpY
 Ghp64pmscuXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166204104"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="166204104"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 03:57:03 -0700
IronPort-SDR: HoQZaiY7PyMoJH3ANi8IVxVvJf8EhAdktOSF4se+lqKkgawtma5ln1wptDBF7h74IbpMtqkoKZ
 zVV+Mor075GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="356600197"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Oct 2020 03:57:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Oct 2020 13:56:59 +0300
Date: Wed, 14 Oct 2020 13:56:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201014105659.GF6112@intel.com>
References: <20201014103152.21935-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014103152.21935-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fixup tgl mocs for PTE tracking
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 14, 2020 at 11:31:52AM +0100, Chris Wilson wrote:
> Forcing mocs:1 [used for our winsys follows-pte mode] to be cached
> caused display glitches. Though it is documented as deprecated (and so
> likely behaves as uncached) use the follow-pte bit and force it out of
> L3 cache.

The MOCS PTE -> L3=3DUC thing is something we should perhaps roll out to
every platform. IIRC at least the earlier platforms were documented to
evict from L3 into LLC/eLLC even when LLC/eLLC is marked UC. Though
IIRC we don't have that L3 control in the kernel on all the platforms,
so to be totally correct we'd need to fix userspace as well.

For SKL+ I see this in the spec:
"Index 'd63 is used for two purposes. =

 It is used by the L3 for all its evictions. The programming of the
 index 'd63 is expected to allow LLC cacheability to enable coherent
 flows to be maintained.
 It is also used by hardware to force L3 uncacheable cycles. The
 prgramming of the index #63 is expected to make the surface L3
 uncacheable."

Though we're not even programming that for pre-icl, so not sure
if the spec is just confused or what.

Anyways, makes sense to me:
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Fixes: 4d8a5cfe3b13 ("drm/i915/gt: Initialize reserved and unspecified MO=
CS indices")
> Testcase: igt/kms_frontbuffer_tracking
> Testcase: igt/kms_big_fb
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index 39179a3eee98..093b32db3428 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -243,8 +243,9 @@ static const struct drm_i915_mocs_entry tgl_mocs_tabl=
e[] =3D {
>  	 * only, __init_mocs_table() take care to program unused index with
>  	 * this entry.
>  	 */
> -	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> -		   L3_3_WB),
> +	MOCS_ENTRY(I915_MOCS_PTE,
> +		   LE_0_PAGETABLE | LE_TC_0_PAGETABLE,
> +		   L3_1_UC),
>  	GEN11_MOCS_ENTRIES,
>  =

>  	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6171BD4AC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 08:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9D46E42B;
	Wed, 29 Apr 2020 06:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18A506E42B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 06:32:45 +0000 (UTC)
IronPort-SDR: ySI8GAkPa78IxmJYld1gmTFT+1VmkJVe7RpJAEpyN4oOmsC8kUSW82CD4y+gtzZEfxR97uOUoE
 kHwUyQEB4Ipw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 23:32:44 -0700
IronPort-SDR: PytqkgtSVZWag+CDnhmIaavYRkBDmObaGSt/Dwjy5qFKq1kx6OOA47orVMMg4xio3XyQIrtYni
 7+o2c8JDTaiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,330,1583222400"; d="scan'208";a="261342775"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 28 Apr 2020 23:32:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 09:32:40 +0300
Date: Wed, 29 Apr 2020 09:32:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Alexei Podtelezhnikov <apodtele@gmail.com>
Message-ID: <20200429063240.GL6112@intel.com>
References: <20200428135744.GI6112@intel.com>
 <20200429032750.4836-1-apodtele@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429032750.4836-1-apodtele@gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [patch] drm/i915: Update Slylake PCI IDs
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

On Tue, Apr 28, 2020 at 11:27:50PM -0400, Alexei Podtelezhnikov wrote:
> Add three new devices 0x1513, 0x1515, and 0x1517 also known as =


typo 0x15 vs. 0x19

> iSKLULTGT15, iSKLULXGT15, and iSKLDTGT15. Reclassify 0x1923, 0x1927, =

> and 0x192A according to specifications.

I'd make this three separate patches, just in case we have to revert
some of these in the future. Most worried about the 0x192a case since
the evidence is rather poor.

Otherwise lgtm.

> =

> Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com> =

> ---
>  include/drm/i915_pciids.h | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> =

> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 1d2c1221..c12bce9e 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -331,15 +331,18 @@
>  	INTEL_VGA_DEVICE(0x22b3, info)
>  =

>  #define INTEL_SKL_ULT_GT1_IDS(info) \
> -	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
> +	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
> +	INTEL_VGA_DEVICE(0x1913, info) /* ULT GT1.5 */
>  =

>  #define INTEL_SKL_ULX_GT1_IDS(info) \
> -	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
> +	INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
> +	INTEL_VGA_DEVICE(0x1915, info) /* ULX GT1.5 */
>  =

>  #define INTEL_SKL_GT1_IDS(info)	\
>  	INTEL_SKL_ULT_GT1_IDS(info), \
>  	INTEL_SKL_ULX_GT1_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
> +	INTEL_VGA_DEVICE(0x1917, info), /* DT  GT1.5 */ \
>  	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
>  	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
>  =

> @@ -359,21 +362,21 @@
>  	INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
>  =

>  #define INTEL_SKL_ULT_GT3_IDS(info) \
> -	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3 */
> +	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
> +	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 28W */ \
> +	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3e */
>  =

>  #define INTEL_SKL_GT3_IDS(info) \
>  	INTEL_SKL_ULT_GT3_IDS(info), \
> -	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
> -	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 */ \
> +	INTEL_VGA_DEVICE(0x192A, info), /* SRV GT3 */ \
>  	INTEL_VGA_DEVICE(0x192B, info), /* Halo GT3 */ \
> -	INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3 */
> +	INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3e */
>  =

>  #define INTEL_SKL_GT4_IDS(info) \
>  	INTEL_VGA_DEVICE(0x1932, info), /* DT GT4 */ \
>  	INTEL_VGA_DEVICE(0x193B, info), /* Halo GT4 */ \
>  	INTEL_VGA_DEVICE(0x193D, info), /* WKS GT4 */ \
> -	INTEL_VGA_DEVICE(0x192A, info), /* SRV GT4 */ \
> -	INTEL_VGA_DEVICE(0x193A, info)  /* SRV GT4e */
> +	INTEL_VGA_DEVICE(0x193A, info)  /* SRV GT4 */
>  =

>  #define INTEL_SKL_IDS(info)	 \
>  	INTEL_SKL_GT1_IDS(info), \
> --
> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB451BA5A4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 16:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148BA89E98;
	Mon, 27 Apr 2020 14:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1695789E98
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 14:02:51 +0000 (UTC)
IronPort-SDR: k3mVdgvc5Ri2qBweMsVA4xqsXtgL+uNtIIfBOy9b4CGk1SaJFuNs/WkPZTn/LLgRh8okU2jzmv
 lDGHIfgJFp+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 07:02:51 -0700
IronPort-SDR: D0225cvsNTK/ze0VmUgMmsmS3rjUGAKyce/yE46eaEbQRjOfbtWBUWN3XrwS0/wd2JCQ4N5osH
 m8Lo3w2Pd0+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="302381981"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Apr 2020 07:02:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Apr 2020 17:02:48 +0300
Date: Mon, 27 Apr 2020 17:02:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Alexei Podtelezhnikov <apodtele@gmail.com>
Message-ID: <20200427140248.GG6112@intel.com>
References: <20200427032232.4307-1-apodtele@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427032232.4307-1-apodtele@gmail.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [patch] PCI ID review
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

On Sun, Apr 26, 2020 at 11:22:32PM -0400, Alexei Podtelezhnikov wrote:
> In reverse order:
> - Add SKL GT1.5
> - Remove wrong and non-existant devices
> - Add Gen3/Gen4 twin IGDs
> - Amend historic records =


Please split into separate patches and justify each with
a proper commit message.

> =

> Signed-off-by: Alexei Podtelezhnikov <apodtele@gmail.com>
> ---
>  src/i915_pciids.h | 72 +++++++++++++++++++++++++++++++++++++------------=
------
>  1 file changed, 49 insertions(+), 23 deletions(-)
> =

> diff --git a/src/i915_pciids.h b/src/i915_pciids.h
> index 1d2c1221..a9c88eab 100644
> --- a/src/i915_pciids.h
> +++ b/src/i915_pciids.h
> @@ -47,7 +47,11 @@ Amend historic records
>  	0x030000, 0xff0000,			\
>  	(unsigned long) info }
>  =

> +#define INTEL_I740_IDS(info)					\
> +	INTEL_VGA_DEVICE(0x7800, info)  /* I740 */
> +
>  #define INTEL_I810_IDS(info)					\
> +	INTEL_VGA_DEVICE(0x1240, info), /* I752 */		\
>  	INTEL_VGA_DEVICE(0x7121, info), /* I810 */		\
>  	INTEL_VGA_DEVICE(0x7123, info), /* I810_DC100 */	\
>  	INTEL_VGA_DEVICE(0x7125, info)  /* I810_E */
> @@ -62,57 +66,79 @@ Add Gen3/Gen4 twin IGDs
>  	INTEL_VGA_DEVICE(0x2562, info)
>  =

>  #define INTEL_I85X_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x3582, info), /* I855_GM */ \
> -	INTEL_VGA_DEVICE(0x358e, info)
> +	INTEL_VGA_DEVICE(0x3582, info), /* I855_GM */   \
> +	INTEL_VGA_DEVICE(0x358e, info)  /* I854 */
>  =

>  #define INTEL_I865G_IDS(info)				\
>  	INTEL_VGA_DEVICE(0x2572, info) /* I865_G */
>  =

>  #define INTEL_I915G_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x2582, info), /* I915_G */ \
> +	INTEL_VGA_DEVICE(0x2582, info), /* I915_G */    \
> +	INTEL_VGA_DEVICE(0x2782, info), /* I915_G */    \
>  	INTEL_VGA_DEVICE(0x258a, info)  /* E7221_G */
>  =

>  #define INTEL_I915GM_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x2592, info) /* I915_GM */
> +	INTEL_VGA_DEVICE(0x2592, info), /* I915_GM */   \
> +	INTEL_VGA_DEVICE(0x2792, info)  /* I915_GM */
>  =

>  #define INTEL_I945G_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x2772, info) /* I945_G */
> +	INTEL_VGA_DEVICE(0x2772, info), /* I945_G */    \
> +	INTEL_VGA_DEVICE(0x2776, info)  /* I945_G */
>  =

>  #define INTEL_I945GM_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x27a2, info), /* I945_GM */ \
> +	INTEL_VGA_DEVICE(0x27a2, info), /* I945_GM */   \
> +	INTEL_VGA_DEVICE(0x27a6, info), /* I945_GM */   \
>  	INTEL_VGA_DEVICE(0x27ae, info)  /* I945_GME */
>  =

>  #define INTEL_I965G_IDS(info)				\
>  	INTEL_VGA_DEVICE(0x2972, info), /* I946_GZ */	\
> +	INTEL_VGA_DEVICE(0x2973, info), /* I946_GZ */	\
>  	INTEL_VGA_DEVICE(0x2982, info),	/* G35_G */	\
> +	INTEL_VGA_DEVICE(0x2983, info),	/* G35_G */	\
>  	INTEL_VGA_DEVICE(0x2992, info),	/* I965_Q */	\
> -	INTEL_VGA_DEVICE(0x29a2, info)	/* I965_G */
> +	INTEL_VGA_DEVICE(0x2993, info),	/* I965_Q */	\
> +	INTEL_VGA_DEVICE(0x29a2, info),	/* I965_G */    \
> +	INTEL_VGA_DEVICE(0x29a3, info)	/* I965_G */
>  =

>  #define INTEL_G33_IDS(info)				\
>  	INTEL_VGA_DEVICE(0x29b2, info), /* Q35_G */ \
> +	INTEL_VGA_DEVICE(0x29b3, info), /* Q35_G */ \
>  	INTEL_VGA_DEVICE(0x29c2, info),	/* G33_G */ \
> -	INTEL_VGA_DEVICE(0x29d2, info)	/* Q33_G */
> +	INTEL_VGA_DEVICE(0x29c3, info),	/* G33_G */ \
> +	INTEL_VGA_DEVICE(0x29d2, info),	/* Q33_G */ \
> +	INTEL_VGA_DEVICE(0x29d3, info)	/* Q33_G */
>  =

>  #define INTEL_I965GM_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x2a02, info),	/* I965_GM */ \
> -	INTEL_VGA_DEVICE(0x2a12, info)  /* I965_GME */
> +	INTEL_VGA_DEVICE(0x2a02, info),	/* I965_GM */   \
> +	INTEL_VGA_DEVICE(0x2a03, info),	/* I965_GM */   \
> +	INTEL_VGA_DEVICE(0x2a12, info), /* I965_GME */  \
> +	INTEL_VGA_DEVICE(0x2a13, info)  /* I965_GME */
>  =

>  #define INTEL_GM45_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x2a42, info) /* GM45_G */
> +	INTEL_VGA_DEVICE(0x2a42, info), /* GM45_G */    \
> +	INTEL_VGA_DEVICE(0x2a43, info)  /* GM45_G */
>  =

>  #define INTEL_G45_IDS(info)				\
> -	INTEL_VGA_DEVICE(0x2e02, info), /* IGD_E_G */ \
> -	INTEL_VGA_DEVICE(0x2e12, info), /* Q45_G */ \
> -	INTEL_VGA_DEVICE(0x2e22, info), /* G45_G */ \
> -	INTEL_VGA_DEVICE(0x2e32, info), /* G41_G */ \
> -	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
> -	INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
> +	INTEL_VGA_DEVICE(0x2e02, info), /* IGD_E_G */   \
> +	INTEL_VGA_DEVICE(0x2e03, info), /* IGD_E_G */   \
> +	INTEL_VGA_DEVICE(0x2e12, info), /* Q45_G */     \
> +	INTEL_VGA_DEVICE(0x2e13, info), /* Q45_G */     \
> +	INTEL_VGA_DEVICE(0x2e22, info), /* G45_G */     \
> +	INTEL_VGA_DEVICE(0x2e23, info), /* G45_G */     \
> +	INTEL_VGA_DEVICE(0x2e32, info), /* G41_G */     \
> +	INTEL_VGA_DEVICE(0x2e33, info), /* G41_G */     \
> +	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */     \
> +	INTEL_VGA_DEVICE(0x2e43, info), /* B43_G */     \
> +	INTEL_VGA_DEVICE(0x2e92, info),	/* B43_G.1 */   \
> +	INTEL_VGA_DEVICE(0x2e93, info)	/* B43_G.1 */
>  =

>  #define INTEL_PINEVIEW_G_IDS(info) \
> -	INTEL_VGA_DEVICE(0xa001, info)
> +	INTEL_VGA_DEVICE(0xa001, info), \
> +	INTEL_VGA_DEVICE(0xa002, info)
>  =

>  #define INTEL_PINEVIEW_M_IDS(info) \
> -	INTEL_VGA_DEVICE(0xa011, info)
> +	INTEL_VGA_DEVICE(0xa011, info), \
> +	INTEL_VGA_DEVICE(0xa012, info)
>  =

>  #define INTEL_IRONLAKE_D_IDS(info) \
>  	INTEL_VGA_DEVICE(0x0042, info)
> @@ -258,9 +284,7 @@ Remove wrong and non-existant devices
>  	INTEL_VGA_DEVICE(0x0f30, info), \
>  	INTEL_VGA_DEVICE(0x0f31, info), \
>  	INTEL_VGA_DEVICE(0x0f32, info), \
> -	INTEL_VGA_DEVICE(0x0f33, info), \
> -	INTEL_VGA_DEVICE(0x0157, info), \
> -	INTEL_VGA_DEVICE(0x0155, info)
> +	INTEL_VGA_DEVICE(0x0f33, info)
>  =

>  #define INTEL_BDW_ULT_GT1_IDS(info) \
>  	INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
> @@ -331,7 +355,8 @@ Add SKL GT1.5
>  	INTEL_VGA_DEVICE(0x22b3, info)
>  =

>  #define INTEL_SKL_ULT_GT1_IDS(info) \
> -	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
> +	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
> +	INTEL_VGA_DEVICE(0x1913, info) /* ULT GT1.5 */
>  =

>  #define INTEL_SKL_ULX_GT1_IDS(info) \
>  	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
> @@ -340,6 +365,7 @@ Add SKL GT1.5
>  	INTEL_SKL_ULT_GT1_IDS(info), \
>  	INTEL_SKL_ULX_GT1_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
> +	INTEL_VGA_DEVICE(0x1917, info), /* DT  GT1.5 */ \
>  	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
>  	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
>  =

> --
> 2.26.1
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

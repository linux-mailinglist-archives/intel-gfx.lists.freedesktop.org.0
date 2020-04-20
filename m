Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BF61B1168
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 18:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC806E802;
	Mon, 20 Apr 2020 16:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B376E7DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 16:21:07 +0000 (UTC)
IronPort-SDR: PeIBmwpJU7lzHhlTUX5BoSDBXqjtTmPM2xHCIlenkbEzGxywjmBTWXZ1czfGqzUl1YQZUa+5YN
 7YoAxvwg+PoQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 09:21:06 -0700
IronPort-SDR: i9dS2dpCSqcjfiGiQnPn+QSAti1mlQtDJIClSVyZNJR2DAg2BcGVUHRnXybq+c7xlQ6u6YyrmX
 T9lSS9lR89Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="290266442"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 20 Apr 2020 09:21:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 19:21:03 +0300
Date: Mon, 20 Apr 2020 19:21:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Liwei Song <liwei.song@windriver.com>
Message-ID: <20200420162103.GV6112@intel.com>
References: <20200420082207.25581-1-liwei.song@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420082207.25581-1-liwei.song@windriver.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v3] Sync i915_pciids upto
 8717c6b7414f
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
Cc: intel-gfx@lists.freedesktop.org, Chris <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 20, 2020 at 04:22:07PM +0800, Liwei Song wrote:
> Import the kernel's i915_pciids.h, up to:
> =

> commit 8717c6b7414ffb890672276dccc284c23078ac0e
> Author: Lee Shawn C <shawn.c.lee@intel.com>
> Date:   Tue Dec 10 23:04:15 2019 +0800
> =

>     drm/i915/cml: Separate U series pci id from origianl list.
> =

> Signed-off-by: Liwei Song <liwei.song@windriver.com>
> ---
> V2 -> V3:
>    Add 4 new info blocks and add sound support for them.
> =

> Change since V1:
>   replace old definition in intel_module.c and dri3-test.c
> ---
>  src/i915_pciids.h     | 265 ++++++++++++++++++++++++++++++++----------
>  src/intel_module.c    |  92 ++++++++++++++-
>  src/sna/gen9_render.c |  48 ++++++++
>  test/dri3-test.c      |   2 +-
>  4 files changed, 344 insertions(+), 63 deletions(-)
> =

> diff --git a/src/i915_pciids.h b/src/i915_pciids.h
> index fd965ffbb92e..1d2c12219f44 100644
> --- a/src/i915_pciids.h
> +++ b/src/i915_pciids.h
> @@ -108,8 +108,10 @@
>  	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
>  	INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
>  =

> -#define INTEL_PINEVIEW_IDS(info)			\
> -	INTEL_VGA_DEVICE(0xa001, info),			\
> +#define INTEL_PINEVIEW_G_IDS(info) \
> +	INTEL_VGA_DEVICE(0xa001, info)
> +
> +#define INTEL_PINEVIEW_M_IDS(info) \
>  	INTEL_VGA_DEVICE(0xa011, info)
>  =

>  #define INTEL_IRONLAKE_D_IDS(info) \
> @@ -166,7 +168,18 @@
<snip>
> @@ -357,7 +443,7 @@ static const struct pci_id_match intel_device_match[]=
 =3D {
>  	INTEL_I945GM_IDS(&intel_i945_info),
>  =

>  	INTEL_G33_IDS(&intel_g33_info),
> -	INTEL_PINEVIEW_IDS(&intel_g33_info),
> +	INTEL_PINEVIEW_G_IDS(&intel_g33_info),

Lost the other PNV.

>  =

>  	INTEL_I965G_IDS(&intel_i965_info),
>  	INTEL_I965GM_IDS(&intel_i965_info),

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

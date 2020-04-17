Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E391AD9F2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 11:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1301E6E10D;
	Fri, 17 Apr 2020 09:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3714 seconds by postgrey-1.36 at gabe;
 Fri, 17 Apr 2020 09:32:06 UTC
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4812A6E3DB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 09:32:06 +0000 (UTC)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03H9Vuej015915
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Fri, 17 Apr 2020 02:31:56 -0700 (PDT)
Received: from [128.224.162.157] (128.224.162.157) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 17 Apr 2020 02:31:55 -0700
To: Chris <chris@chris-wilson.co.uk>
References: <20200417082957.2974-1-liwei.song@windriver.com>
From: Liwei Song <liwei.song@windriver.com>
Message-ID: <30649db8-9ad0-40dd-139b-1afb14ae36f8@windriver.com>
Date: Fri, 17 Apr 2020 17:31:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
In-Reply-To: <20200417082957.2974-1-liwei.song@windriver.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel] Sync i915_pciids upto
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sorry, please ignore this review, send a wrong version by mistake.

Liwei.

On 4/17/20 16:29, Liwei Song wrote:
> Import the kernel's i915_pciids.h, up to:
> 
> commit 8717c6b7414ffb890672276dccc284c23078ac0e
> Author: Lee Shawn C <shawn.c.lee@intel.com>
> Date:   Tue Dec 10 23:04:15 2019 +0800
> 
>     drm/i915/cml: Separate U series pci id from origianl list.
> 
> Signed-off-by: Liwei Song <liwei.song@windriver.com>
> ---
>  src/i915_pciids.h | 265 +++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 204 insertions(+), 61 deletions(-)
> 
> diff --git a/src/i915_pciids.h b/src/i915_pciids.h
> index fd965ffbb92e..1d2c12219f44 100644
> --- a/src/i915_pciids.h
> +++ b/src/i915_pciids.h
> @@ -108,8 +108,10 @@
>  	INTEL_VGA_DEVICE(0x2e42, info), /* B43_G */ \
>  	INTEL_VGA_DEVICE(0x2e92, info)	/* B43_G.1 */
>  
> -#define INTEL_PINEVIEW_IDS(info)			\
> -	INTEL_VGA_DEVICE(0xa001, info),			\
> +#define INTEL_PINEVIEW_G_IDS(info) \
> +	INTEL_VGA_DEVICE(0xa001, info)
> +
> +#define INTEL_PINEVIEW_M_IDS(info) \
>  	INTEL_VGA_DEVICE(0xa011, info)
>  
>  #define INTEL_IRONLAKE_D_IDS(info) \
> @@ -166,7 +168,18 @@
>  #define INTEL_IVB_Q_IDS(info) \
>  	INTEL_QUANTA_VGA_DEVICE(info) /* Quanta transcode */
>  
> +#define INTEL_HSW_ULT_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x0A02, info), /* ULT GT1 desktop */ \
> +	INTEL_VGA_DEVICE(0x0A0A, info), /* ULT GT1 server */ \
> +	INTEL_VGA_DEVICE(0x0A0B, info), /* ULT GT1 reserved */ \
> +	INTEL_VGA_DEVICE(0x0A06, info)  /* ULT GT1 mobile */
> +
> +#define INTEL_HSW_ULX_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x0A0E, info) /* ULX GT1 mobile */
> +
>  #define INTEL_HSW_GT1_IDS(info) \
> +	INTEL_HSW_ULT_GT1_IDS(info), \
> +	INTEL_HSW_ULX_GT1_IDS(info), \
>  	INTEL_VGA_DEVICE(0x0402, info), /* GT1 desktop */ \
>  	INTEL_VGA_DEVICE(0x040a, info), /* GT1 server */ \
>  	INTEL_VGA_DEVICE(0x040B, info), /* GT1 reserved */ \
> @@ -175,20 +188,26 @@
>  	INTEL_VGA_DEVICE(0x0C0A, info), /* SDV GT1 server */ \
>  	INTEL_VGA_DEVICE(0x0C0B, info), /* SDV GT1 reserved */ \
>  	INTEL_VGA_DEVICE(0x0C0E, info), /* SDV GT1 reserved */ \
> -	INTEL_VGA_DEVICE(0x0A02, info), /* ULT GT1 desktop */ \
> -	INTEL_VGA_DEVICE(0x0A0A, info), /* ULT GT1 server */ \
> -	INTEL_VGA_DEVICE(0x0A0B, info), /* ULT GT1 reserved */ \
>  	INTEL_VGA_DEVICE(0x0D02, info), /* CRW GT1 desktop */ \
>  	INTEL_VGA_DEVICE(0x0D0A, info), /* CRW GT1 server */ \
>  	INTEL_VGA_DEVICE(0x0D0B, info), /* CRW GT1 reserved */ \
>  	INTEL_VGA_DEVICE(0x0D0E, info), /* CRW GT1 reserved */ \
>  	INTEL_VGA_DEVICE(0x0406, info), /* GT1 mobile */ \
>  	INTEL_VGA_DEVICE(0x0C06, info), /* SDV GT1 mobile */ \
> -	INTEL_VGA_DEVICE(0x0A06, info), /* ULT GT1 mobile */ \
> -	INTEL_VGA_DEVICE(0x0A0E, info), /* ULX GT1 mobile */ \
>  	INTEL_VGA_DEVICE(0x0D06, info)  /* CRW GT1 mobile */
>  
> +#define INTEL_HSW_ULT_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x0A12, info), /* ULT GT2 desktop */ \
> +	INTEL_VGA_DEVICE(0x0A1A, info), /* ULT GT2 server */ \
> +	INTEL_VGA_DEVICE(0x0A1B, info), /* ULT GT2 reserved */ \
> +	INTEL_VGA_DEVICE(0x0A16, info)  /* ULT GT2 mobile */
> +
> +#define INTEL_HSW_ULX_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x0A1E, info) /* ULX GT2 mobile */ \
> +
>  #define INTEL_HSW_GT2_IDS(info) \
> +	INTEL_HSW_ULT_GT2_IDS(info), \
> +	INTEL_HSW_ULX_GT2_IDS(info), \
>  	INTEL_VGA_DEVICE(0x0412, info), /* GT2 desktop */ \
>  	INTEL_VGA_DEVICE(0x041a, info), /* GT2 server */ \
>  	INTEL_VGA_DEVICE(0x041B, info), /* GT2 reserved */ \
> @@ -197,9 +216,6 @@
>  	INTEL_VGA_DEVICE(0x0C1A, info), /* SDV GT2 server */ \
>  	INTEL_VGA_DEVICE(0x0C1B, info), /* SDV GT2 reserved */ \
>  	INTEL_VGA_DEVICE(0x0C1E, info), /* SDV GT2 reserved */ \
> -	INTEL_VGA_DEVICE(0x0A12, info), /* ULT GT2 desktop */ \
> -	INTEL_VGA_DEVICE(0x0A1A, info), /* ULT GT2 server */ \
> -	INTEL_VGA_DEVICE(0x0A1B, info), /* ULT GT2 reserved */ \
>  	INTEL_VGA_DEVICE(0x0D12, info), /* CRW GT2 desktop */ \
>  	INTEL_VGA_DEVICE(0x0D1A, info), /* CRW GT2 server */ \
>  	INTEL_VGA_DEVICE(0x0D1B, info), /* CRW GT2 reserved */ \
> @@ -207,11 +223,17 @@
>  	INTEL_VGA_DEVICE(0x0416, info), /* GT2 mobile */ \
>  	INTEL_VGA_DEVICE(0x0426, info), /* GT2 mobile */ \
>  	INTEL_VGA_DEVICE(0x0C16, info), /* SDV GT2 mobile */ \
> -	INTEL_VGA_DEVICE(0x0A16, info), /* ULT GT2 mobile */ \
> -	INTEL_VGA_DEVICE(0x0A1E, info), /* ULX GT2 mobile */ \
>  	INTEL_VGA_DEVICE(0x0D16, info)  /* CRW GT2 mobile */
>  
> +#define INTEL_HSW_ULT_GT3_IDS(info) \
> +	INTEL_VGA_DEVICE(0x0A22, info), /* ULT GT3 desktop */ \
> +	INTEL_VGA_DEVICE(0x0A2A, info), /* ULT GT3 server */ \
> +	INTEL_VGA_DEVICE(0x0A2B, info), /* ULT GT3 reserved */ \
> +	INTEL_VGA_DEVICE(0x0A26, info), /* ULT GT3 mobile */ \
> +	INTEL_VGA_DEVICE(0x0A2E, info)  /* ULT GT3 reserved */
> +
>  #define INTEL_HSW_GT3_IDS(info) \
> +	INTEL_HSW_ULT_GT3_IDS(info), \
>  	INTEL_VGA_DEVICE(0x0422, info), /* GT3 desktop */ \
>  	INTEL_VGA_DEVICE(0x042a, info), /* GT3 server */ \
>  	INTEL_VGA_DEVICE(0x042B, info), /* GT3 reserved */ \
> @@ -220,16 +242,11 @@
>  	INTEL_VGA_DEVICE(0x0C2A, info), /* SDV GT3 server */ \
>  	INTEL_VGA_DEVICE(0x0C2B, info), /* SDV GT3 reserved */ \
>  	INTEL_VGA_DEVICE(0x0C2E, info), /* SDV GT3 reserved */ \
> -	INTEL_VGA_DEVICE(0x0A22, info), /* ULT GT3 desktop */ \
> -	INTEL_VGA_DEVICE(0x0A2A, info), /* ULT GT3 server */ \
> -	INTEL_VGA_DEVICE(0x0A2B, info), /* ULT GT3 reserved */ \
>  	INTEL_VGA_DEVICE(0x0D22, info), /* CRW GT3 desktop */ \
>  	INTEL_VGA_DEVICE(0x0D2A, info), /* CRW GT3 server */ \
>  	INTEL_VGA_DEVICE(0x0D2B, info), /* CRW GT3 reserved */ \
>  	INTEL_VGA_DEVICE(0x0D2E, info), /* CRW GT3 reserved */ \
>  	INTEL_VGA_DEVICE(0x0C26, info), /* SDV GT3 mobile */ \
> -	INTEL_VGA_DEVICE(0x0A26, info), /* ULT GT3 mobile */ \
> -	INTEL_VGA_DEVICE(0x0A2E, info), /* ULT GT3 reserved */ \
>  	INTEL_VGA_DEVICE(0x0D26, info)  /* CRW GT3 mobile */
>  
>  #define INTEL_HSW_IDS(info) \
> @@ -245,35 +262,59 @@
>  	INTEL_VGA_DEVICE(0x0157, info), \
>  	INTEL_VGA_DEVICE(0x0155, info)
>  
> -#define INTEL_BDW_GT1_IDS(info)  \
> -	INTEL_VGA_DEVICE(0x1602, info), /* GT1 ULT */ \
> +#define INTEL_BDW_ULT_GT1_IDS(info) \
>  	INTEL_VGA_DEVICE(0x1606, info), /* GT1 ULT */ \
> -	INTEL_VGA_DEVICE(0x160B, info), /* GT1 Iris */ \
> -	INTEL_VGA_DEVICE(0x160E, info), /* GT1 ULX */ \
> +	INTEL_VGA_DEVICE(0x160B, info)  /* GT1 Iris */
> +
> +#define INTEL_BDW_ULX_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x160E, info) /* GT1 ULX */
> +
> +#define INTEL_BDW_GT1_IDS(info) \
> +	INTEL_BDW_ULT_GT1_IDS(info), \
> +	INTEL_BDW_ULX_GT1_IDS(info), \
> +	INTEL_VGA_DEVICE(0x1602, info), /* GT1 ULT */ \
>  	INTEL_VGA_DEVICE(0x160A, info), /* GT1 Server */ \
>  	INTEL_VGA_DEVICE(0x160D, info)  /* GT1 Workstation */
>  
> -#define INTEL_BDW_GT2_IDS(info)  \
> -	INTEL_VGA_DEVICE(0x1612, info), /* GT2 Halo */	\
> +#define INTEL_BDW_ULT_GT2_IDS(info) \
>  	INTEL_VGA_DEVICE(0x1616, info), /* GT2 ULT */ \
> -	INTEL_VGA_DEVICE(0x161B, info), /* GT2 ULT */ \
> -	INTEL_VGA_DEVICE(0x161E, info), /* GT2 ULX */ \
> +	INTEL_VGA_DEVICE(0x161B, info)  /* GT2 ULT */
> +
> +#define INTEL_BDW_ULX_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x161E, info) /* GT2 ULX */
> +
> +#define INTEL_BDW_GT2_IDS(info) \
> +	INTEL_BDW_ULT_GT2_IDS(info), \
> +	INTEL_BDW_ULX_GT2_IDS(info), \
> +	INTEL_VGA_DEVICE(0x1612, info), /* GT2 Halo */	\
>  	INTEL_VGA_DEVICE(0x161A, info), /* GT2 Server */ \
>  	INTEL_VGA_DEVICE(0x161D, info)  /* GT2 Workstation */
>  
> +#define INTEL_BDW_ULT_GT3_IDS(info) \
> +	INTEL_VGA_DEVICE(0x1626, info), /* ULT */ \
> +	INTEL_VGA_DEVICE(0x162B, info)  /* Iris */ \
> +
> +#define INTEL_BDW_ULX_GT3_IDS(info) \
> +	INTEL_VGA_DEVICE(0x162E, info)  /* ULX */
> +
>  #define INTEL_BDW_GT3_IDS(info) \
> +	INTEL_BDW_ULT_GT3_IDS(info), \
> +	INTEL_BDW_ULX_GT3_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1622, info), /* ULT */ \
> -	INTEL_VGA_DEVICE(0x1626, info), /* ULT */ \
> -	INTEL_VGA_DEVICE(0x162B, info), /* Iris */ \
> -	INTEL_VGA_DEVICE(0x162E, info),  /* ULX */\
>  	INTEL_VGA_DEVICE(0x162A, info), /* Server */ \
>  	INTEL_VGA_DEVICE(0x162D, info)  /* Workstation */
>  
> +#define INTEL_BDW_ULT_RSVD_IDS(info) \
> +	INTEL_VGA_DEVICE(0x1636, info), /* ULT */ \
> +	INTEL_VGA_DEVICE(0x163B, info)  /* Iris */
> +
> +#define INTEL_BDW_ULX_RSVD_IDS(info) \
> +	INTEL_VGA_DEVICE(0x163E, info) /* ULX */
> +
>  #define INTEL_BDW_RSVD_IDS(info) \
> +	INTEL_BDW_ULT_RSVD_IDS(info), \
> +	INTEL_BDW_ULX_RSVD_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1632, info), /* ULT */ \
> -	INTEL_VGA_DEVICE(0x1636, info), /* ULT */ \
> -	INTEL_VGA_DEVICE(0x163B, info), /* Iris */ \
> -	INTEL_VGA_DEVICE(0x163E, info), /* ULX */ \
>  	INTEL_VGA_DEVICE(0x163A, info), /* Server */ \
>  	INTEL_VGA_DEVICE(0x163D, info)  /* Workstation */
>  
> @@ -289,25 +330,40 @@
>  	INTEL_VGA_DEVICE(0x22b2, info), \
>  	INTEL_VGA_DEVICE(0x22b3, info)
>  
> +#define INTEL_SKL_ULT_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x1906, info) /* ULT GT1 */
> +
> +#define INTEL_SKL_ULX_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x190E, info) /* ULX GT1 */
> +
>  #define INTEL_SKL_GT1_IDS(info)	\
> -	INTEL_VGA_DEVICE(0x1906, info), /* ULT GT1 */ \
> -	INTEL_VGA_DEVICE(0x190E, info), /* ULX GT1 */ \
> +	INTEL_SKL_ULT_GT1_IDS(info), \
> +	INTEL_SKL_ULX_GT1_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1902, info), /* DT  GT1 */ \
>  	INTEL_VGA_DEVICE(0x190B, info), /* Halo GT1 */ \
>  	INTEL_VGA_DEVICE(0x190A, info) /* SRV GT1 */
>  
> -#define INTEL_SKL_GT2_IDS(info)	\
> +#define INTEL_SKL_ULT_GT2_IDS(info) \
>  	INTEL_VGA_DEVICE(0x1916, info), /* ULT GT2 */ \
> -	INTEL_VGA_DEVICE(0x1921, info), /* ULT GT2F */ \
> -	INTEL_VGA_DEVICE(0x191E, info), /* ULX GT2 */ \
> +	INTEL_VGA_DEVICE(0x1921, info)  /* ULT GT2F */
> +
> +#define INTEL_SKL_ULX_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x191E, info) /* ULX GT2 */
> +
> +#define INTEL_SKL_GT2_IDS(info)	\
> +	INTEL_SKL_ULT_GT2_IDS(info), \
> +	INTEL_SKL_ULX_GT2_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1912, info), /* DT  GT2 */ \
>  	INTEL_VGA_DEVICE(0x191B, info), /* Halo GT2 */ \
>  	INTEL_VGA_DEVICE(0x191A, info), /* SRV GT2 */ \
>  	INTEL_VGA_DEVICE(0x191D, info)  /* WKS GT2 */
>  
> +#define INTEL_SKL_ULT_GT3_IDS(info) \
> +	INTEL_VGA_DEVICE(0x1926, info) /* ULT GT3 */
> +
>  #define INTEL_SKL_GT3_IDS(info) \
> +	INTEL_SKL_ULT_GT3_IDS(info), \
>  	INTEL_VGA_DEVICE(0x1923, info), /* ULT GT3 */ \
> -	INTEL_VGA_DEVICE(0x1926, info), /* ULT GT3 */ \
>  	INTEL_VGA_DEVICE(0x1927, info), /* ULT GT3 */ \
>  	INTEL_VGA_DEVICE(0x192B, info), /* Halo GT3 */ \
>  	INTEL_VGA_DEVICE(0x192D, info)  /* SRV GT3 */
> @@ -336,45 +392,91 @@
>  	INTEL_VGA_DEVICE(0x3184, info), \
>  	INTEL_VGA_DEVICE(0x3185, info)
>  
> -#define INTEL_KBL_GT1_IDS(info)	\
> -	INTEL_VGA_DEVICE(0x5913, info), /* ULT GT1.5 */ \
> -	INTEL_VGA_DEVICE(0x5915, info), /* ULX GT1.5 */ \
> +#define INTEL_KBL_ULT_GT1_IDS(info) \
>  	INTEL_VGA_DEVICE(0x5906, info), /* ULT GT1 */ \
> +	INTEL_VGA_DEVICE(0x5913, info)  /* ULT GT1.5 */
> +
> +#define INTEL_KBL_ULX_GT1_IDS(info) \
>  	INTEL_VGA_DEVICE(0x590E, info), /* ULX GT1 */ \
> +	INTEL_VGA_DEVICE(0x5915, info)  /* ULX GT1.5 */
> +
> +#define INTEL_KBL_GT1_IDS(info)	\
> +	INTEL_KBL_ULT_GT1_IDS(info), \
> +	INTEL_KBL_ULX_GT1_IDS(info), \
>  	INTEL_VGA_DEVICE(0x5902, info), /* DT  GT1 */ \
>  	INTEL_VGA_DEVICE(0x5908, info), /* Halo GT1 */ \
>  	INTEL_VGA_DEVICE(0x590B, info), /* Halo GT1 */ \
>  	INTEL_VGA_DEVICE(0x590A, info) /* SRV GT1 */
>  
> -#define INTEL_KBL_GT2_IDS(info)	\
> +#define INTEL_KBL_ULT_GT2_IDS(info) \
>  	INTEL_VGA_DEVICE(0x5916, info), /* ULT GT2 */ \
> +	INTEL_VGA_DEVICE(0x5921, info)  /* ULT GT2F */
> +
> +#define INTEL_KBL_ULX_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x591E, info)  /* ULX GT2 */
> +
> +#define INTEL_KBL_GT2_IDS(info)	\
> +	INTEL_KBL_ULT_GT2_IDS(info), \
> +	INTEL_KBL_ULX_GT2_IDS(info), \
>  	INTEL_VGA_DEVICE(0x5917, info), /* Mobile GT2 */ \
> -	INTEL_VGA_DEVICE(0x5921, info), /* ULT GT2F */ \
> -	INTEL_VGA_DEVICE(0x591E, info), /* ULX GT2 */ \
>  	INTEL_VGA_DEVICE(0x5912, info), /* DT  GT2 */ \
>  	INTEL_VGA_DEVICE(0x591B, info), /* Halo GT2 */ \
>  	INTEL_VGA_DEVICE(0x591A, info), /* SRV GT2 */ \
>  	INTEL_VGA_DEVICE(0x591D, info) /* WKS GT2 */
>  
> +#define INTEL_KBL_ULT_GT3_IDS(info) \
> +	INTEL_VGA_DEVICE(0x5926, info) /* ULT GT3 */
> +
>  #define INTEL_KBL_GT3_IDS(info) \
> +	INTEL_KBL_ULT_GT3_IDS(info), \
>  	INTEL_VGA_DEVICE(0x5923, info), /* ULT GT3 */ \
> -	INTEL_VGA_DEVICE(0x5926, info), /* ULT GT3 */ \
>  	INTEL_VGA_DEVICE(0x5927, info) /* ULT GT3 */
>  
>  #define INTEL_KBL_GT4_IDS(info) \
>  	INTEL_VGA_DEVICE(0x593B, info) /* Halo GT4 */
>  
>  /* AML/KBL Y GT2 */
> -#define INTEL_AML_GT2_IDS(info) \
> +#define INTEL_AML_KBL_GT2_IDS(info) \
>  	INTEL_VGA_DEVICE(0x591C, info),  /* ULX GT2 */ \
>  	INTEL_VGA_DEVICE(0x87C0, info) /* ULX GT2 */
>  
> +/* AML/CFL Y GT2 */
> +#define INTEL_AML_CFL_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x87CA, info)
> +
> +/* CML GT1 */
> +#define INTEL_CML_GT1_IDS(info)	\
> +	INTEL_VGA_DEVICE(0x9BA5, info), \
> +	INTEL_VGA_DEVICE(0x9BA8, info), \
> +	INTEL_VGA_DEVICE(0x9BA4, info), \
> +	INTEL_VGA_DEVICE(0x9BA2, info)
> +
> +#define INTEL_CML_U_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x9B21, info), \
> +	INTEL_VGA_DEVICE(0x9BAA, info), \
> +	INTEL_VGA_DEVICE(0x9BAC, info)
> +
> +/* CML GT2 */
> +#define INTEL_CML_GT2_IDS(info)	\
> +	INTEL_VGA_DEVICE(0x9BC5, info), \
> +	INTEL_VGA_DEVICE(0x9BC8, info), \
> +	INTEL_VGA_DEVICE(0x9BC4, info), \
> +	INTEL_VGA_DEVICE(0x9BC2, info), \
> +	INTEL_VGA_DEVICE(0x9BC6, info), \
> +	INTEL_VGA_DEVICE(0x9BE6, info), \
> +	INTEL_VGA_DEVICE(0x9BF6, info)
> +
> +#define INTEL_CML_U_GT2_IDS(info) \
> +	INTEL_VGA_DEVICE(0x9B41, info), \
> +	INTEL_VGA_DEVICE(0x9BCA, info), \
> +	INTEL_VGA_DEVICE(0x9BCC, info)
> +
>  #define INTEL_KBL_IDS(info) \
>  	INTEL_KBL_GT1_IDS(info), \
>  	INTEL_KBL_GT2_IDS(info), \
>  	INTEL_KBL_GT3_IDS(info), \
>  	INTEL_KBL_GT4_IDS(info), \
> -	INTEL_AML_GT2_IDS(info)
> +	INTEL_AML_KBL_GT2_IDS(info)
>  
>  /* CFL S */
>  #define INTEL_CFL_S_GT1_IDS(info) \
> @@ -390,6 +492,9 @@
>  	INTEL_VGA_DEVICE(0x3E9A, info)  /* SRV GT2 */
>  
>  /* CFL H */
> +#define INTEL_CFL_H_GT1_IDS(info) \
> +	INTEL_VGA_DEVICE(0x3E9C, info)
> +
>  #define INTEL_CFL_H_GT2_IDS(info) \
>  	INTEL_VGA_DEVICE(0x3E9B, info), /* Halo GT2 */ \
>  	INTEL_VGA_DEVICE(0x3E94, info)  /* Halo GT2 */
> @@ -407,30 +512,43 @@
>  
>  /* WHL/CFL U GT1 */
>  #define INTEL_WHL_U_GT1_IDS(info) \
> -	INTEL_VGA_DEVICE(0x3EA1, info)
> +	INTEL_VGA_DEVICE(0x3EA1, info), \
> +	INTEL_VGA_DEVICE(0x3EA4, info)
>  
>  /* WHL/CFL U GT2 */
>  #define INTEL_WHL_U_GT2_IDS(info) \
> -	INTEL_VGA_DEVICE(0x3EA0, info)
> +	INTEL_VGA_DEVICE(0x3EA0, info), \
> +	INTEL_VGA_DEVICE(0x3EA3, info)
>  
>  /* WHL/CFL U GT3 */
>  #define INTEL_WHL_U_GT3_IDS(info) \
> -	INTEL_VGA_DEVICE(0x3EA2, info), \
> -	INTEL_VGA_DEVICE(0x3EA3, info), \
> -	INTEL_VGA_DEVICE(0x3EA4, info)
> +	INTEL_VGA_DEVICE(0x3EA2, info)
>  
>  #define INTEL_CFL_IDS(info)	   \
>  	INTEL_CFL_S_GT1_IDS(info), \
>  	INTEL_CFL_S_GT2_IDS(info), \
> +	INTEL_CFL_H_GT1_IDS(info), \
>  	INTEL_CFL_H_GT2_IDS(info), \
>  	INTEL_CFL_U_GT2_IDS(info), \
>  	INTEL_CFL_U_GT3_IDS(info), \
>  	INTEL_WHL_U_GT1_IDS(info), \
>  	INTEL_WHL_U_GT2_IDS(info), \
> -	INTEL_WHL_U_GT3_IDS(info)
> +	INTEL_WHL_U_GT3_IDS(info), \
> +	INTEL_AML_CFL_GT2_IDS(info), \
> +	INTEL_CML_GT1_IDS(info), \
> +	INTEL_CML_GT2_IDS(info), \
> +	INTEL_CML_U_GT1_IDS(info), \
> +	INTEL_CML_U_GT2_IDS(info)
>  
>  /* CNL */
> +#define INTEL_CNL_PORT_F_IDS(info) \
> +	INTEL_VGA_DEVICE(0x5A54, info), \
> +	INTEL_VGA_DEVICE(0x5A5C, info), \
> +	INTEL_VGA_DEVICE(0x5A44, info), \
> +	INTEL_VGA_DEVICE(0x5A4C, info)
> +
>  #define INTEL_CNL_IDS(info) \
> +	INTEL_CNL_PORT_F_IDS(info), \
>  	INTEL_VGA_DEVICE(0x5A51, info), \
>  	INTEL_VGA_DEVICE(0x5A59, info), \
>  	INTEL_VGA_DEVICE(0x5A41, info), \
> @@ -440,22 +558,47 @@
>  	INTEL_VGA_DEVICE(0x5A42, info), \
>  	INTEL_VGA_DEVICE(0x5A4A, info), \
>  	INTEL_VGA_DEVICE(0x5A50, info), \
> -	INTEL_VGA_DEVICE(0x5A40, info), \
> -	INTEL_VGA_DEVICE(0x5A54, info), \
> -	INTEL_VGA_DEVICE(0x5A5C, info), \
> -	INTEL_VGA_DEVICE(0x5A44, info), \
> -	INTEL_VGA_DEVICE(0x5A4C, info)
> +	INTEL_VGA_DEVICE(0x5A40, info)
>  
>  /* ICL */
> -#define INTEL_ICL_11_IDS(info) \
> +#define INTEL_ICL_PORT_F_IDS(info) \
>  	INTEL_VGA_DEVICE(0x8A50, info), \
> -	INTEL_VGA_DEVICE(0x8A51, info), \
>  	INTEL_VGA_DEVICE(0x8A5C, info), \
> -	INTEL_VGA_DEVICE(0x8A5D, info), \
> +	INTEL_VGA_DEVICE(0x8A59, info),	\
> +	INTEL_VGA_DEVICE(0x8A58, info),	\
>  	INTEL_VGA_DEVICE(0x8A52, info), \
>  	INTEL_VGA_DEVICE(0x8A5A, info), \
>  	INTEL_VGA_DEVICE(0x8A5B, info), \
> +	INTEL_VGA_DEVICE(0x8A57, info), \
> +	INTEL_VGA_DEVICE(0x8A56, info), \
>  	INTEL_VGA_DEVICE(0x8A71, info), \
> -	INTEL_VGA_DEVICE(0x8A70, info)
> +	INTEL_VGA_DEVICE(0x8A70, info), \
> +	INTEL_VGA_DEVICE(0x8A53, info), \
> +	INTEL_VGA_DEVICE(0x8A54, info)
> +
> +#define INTEL_ICL_11_IDS(info) \
> +	INTEL_ICL_PORT_F_IDS(info), \
> +	INTEL_VGA_DEVICE(0x8A51, info), \
> +	INTEL_VGA_DEVICE(0x8A5D, info)
> +
> +/* EHL/JSL */
> +#define INTEL_EHL_IDS(info) \
> +	INTEL_VGA_DEVICE(0x4500, info),	\
> +	INTEL_VGA_DEVICE(0x4571, info), \
> +	INTEL_VGA_DEVICE(0x4551, info), \
> +	INTEL_VGA_DEVICE(0x4541, info), \
> +	INTEL_VGA_DEVICE(0x4E71, info), \
> +	INTEL_VGA_DEVICE(0x4E61, info), \
> +	INTEL_VGA_DEVICE(0x4E51, info)
> +
> +/* TGL */
> +#define INTEL_TGL_12_IDS(info) \
> +	INTEL_VGA_DEVICE(0x9A49, info), \
> +	INTEL_VGA_DEVICE(0x9A40, info), \
> +	INTEL_VGA_DEVICE(0x9A59, info), \
> +	INTEL_VGA_DEVICE(0x9A60, info), \
> +	INTEL_VGA_DEVICE(0x9A68, info), \
> +	INTEL_VGA_DEVICE(0x9A70, info), \
> +	INTEL_VGA_DEVICE(0x9A78, info)
>  
>  #endif /* _I915_PCIIDS_H */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

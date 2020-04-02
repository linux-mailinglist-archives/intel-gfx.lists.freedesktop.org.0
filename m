Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E517E19C7FC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 19:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1AF6EACD;
	Thu,  2 Apr 2020 17:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC77B6EACD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 17:27:55 +0000 (UTC)
IronPort-SDR: aIvhxu9d6QGlRZqNy5ip9oUuyncqZoH7ImuTtdzsF7aZWUQ3F0zWLeBv/fdImmgngwGh69gPKY
 fulbKi/BwYrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 10:27:54 -0700
IronPort-SDR: 4qVdLlJZkwFw+ADS/wWLg+JDx3x3kIOGIJeO0BCFEO+85D/fNalc7izYR/i8NN2U9a17dmFjUS
 SMQ0gkctZstA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="284852612"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 02 Apr 2020 10:27:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 20:27:50 +0300
Date: Thu, 2 Apr 2020 20:27:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402172750.GE13686@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
 <20200326181005.11775-8-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326181005.11775-8-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 07/10] drm/i915: Added required new
 PCode commands
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:10:02PM +0200, Stanislav Lisovskiy wrote:
> We need a new PCode request commands and reply codes
> to be added as a prepartion patch for QGV points
> restricting for new SAGV support.
> =

> v2: - Extracted those changes into separate patch
>       (Ville Syrj=E4l=E4)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h       | 4 ++++
>  drivers/gpu/drm/i915/intel_sideband.c | 2 ++
>  2 files changed, 6 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 9c53fe918be6..1a61db746c7e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8994,6 +8994,7 @@ enum {
>  #define     GEN7_PCODE_ILLEGAL_DATA		0x3
>  #define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
>  #define     GEN11_PCODE_LOCKED			0x6
> +#define     GEN11_PCODE_REJECTED		0x11
>  #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
>  #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
>  #define   GEN6_PCODE_READ_RC6VIDS		0x5
> @@ -9015,6 +9016,7 @@ enum {
>  #define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
>  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
> +#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
> @@ -9027,6 +9029,8 @@ enum {
>  #define     GEN9_SAGV_IS_DISABLED		0x1
>  #define     GEN9_SAGV_ENABLE			0x3
>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> +#define GEN11_PCODE_POINTS_RESTRICTED		0x0
> +#define GEN11_PCODE_POINTS_RESTRICTED_MASK	0x1

What are these? The indentation makes me thingk they are new commands,
but the placement totally disagrees with that.

>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915=
/intel_sideband.c
> index 1447e7516cb7..1e7dd6b6f103 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -370,6 +370,8 @@ static inline int gen7_check_mailbox_status(u32 mbox)
>  		return -ENXIO;
>  	case GEN11_PCODE_LOCKED:
>  		return -EBUSY;
> +	case GEN11_PCODE_REJECTED:
> +		return -EACCES;
>  	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
>  		return -EOVERFLOW;
>  	default:
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

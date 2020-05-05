Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561F1C53E1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 13:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D55C089F6D;
	Tue,  5 May 2020 11:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05F189F6D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 11:04:48 +0000 (UTC)
IronPort-SDR: v2QQsBUIU/8QuuUNgPspLRTphxPiloNYdoYsI8c7UiaIj+hllanKKshnBzgovX3IaPmFcy35Bf
 p+6d3eX7+hkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 04:04:33 -0700
IronPort-SDR: 3Y25HdQeyqr+sp6ln+AkjLZ7GkQhDoELmMYERMIvBL/BCh9F+CVh+EC7/mOxRvKd0BbIHhQCFu
 mFLoca0GraFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="248525442"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 05 May 2020 04:04:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 May 2020 14:04:30 +0300
Date: Tue, 5 May 2020 14:04:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200505110430.GI6112@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
 <20200505102247.32452-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505102247.32452-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v27 4/6] drm/i915: Added required new PCode
 commands
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

On Tue, May 05, 2020 at 01:22:45PM +0300, Stanislav Lisovskiy wrote:
> We need a new PCode request commands and reply codes
> to be added as a prepartion patch for QGV points
> restricting for new SAGV support.
> =

> v2: - Extracted those changes into separate patch
>       (Ville Syrj=E4l=E4)
> =

> v3: - Moved new PCode masks to another place from
>       PCode commands(Ville)
> =

> v4: - Moved new PCode masks to correspondent PCode
>       command, with identation(Ville)
>     - Changed naming to ICL_ instead of GEN11_
>       to fit more nicely into existing definition
>       style.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks. Pushed this one.

> ---
>  drivers/gpu/drm/i915/i915_reg.h       | 4 ++++
>  drivers/gpu/drm/i915/intel_sideband.c | 2 ++
>  2 files changed, 6 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index fd9f2904d93c..f23a18ee28f9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9064,6 +9064,7 @@ enum {
>  #define     GEN7_PCODE_ILLEGAL_DATA		0x3
>  #define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
>  #define     GEN11_PCODE_LOCKED			0x6
> +#define     GEN11_PCODE_REJECTED		0x11
>  #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
>  #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
>  #define   GEN6_PCODE_READ_RC6VIDS		0x5
> @@ -9085,6 +9086,9 @@ enum {
>  #define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
>  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
> +#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
> +#define     ICL_PCODE_POINTS_RESTRICTED		0x0
> +#define     ICL_PCODE_POINTS_RESTRICTED_MASK	0x1
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   ICL_PCODE_EXIT_TCCOLD			0x12
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915=
/intel_sideband.c
> index d5129c1dd452..916ccd1c0e96 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -371,6 +371,8 @@ static int gen7_check_mailbox_status(u32 mbox)
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

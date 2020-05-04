Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53391C3F7F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 18:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323F96E053;
	Mon,  4 May 2020 16:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 174A26E053
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 16:12:36 +0000 (UTC)
IronPort-SDR: 1dwaWFdY+FBTNP2mk2Yt6CoiD0wOl7lR9p3v3zmnY9Ar5tWc6CFxNAsHX9PThwVf7WBTSo7kV+
 ZzZpFm65emTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 09:12:35 -0700
IronPort-SDR: KMIOQZmzwXD6XLSzAcGAGo+ZaCZPNKq0vk5RX8j31iM0h+r349PMoOCK6qwwebIaQIBXBCet6c
 ccNcWvkg4g8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="304223457"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 May 2020 09:12:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 May 2020 19:12:32 +0300
Date: Mon, 4 May 2020 19:12:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200504161232.GE6112@intel.com>
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
 <20200423075902.21892-7-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423075902.21892-7-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v26 6/9] drm/i915: Added required new PCode
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

On Thu, Apr 23, 2020 at 10:58:59AM +0300, Stanislav Lisovskiy wrote:
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

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h       | 5 +++++
>  drivers/gpu/drm/i915/intel_sideband.c | 2 ++
>  2 files changed, 7 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 4a1965467374..5a077a921568 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9086,6 +9086,7 @@ enum {
>  #define     GEN7_PCODE_ILLEGAL_DATA		0x3
>  #define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
>  #define     GEN11_PCODE_LOCKED			0x6
> +#define     GEN11_PCODE_REJECTED		0x11
>  #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
>  #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
>  #define   GEN6_PCODE_READ_RC6VIDS		0x5
> @@ -9107,6 +9108,7 @@ enum {
>  #define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
>  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
> +#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   ICL_PCODE_EXIT_TCCOLD			0x12
> @@ -9140,6 +9142,9 @@ enum {
>  #define GEN8_GT_SLICE_INFO		_MMIO(0x138064)
>  #define   GEN8_LSLICESTAT_MASK		0x7
>  =

> +#define GEN11_PCODE_POINTS_RESTRICTED		0x0
> +#define GEN11_PCODE_POINTS_RESTRICTED_MASK	0x1

These still look misplaced. They are things you specify to the
ICL_PCODE_SAGV_DE_MEM_SS_CONFIG command no?

In the meantime pushed patches 2,3,7. With those it looks like
we should finally have sensible sagv support for pre-icl. Yay!

> +
>  #define CHV_POWER_SS0_SIG1		_MMIO(0xa720)
>  #define CHV_POWER_SS1_SIG1		_MMIO(0xa728)
>  #define   CHV_SS_PG_ENABLE		(1 << 1)
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915=
/intel_sideband.c
> index 14daf6af6854..59ef364549cf 100644
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

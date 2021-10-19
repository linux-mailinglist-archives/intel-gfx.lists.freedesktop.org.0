Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCCE43351D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 13:52:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8734F6EB94;
	Tue, 19 Oct 2021 11:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C866EB94
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 11:52:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="209282726"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="209282726"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:52:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="483189387"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 04:52:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, "Deak\, Imre" <imre.deak@intel.com>
In-Reply-To: <20210719235927.283173-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210719235927.283173-1-khaled.almahallawy@intel.com>
Date: Tue, 19 Oct 2021 14:52:15 +0300
Message-ID: <87bl3lqljk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Add missing TPS4 programming
 bits
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Jul 2021, Khaled Almahallawy <khaled.almahallawy@intel.com> wrot=
e:
> Bits 20:19 are used to set CP2520 Patterns 1/2/3 (refer to Specs:50484).
> TPS4 is CP2520 Pattern 3 (refer to DP2.0 spaces Table 3-11, DPCD 00248h
> LINK_QUAL_PATTERN_SELECT, and DP PHY 1.4 CTS - Appendix A - Compliance
> EYE Pattern(CP2520; Normative))
>
> For TPS4, setting bits 20:19 to value !=3D 00b, leads to a non-TPS4 patte=
rn.
> This is confirmed using DP Scope running DP1.4 PHY CTS.
>
> To avoid any accidental wrong setting of bits 20:19, set it correctly for
> TPS4 LT pattern selection. This programming sequence is the same used by =
EV.

Do we need this?

BR,
Jani.

>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> CC: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
>  drivers/gpu/drm/i915/i915_reg.h          | 4 ++++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 26a3aa73fcc4..54b4b28fdc74 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3412,6 +3412,8 @@ static void intel_ddi_set_link_train(struct intel_d=
p *intel_dp,
>  		break;
>  	case DP_TRAINING_PATTERN_4:
>  		temp |=3D DP_TP_CTL_LINK_TRAIN_PAT4;
> +		temp &=3D ~DP_TP_CTL_TRAIN_PAT4_SEL_MASK;
> +		temp |=3D DP_TP_CTL_TRAIN_PAT4_SEL_TP4a;
>  		break;
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 943fe485c662..a65998df9994 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10176,6 +10176,10 @@ enum skl_power_gate {
>  #define  DP_TP_CTL_MODE_SST			(0 << 27)
>  #define  DP_TP_CTL_MODE_MST			(1 << 27)
>  #define  DP_TP_CTL_FORCE_ACT			(1 << 25)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4a		(0 << 19)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4b		(1 << 19)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4c		(2 << 19)
>  #define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
>  #define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
>  #define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)

--=20
Jani Nikula, Intel Open Source Graphics Center

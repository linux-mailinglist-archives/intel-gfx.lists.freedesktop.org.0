Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A973A2EF6DF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:00:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1E288401;
	Fri,  8 Jan 2021 18:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1771688401
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:00:46 +0000 (UTC)
IronPort-SDR: H9XwCh77LGSSV2FM/NgGlFoxBvvkIy0WbRbQ1QX+7gK0Y5+3CHS/KOtB8Ey0aD8z9ajHTXbzT5
 tHw/iGAidbxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="157414846"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="157414846"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:00:45 -0800
IronPort-SDR: IV5PrnDXoZpzgWMf8+MxXS6Q0MrEB7llww5DOPEuMfciuP9gxTdbWXrTp0vm5YJ1h11y2OnBl0
 LYyPK28OFbqg==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="388252390"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:00:44 -0800
Date: Fri, 8 Jan 2021 10:00:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210108180043.GF3894148@mdroper-desk1.amr.corp.intel.com>
References: <20210108134802.21280-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108134802.21280-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix HTI port checking
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

On Fri, Jan 08, 2021 at 05:48:02AM -0800, Jos=E9 Roberto de Souza wrote:
> There was some misinterpretation of specification, when DDIX_USED is
> set, the next bit means 0 for DP and 1 for HDMI.
> =

> Anyways this misinterpretation is not causing any issues, this change
> is just to comply with specification.
> Also as for us it do not matters if it is HDMI or DP, not checking the
> port type that HTI is using.
> =

> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 +--
>  drivers/gpu/drm/i915/i915_reg.h          | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3df6913369bc..e90d1af1a54d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5321,8 +5321,7 @@ intel_ddi_max_lanes(struct intel_digital_port *dig_=
port)
>  static bool hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
>  {
>  	return i915->hti_state & HDPORT_ENABLED &&
> -		(i915->hti_state & HDPORT_PHY_USED_DP(phy) ||
> -		 i915->hti_state & HDPORT_PHY_USED_HDMI(phy));
> +	       i915->hti_state & HDPORT_DDI_USED(phy);
>  }
>  =

>  static enum hpd_pin dg1_hpd_pin(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 0023c023f472..1d8ba10847ca 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2928,8 +2928,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t r=
eg)
>  =

>  #define HDPORT_STATE			_MMIO(0x45050)
>  #define   HDPORT_DPLL_USED_MASK		REG_GENMASK(14, 12)
> -#define   HDPORT_PHY_USED_DP(phy)	REG_BIT(2 * (phy) + 2)
> -#define   HDPORT_PHY_USED_HDMI(phy)	REG_BIT(2 * (phy) + 1)
> +#define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
>  #define   HDPORT_ENABLED		REG_BIT(0)
>  =

>  /* Make render/texture TLB fetches lower priorty than associated data
> -- =

> 2.30.0
> =


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

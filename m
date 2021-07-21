Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B18883D15A9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 19:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7F96EB11;
	Wed, 21 Jul 2021 17:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61236E991
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 17:55:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211206926"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211206926"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 10:55:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658363622"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2021 10:55:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 10:55:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 10:55:44 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Wed, 21 Jul 2021 10:55:44 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 47/50] drm/i915/dg2: Update lane disable power state
 during PSR
Thread-Index: AQHXeF6TGTapW/juhUKor+OrdtorQqtNwmuQ
Date: Wed, 21 Jul 2021 17:55:44 +0000
Message-ID: <d5dd79f47860479ab5bc4005216baefc@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-48-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-48-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 47/50] drm/i915/dg2: Update lane disable
 power state during PSR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, July 13, 2021 8:16 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Mun, Gwan-gyeong
> <gwan-gyeong.mun@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v2 47/50] drm/i915/dg2: Update lane disable power state
> during PSR
> 
> From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> 
> The PSR enable/disable sequences now require that we program an extra
> register in the PHY to adjust the lane disable power setting.
> 
> Bspec: 49274
> Bspec: 53885
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 14 ++++++++++++++
> drivers/gpu/drm/i915/display/intel_snps_phy.h |  3 +++
>  drivers/gpu/drm/i915/i915_reg.h               |  3 +++
>  4 files changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4dfe1dceb863..c987a7fbc8fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -32,6 +32,7 @@
>  #include "intel_dp_aux.h"
>  #include "intel_hdmi.h"
>  #include "intel_psr.h"
> +#include "intel_snps_phy.h"
>  #include "intel_sprite.h"
>  #include "skl_universal_plane.h"
> 
> @@ -1206,6 +1207,7 @@ static void intel_psr_enable_locked(struct intel_dp
> *intel_dp,  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>  	struct intel_encoder *encoder = &dig_port->base;
>  	u32 val;
> 
> @@ -1231,6 +1233,7 @@ static void intel_psr_enable_locked(struct intel_dp
> *intel_dp,
>  	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
>  				     &intel_dp->psr.vsc);
>  	intel_write_dp_vsc_sdp(encoder, crtc_state, &intel_dp->psr.vsc);
> +	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
>  	intel_psr_enable_sink(intel_dp);
>  	intel_psr_enable_source(intel_dp);
>  	intel_dp->psr.enabled = true;
> @@ -1327,6 +1330,8 @@ static void intel_psr_wait_exit_locked(struct
> intel_dp *intel_dp)  static void intel_psr_disable_locked(struct intel_dp
> *intel_dp)  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	enum phy phy = intel_port_to_phy(dev_priv,
> +					 dp_to_dig_port(intel_dp)-
> >base.port);
> 
>  	lockdep_assert_held(&intel_dp->psr.lock);
> 
> @@ -1353,6 +1358,8 @@ static void intel_psr_disable_locked(struct intel_dp
> *intel_dp)
>  			     TRANS_SET_CONTEXT_LATENCY(intel_dp-
> >psr.transcoder),
>  			     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
> 
> +	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
> +
>  	/* Disable PSR on Sink */
>  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index f0c30d3d2dfb..18b52b64af95 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -36,6 +36,20 @@ void intel_snps_phy_wait_for_calibration(struct
> drm_i915_private *dev_priv)
>  	}
>  }
> 
> +void intel_snps_phy_update_psr_power_state(struct drm_i915_private
> *dev_priv,
> +					   enum phy phy, bool enable)
> +{
> +	u32 val;
> +
> +	if (!intel_phy_is_snps(dev_priv, phy))
> +		return;
> +
> +	val =
> REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
> +			     enable ? 2 : 3);
> +	intel_uncore_rmw(&dev_priv->uncore, SNPS_PHY_TX_REQ(phy),
> +			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
> }
> +
>  static const u32 dg2_ddi_translations[] = {
>  	/* VS 0, pre-emph 0 */
>  	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 26), diff --git
> a/drivers/gpu/drm/i915/display/intel_snps_phy.h
> b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> index 6aa33ff729ec..6261ff88ef5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> @@ -12,8 +12,11 @@ struct drm_i915_private;  struct intel_encoder;  struct
> intel_crtc_state;  struct intel_mpllb_state;
> +enum phy;
> 
>  void intel_snps_phy_wait_for_calibration(struct drm_i915_private
> *dev_priv);
> +void intel_snps_phy_update_psr_power_state(struct drm_i915_private
> *dev_priv,
> +					   enum phy phy, bool enable);
> 
>  int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  			   struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 9c7dc812317e..34d3806568e4
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2340,6 +2340,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t
> reg)
>  #define SNPS_PHY_REF_CONTROL(phy)		_MMIO_SNPS(phy,
> 0x168188)
>  #define   SNPS_PHY_REF_CONTROL_REF_RANGE	REG_GENMASK(31,
> 27)
> 
> +#define SNPS_PHY_TX_REQ(phy)			_MMIO_SNPS(phy,
> 0x168200)
> +#define   SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR
> 	REG_GENMASK(31, 30)
> +
>  #define SNPS_PHY_TX_EQ(ln, phy)			_MMIO_SNPS_LN(ln,
> phy, 0x168300)
>  #define   SNPS_PHY_TX_EQ_MAIN			REG_GENMASK(23,
> 18)
>  #define   SNPS_PHY_TX_EQ_POST			REG_GENMASK(15,
> 10)
> --
> 2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

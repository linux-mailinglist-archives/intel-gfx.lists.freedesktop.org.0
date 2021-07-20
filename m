Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E32563D0248
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 21:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AC46E194;
	Tue, 20 Jul 2021 19:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A386E194
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 19:48:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="211035791"
X-IronPort-AV: E=Sophos;i="5.84,255,1620716400"; d="scan'208";a="211035791"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 12:48:28 -0700
X-IronPort-AV: E=Sophos;i="5.84,255,1620716400"; d="scan'208";a="576001243"
Received: from tjathaud-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.255.230.66])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 12:48:28 -0700
Date: Tue, 20 Jul 2021 12:48:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210720194827.vlxtyg6g6p5cg3qh@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210625235600.765677-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625235600.765677-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/adl_p: Implement PSR
 changes
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 25, 2021 at 04:55:59PM -0700, Jose Souza wrote:
>Implements changes around PSR for alderlake-P:
>
>- EDP_SU_TRACK_ENABLE was removed and bit 30 now has other function
>- Some bits of PSR2_MAN_TRK_CTL moved and SF_PARTIAL_FRAME_UPDATE was
>  removed setting SU_REGION_START/END_ADDR will do this job
>- SU_REGION_START/END_ADDR have now line granularity but will need to
>  be aligned with DSC when the PSRS + DSC support lands
>
>BSpec: 50422
>BSpec: 50424
>Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_psr.c | 43 ++++++++++++++++++------
> drivers/gpu/drm/i915/i915_reg.h          | 26 ++++++++------
> 2 files changed, 48 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index 9643624fe160d..46bb19c4b63a4 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -534,11 +534,13 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *i=
ntel_dp)
> static void hsw_activate_psr2(struct intel_dp *intel_dp)
> {
> 	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>-	u32 val;
>+	u32 val =3D EDP_PSR2_ENABLE;
>+
>+	val |=3D psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
>
>-	val =3D psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
>+	if (!IS_ALDERLAKE_P(dev_priv))
>+		val |=3D EDP_SU_TRACK_ENABLE;
>
>-	val |=3D EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
> 	if (DISPLAY_VER(dev_priv) >=3D 10 && DISPLAY_VER(dev_priv) <=3D 12)
> 		val |=3D EDP_Y_COORDINATE_ENABLE;
>
>@@ -793,6 +795,7 @@ static bool intel_psr2_sel_fetch_config_valid(struct i=
ntel_dp *intel_dp,
> static bool psr2_granularity_check(struct intel_dp *intel_dp,
> 				   struct intel_crtc_state *crtc_state)
> {
>+	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> 	const int crtc_hdisplay =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
> 	const int crtc_vdisplay =3D crtc_state->hw.adjusted_mode.crtc_vdisplay;
> 	u16 y_granularity =3D 0;
>@@ -809,10 +812,13 @@ static bool psr2_granularity_check(struct intel_dp *=
intel_dp,
> 		return intel_dp->psr.su_y_granularity =3D=3D 4;
>
> 	/*
>-	 * For SW tracking we can adjust the y to match sink requirement if
>-	 * multiple of 4
>+	 * adl_p has 1 line granularity for other platforms with SW tracking we

missing a .? adl_p has 1 line granularity. For other platforms ...

>+	 * can adjust the y coordinate to match sink requirement if multiple of
>+	 * 4
> 	 */
>-	if (intel_dp->psr.su_y_granularity <=3D 2)
>+	if (IS_ALDERLAKE_P(dev_priv))
>+		y_granularity =3D intel_dp->psr.su_y_granularity;
>+	else if (intel_dp->psr.su_y_granularity <=3D 2)

this was already here, but not covered in the comment above. What is
this doing?


changes match spec.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

> 		y_granularity =3D 4;
> 	else if ((intel_dp->psr.su_y_granularity % 4) =3D=3D 0)
> 		y_granularity =3D intel_dp->psr.su_y_granularity;
>@@ -1525,21 +1531,32 @@ void intel_psr2_program_trans_man_trk_ctl(const st=
ruct intel_crtc_state *crtc_st
> static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> 				  struct drm_rect *clip, bool full_update)
> {
>+	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>+	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> 	u32 val =3D PSR2_MAN_TRK_CTL_ENABLE;
>
> 	if (full_update) {
>-		val |=3D PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>+		if (IS_ALDERLAKE_P(dev_priv))
>+			val |=3D ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>+		else
>+			val |=3D PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>+
> 		goto exit;
> 	}
>
> 	if (clip->y1 =3D=3D -1)
> 		goto exit;
>
>-	drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
>+	if (IS_ALDERLAKE_P(dev_priv)) {
>+		val |=3D ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1);
>+		val |=3D ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2);
>+	} else {
>+		drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
>
>-	val |=3D PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
>-	val |=3D PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 + 1);
>-	val |=3D PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 + 1);
>+		val |=3D PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
>+		val |=3D PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 + 1);
>+		val |=3D PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 + 1);
>+	}
> exit:
> 	crtc_state->psr2_man_track_ctl =3D val;
> }
>@@ -1563,11 +1580,15 @@ static void clip_area_update(struct drm_rect *over=
lap_damage_area,
> static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_s=
tate *crtc_state,
> 						struct drm_rect *pipe_clip)
> {
>+	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->dev=
);
> 	const u16 y_alignment =3D crtc_state->su_y_granularity;
>
> 	pipe_clip->y1 -=3D pipe_clip->y1 % y_alignment;
> 	if (pipe_clip->y2 % y_alignment)
> 		pipe_clip->y2 =3D ((pipe_clip->y2 / y_alignment) + 1) * y_alignment;
>+
>+	if (IS_ALDERLAKE_P(dev_priv) && crtc_state->dsc.compression_enable)
>+		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
> }
>
> int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 65c155b141899..2d38bd09391eb 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4586,7 +4586,7 @@ enum {
> #define _PSR2_CTL_EDP				0x6f900
> #define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(tran, _PSR2_CTL_A)
> #define   EDP_PSR2_ENABLE			(1 << 31)
>-#define   EDP_SU_TRACK_ENABLE			(1 << 30)
>+#define   EDP_SU_TRACK_ENABLE			(1 << 30) /* up to adl-p */
> #define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	(0 << 28)
> #define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	(1 << 28)
> #define   EDP_Y_COORDINATE_ENABLE		REG_BIT(25) /* display 10, 11 and 12 */
>@@ -4655,17 +4655,23 @@ enum {
> #define PSR2_SU_STATUS_MASK(frame)	(0x3ff << PSR2_SU_STATUS_SHIFT(frame))
> #define PSR2_SU_STATUS_FRAMES		8
>
>-#define _PSR2_MAN_TRK_CTL_A				0x60910
>-#define _PSR2_MAN_TRK_CTL_EDP				0x6f910
>-#define PSR2_MAN_TRK_CTL(tran)				_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)
>-#define  PSR2_MAN_TRK_CTL_ENABLE			REG_BIT(31)
>-#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK	REG_GENMASK(30, 21)
>-#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(PSR2_M=
AN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
>+#define _PSR2_MAN_TRK_CTL_A					0x60910
>+#define _PSR2_MAN_TRK_CTL_EDP					0x6f910
>+#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(tran, _PSR2_MAN_TRK_CTL_A)
>+#define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
>+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
>+#define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_=
MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
> #define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(20, 11)
> #define  PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(PSR2_MA=
N_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
>-#define  PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(3)
>-#define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME	REG_BIT(2)
>-#define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE	REG_BIT(1)
>+#define  PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME			REG_BIT(3)
>+#define  PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(2)
>+#define  PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(1)
>+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK	REG_GENMASK(28, =
16)
>+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(A=
DLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
>+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, 0)
>+#define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(AD=
LP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
>+#define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
>+#define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
>
> /* Icelake DSC Rate Control Range Parameter Registers */
> #define DSCA_RC_RANGE_PARAMETERS_0		_MMIO(0x6B240)
>-- =

>2.32.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

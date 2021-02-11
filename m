Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C31BE318318
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 02:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B3A6EDAB;
	Thu, 11 Feb 2021 01:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4EF6EDAB
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 01:33:45 +0000 (UTC)
IronPort-SDR: s+/sEi1GgGcBj2e9322C57Zb0esg/IS3SrcZFG4psAZct8dJVJLkNt4QvXmg+C0rifdpTS2c8b
 OcgaPRhiTvpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246246287"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="246246287"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:33:44 -0800
IronPort-SDR: kb6dmIPF++vDOoDHNTUNEG/lQA9LrYHMRfSJ1l6p3Y9MYg9meEE5dAvbUO0+foT6Stlun4CPFR
 7UlmA3Ljjh2g==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="359800708"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:33:44 -0800
Date: Wed, 10 Feb 2021 17:33:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211013343.ktnmprlfjc5xgrtr@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-8-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/18] drm/i915/display13: Add Display13
 power wells
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

On Thu, Jan 28, 2021 at 11:24:02AM -0800, Matt Roper wrote:
>Aside from the hardware-managed PG0, Display13 has power wells 1-2 and
>A-D.  These power wells should be enabled/disabled according to the
>following dependency tree (enable top to bottom, disable bottom to top):
>
>               PG0
>                |
>             --PG1--
>            /       \
>          PGA     --PG2--
>                 /   |   \
>               PGB  PGC  PGD
>
>PWR_WELL_CTL follows the general ICL/TGL design and places PG A-D in the
>bits that would have been PG 6-9 under the old scheme.
>
>PWR_WELL_CTL_{DDI,AUX}'s bit indexing for DDI's A-C and TC1 is the same
>as TGL, but DDI-D is placed at index 7 (bits 14 & 15).
>
>Bspec: 49233
>Bspec: 49503
>Bspec: 49504
>Bspec: 49505
>Bspec: 49296
>Bspec: 50090
>Bspec: 53920
>Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> .../drm/i915/display/intel_display_power.c    | 422 +++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_vdsc.c     |   5 +-
> drivers/gpu/drm/i915/i915_reg.h               |  10 +
> 3 files changed, 433 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index e17b1ca356c3..7dd12fe9137e 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -1035,7 +1035,7 @@ static void assert_can_enable_dc5(struct drm_i915_pr=
ivate *dev_priv)
> 	enum i915_power_well_id high_pg;
>
> 	/* Power wells at this level and above must be disabled for DC5 entry */
>-	if (INTEL_GEN(dev_priv) >=3D 12)
>+	if (INTEL_GEN(dev_priv) >=3D 12 && !HAS_DISPLAY13(dev_priv))
> 		high_pg =3D ICL_DISP_PW_3;
> 	else
> 		high_pg =3D SKL_DISP_PW_2;
>@@ -3028,6 +3028,109 @@ intel_display_power_put_mask_in_set(struct drm_i91=
5_private *i915,
> 	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> 	BIT_ULL(POWER_DOMAIN_INIT))
>
>+/*
>+ * Display13 Power Domains
>+ *
>+ * Previous platforms required that PG(n-1) be enabled before PG(n).  That
>+ * dependency chain turns into a dependency tree on Display13:
>+ *
>+ *       PG0
>+ *        |
>+ *     --PG1--
>+ *    /       \
>+ *  PGA     --PG2--
>+ *         /   |   \
>+ *       PGB  PGC  PGD
>+ *
>+ * Power wells must be enabled from top to bottom and disabled from bottom
>+ * to top.  This allows pipes to be power gated independently.
>+ */
>+
>+#define D13_PW_D_POWER_DOMAINS (			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_D) |			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_D_PANEL_FITTER) |	\
>+	BIT_ULL(POWER_DOMAIN_TRANSCODER_D) |		\
>+	BIT_ULL(POWER_DOMAIN_INIT))
>+
>+#define D13_PW_C_POWER_DOMAINS (			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_C) |			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_C_PANEL_FITTER) |	\
>+	BIT_ULL(POWER_DOMAIN_TRANSCODER_C) |		\
>+	BIT_ULL(POWER_DOMAIN_INIT))
>+
>+#define D13_PW_B_POWER_DOMAINS (			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
>+	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\

when reviewing this in the spec I thought this was wrong... apparently tran=
scoder_{b,c,d} power wells
are in PG2, but there is a clarification in bspec 49233:

	"Transcoder B (registers reside in PG2, but access path goes through assoc=
iated pipe)"


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+	BIT_ULL(POWER_DOMAIN_INIT))
>+
>+#define D13_PW_A_POWER_DOMAINS (			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_A) |			\
>+	BIT_ULL(POWER_DOMAIN_PIPE_A_PANEL_FITTER) |	\
>+	BIT_ULL(POWER_DOMAIN_INIT))
>+
>+#define D13_PW_2_POWER_DOMAINS (			\
>+	D13_PW_B_POWER_DOMAINS |			\
>+	D13_PW_C_POWER_DOMAINS |			\
>+	D13_PW_D_POWER_DOMAINS |			\
>+	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
>+	BIT_ULL(POWER_DOMAIN_VGA) |			\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_C_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_G_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_H_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_PORT_DDI_I_LANES) |	\
>+	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_G) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_H) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_I) |			\
>+	BIT_ULL(POWER_DOMAIN_INIT))
>+
>+/*
>+ * D13 PW_1/PG_1 domains (under HW/DMC control):
>+ *  - DBUF function (registers are in PW0)
>+ *  - Transcoder A
>+ *  - DDI_A and DDI_B
>+ *
>+ * D13 PW_0/PW_1 domains (under HW/DMC control):
>+ *  - PCI
>+ *  - Clocks except port PLL
>+ *  - Shared functions:
>+ *     * interrupts except pipe interrupts
>+ *     * MBus except PIPE_MBUS_DBOX_CTL
>+ *     * DBUF registers
>+ *  - Central power except FBC
>+ *  - Top-level GTC (DDI-level GTC is in the well associated with the DDI)
>+ */
>+
>+#define D13_DISPLAY_DC_OFF_POWER_DOMAINS (		\
>+	D13_PW_2_POWER_DOMAINS |			\
>+	BIT_ULL(POWER_DOMAIN_MODESET) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
>+	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
>+	BIT_ULL(POWER_DOMAIN_INIT))
>+
>+#define D13_AUX_D_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_D)
>+#define D13_AUX_E_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_E)
>+#define D13_AUX_F_TC1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_F)
>+#define D13_AUX_G_TC2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_G)
>+#define D13_AUX_H_TC3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_H)
>+#define D13_AUX_I_TC4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_I)
>+#define D13_AUX_F_TBT1_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_F_TBT)
>+#define D13_AUX_G_TBT2_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_G_TBT)
>+#define D13_AUX_H_TBT3_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_H_TBT)
>+#define D13_AUX_I_TBT4_IO_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_AUX_I_TBT)
>+
>+#define D13_DDI_IO_F_TC1_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_F_I=
O)
>+#define D13_DDI_IO_G_TC2_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_G_I=
O)
>+#define D13_DDI_IO_H_TC3_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_H_I=
O)
>+#define D13_DDI_IO_I_TC4_POWER_DOMAINS		BIT_ULL(POWER_DOMAIN_PORT_DDI_I_I=
O)
>+
> static const struct i915_power_well_ops i9xx_always_on_power_well_ops =3D=
 {
> 	.sync_hw =3D i9xx_power_well_sync_hw_noop,
> 	.enable =3D i9xx_always_on_power_well_noop,
>@@ -4532,6 +4635,319 @@ static const struct i915_power_well_desc rkl_power=
_wells[] =3D {
> 	},
> };
>
>+static const struct i915_power_well_desc display13_power_wells[] =3D {
>+	{
>+		.name =3D "always-on",
>+		.always_on =3D true,
>+		.domains =3D POWER_DOMAIN_MASK,
>+		.ops =3D &i9xx_always_on_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+	},
>+	{
>+		.name =3D "power well 1",
>+		/* Handled by the DMC firmware */
>+		.always_on =3D true,
>+		.domains =3D 0,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D SKL_DISP_PW_1,
>+		{
>+			.hsw.regs =3D &hsw_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_PW_1,
>+			.hsw.has_fuses =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "DC off",
>+		.domains =3D D13_DISPLAY_DC_OFF_POWER_DOMAINS,
>+		.ops =3D &gen9_dc_off_power_well_ops,
>+		.id =3D SKL_DISP_DC_OFF,
>+	},
>+	{
>+		.name =3D "power well 2",
>+		.domains =3D D13_PW_2_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D SKL_DISP_PW_2,
>+		{
>+			.hsw.regs =3D &hsw_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
>+			.hsw.has_vga =3D true,
>+			.hsw.has_fuses =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "power well A",
>+		.domains =3D D13_PW_A_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &hsw_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_PW_A,
>+			.hsw.irq_pipe_mask =3D BIT(PIPE_A),
>+			.hsw.has_fuses =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "power well B",
>+		.domains =3D D13_PW_B_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &hsw_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_PW_B,
>+			.hsw.irq_pipe_mask =3D BIT(PIPE_B),
>+			.hsw.has_fuses =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "power well C",
>+		.domains =3D D13_PW_C_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &hsw_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_PW_C,
>+			.hsw.irq_pipe_mask =3D BIT(PIPE_C),
>+			.hsw.has_fuses =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "power well D",
>+		.domains =3D D13_PW_D_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &hsw_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_PW_D,
>+			.hsw.irq_pipe_mask =3D BIT(PIPE_D),
>+			.hsw.has_fuses =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "DDI A IO",
>+		.domains =3D ICL_DDI_IO_A_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_A,
>+		}
>+	},
>+	{
>+		.name =3D "DDI B IO",
>+		.domains =3D ICL_DDI_IO_B_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_B,
>+		}
>+	},
>+	{
>+		.name =3D "DDI C IO",
>+		.domains =3D ICL_DDI_IO_C_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_DDI_C,
>+		}
>+	},
>+	{
>+		.name =3D "DDI D IO",
>+		.domains =3D ICL_DDI_IO_D_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_DDI_D,
>+		}
>+	},
>+	{
>+		.name =3D "DDI E IO",
>+		.domains =3D ICL_DDI_IO_E_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_DDI_E,
>+		}
>+	},
>+	{
>+		.name =3D "DDI F TC1 IO",
>+		.domains =3D D13_DDI_IO_F_TC1_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC1,
>+		}
>+	},
>+	{
>+		.name =3D "DDI G TC2 IO",
>+		.domains =3D D13_DDI_IO_G_TC2_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC2,
>+		}
>+	},
>+	{
>+		.name =3D "DDI H TC3 IO",
>+		.domains =3D D13_DDI_IO_H_TC3_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC3,
>+		}
>+	},
>+	{
>+		.name =3D "DDI I TC4 IO",
>+		.domains =3D D13_DDI_IO_I_TC4_POWER_DOMAINS,
>+		.ops =3D &hsw_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_ddi_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_DDI_TC4,
>+		}
>+	},
>+	{
>+		.name =3D "AUX A",
>+		.domains =3D ICL_AUX_A_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_A,
>+		},
>+	},
>+	{
>+		.name =3D "AUX B",
>+		.domains =3D ICL_AUX_B_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_B,
>+		},
>+	},
>+	{
>+		.name =3D "AUX C",
>+		.domains =3D TGL_AUX_C_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D ICL_PW_CTL_IDX_AUX_C,
>+		},
>+	},
>+	{
>+		.name =3D "AUX D",
>+		.domains =3D D13_AUX_D_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_AUX_D,
>+		},
>+	},
>+	{
>+		.name =3D "AUX E",
>+		.domains =3D D13_AUX_E_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D D13_PW_CTL_IDX_AUX_E,
>+		},
>+	},
>+	{
>+		.name =3D "AUX F TC1",
>+		.domains =3D D13_AUX_F_TC1_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC1,
>+		},
>+	},
>+	{
>+		.name =3D "AUX G TC2",
>+		.domains =3D D13_AUX_G_TC2_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC2,
>+		},
>+	},
>+	{
>+		.name =3D "AUX H TC3",
>+		.domains =3D D13_AUX_H_TC3_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC3,
>+		},
>+	},
>+	{
>+		.name =3D "AUX I TC4",
>+		.domains =3D D13_AUX_I_TC4_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC4,
>+		},
>+	},
>+	{
>+		.name =3D "AUX F TBT1",
>+		.domains =3D D13_AUX_F_TBT1_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT1,
>+			.hsw.is_tc_tbt =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "AUX G TBT2",
>+		.domains =3D D13_AUX_G_TBT2_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT2,
>+			.hsw.is_tc_tbt =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "AUX H TBT3",
>+		.domains =3D D13_AUX_H_TBT3_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT3,
>+			.hsw.is_tc_tbt =3D true,
>+		},
>+	},
>+	{
>+		.name =3D "AUX I TBT4",
>+		.domains =3D D13_AUX_I_TBT4_IO_POWER_DOMAINS,
>+		.ops =3D &icl_aux_power_well_ops,
>+		.id =3D DISP_PW_ID_NONE,
>+		{
>+			.hsw.regs =3D &icl_aux_power_well_regs,
>+			.hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT4,
>+			.hsw.is_tc_tbt =3D true,
>+		},
>+	},
>+};
>+
> static int
> sanitize_disable_power_well_option(const struct drm_i915_private *dev_pri=
v,
> 				   int disable_power_well)
>@@ -4689,7 +5105,9 @@ int intel_power_domains_init(struct drm_i915_private=
 *dev_priv)
> 	 * The enabling order will be from lower to higher indexed wells,
> 	 * the disabling order is reversed.
> 	 */
>-	if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
>+	if (HAS_DISPLAY13(dev_priv)) {
>+		err =3D set_power_wells(power_domains, display13_power_wells);
>+	} else if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
> 		err =3D set_power_wells_mask(power_domains, tgl_power_wells,
> 					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
> 	} else if (IS_ROCKETLAKE(dev_priv)) {
>diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i=
915/display/intel_vdsc.c
>index f58cc5700784..8d8be0a006c7 100644
>--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>@@ -473,13 +473,14 @@ intel_dsc_power_domain(const struct intel_crtc_state=
 *crtc_state)
> 	 * POWER_DOMAIN_TRANSCODER_VDSC_PW2 power domain in two cases:
> 	 *
> 	 *  - ICL eDP/DSI transcoder
>-	 *  - Gen12+ (except RKL) pipe A
>+	 *  - Display12 (except RKL) pipe A
> 	 *
> 	 * For any other pipe, VDSC/joining uses the power well associated with
> 	 * the pipe in use. Hence another reference on the pipe power domain
> 	 * will suffice. (Except no VDSC/joining on ICL pipe A.)
> 	 */
>-	if (INTEL_GEN(i915) >=3D 12 && !IS_ROCKETLAKE(i915) && pipe =3D=3D PIPE_=
A)
>+	if (INTEL_GEN(i915) >=3D 12 && !HAS_DISPLAY13(i915) &&
>+	    !IS_ROCKETLAKE(i915) && pipe =3D=3D PIPE_A)
> 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> 	else if (is_pipe_dsc(crtc_state))
> 		return POWER_DOMAIN_PIPE(pipe);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 9dfa4d711d6f..ec7bda22f4f3 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -9619,6 +9619,12 @@ enum {
> #define   ICL_PW_CTL_IDX_PW_2			1
> #define   ICL_PW_CTL_IDX_PW_1			0
>
>+/* Display13 - power wells */
>+#define   D13_PW_CTL_IDX_PW_D			8
>+#define   D13_PW_CTL_IDX_PW_C			7
>+#define   D13_PW_CTL_IDX_PW_B			6
>+#define   D13_PW_CTL_IDX_PW_A			5
>+
> #define ICL_PWR_WELL_CTL_AUX1			_MMIO(0x45440)
> #define ICL_PWR_WELL_CTL_AUX2			_MMIO(0x45444)
> #define ICL_PWR_WELL_CTL_AUX4			_MMIO(0x4544C)
>@@ -9633,7 +9639,9 @@ enum {
> #define   TGL_PW_CTL_IDX_AUX_TBT1		9
> #define   ICL_PW_CTL_IDX_AUX_TBT1		8
> #define   TGL_PW_CTL_IDX_AUX_TC6		8
>+#define   D13_PW_CTL_IDX_AUX_E			8
> #define   TGL_PW_CTL_IDX_AUX_TC5		7
>+#define   D13_PW_CTL_IDX_AUX_D			7
> #define   TGL_PW_CTL_IDX_AUX_TC4		6
> #define   ICL_PW_CTL_IDX_AUX_F			5
> #define   TGL_PW_CTL_IDX_AUX_TC3		5
>@@ -9648,7 +9656,9 @@ enum {
> #define ICL_PWR_WELL_CTL_DDI1			_MMIO(0x45450)
> #define ICL_PWR_WELL_CTL_DDI2			_MMIO(0x45454)
> #define ICL_PWR_WELL_CTL_DDI4			_MMIO(0x4545C)
>+#define   D13_PW_CTL_IDX_DDI_E			8
> #define   TGL_PW_CTL_IDX_DDI_TC6		8
>+#define   D13_PW_CTL_IDX_DDI_D			7
> #define   TGL_PW_CTL_IDX_DDI_TC5		7
> #define   TGL_PW_CTL_IDX_DDI_TC4		6
> #define   ICL_PW_CTL_IDX_DDI_F			5
>-- =

>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

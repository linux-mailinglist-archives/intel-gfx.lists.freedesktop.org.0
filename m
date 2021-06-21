Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 550473AF9B3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 01:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D91689A77;
	Mon, 21 Jun 2021 23:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6455289A77
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 23:43:49 +0000 (UTC)
IronPort-SDR: N23kR6AhwV/FmhBZmLA3JMcvv2EyziSI/rHYkkW4bLn7IBouC73mtrnT9PBpC+wBpgcZ+Njy09
 iHei6Kh6RjaA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="187334512"
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="187334512"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 16:43:47 -0700
IronPort-SDR: +1jIkiDG1ev9HgmOrqeEr1WuUkUkYQk8EpKI2CD7HTwIFUpiPsy4dVEKvXEj08nlHyqMoPiARE
 az0c7VMOtayQ==
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="423115166"
Received: from hmural1x-mobl1.gar.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.37.246])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 16:43:46 -0700
Date: Mon, 21 Jun 2021 16:43:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210621234345.i3ek6uhrlnypg2l3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210618161314.723418-1-matthew.auld@intel.com>
 <CAKi4VALrs7oKaDvJ4vjEyD+4bX1YGpTFZBDhJTmJwhRHHe51KA@mail.gmail.com>
 <1551369b-9921-2f23-6932-f240e7872e69@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1551369b-9921-2f23-6932-f240e7872e69@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dg1: Compute MEM Bandwidth
 using MCHBAR
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 21, 2021 at 09:44:35AM +0100, Matthew Auld wrote:
>On 21/06/2021 06:46, Lucas De Marchi wrote:
>>On Fri, Jun 18, 2021 at 9:14 AM Matthew Auld <matthew.auld@intel.com> wro=
te:
>>>
>>>From: Clint Taylor <clinton.a.taylor@intel.com>
>>>
>>>The PUNIT FW is currently returning 0 for all memory bandwidth
>>>parameters. Read the values directly from MCHBAR offsets 0x5918 and
>>>0x4000(4). This is a temporary WA until the PUNIT FW returns valid
>>>values.
>>
>>This is supposed to be fixed for quite some time and this WA shouldn't
>>be needed. Is this really happening?
>
>Yes, from the sample of machines I have tried recently they all seem =

>to need it. Same for Thomas, who also confirmed that these two patches =

>are needed. In dmesg I get:
>
>[drm:icl_get_bw_info.isra.0 [i915]] Failed to get memory subsystem =

>information via pcode. IFWI needs update. Trying with MCHBAR

My point was:  is this something reproducible on machines outside Intel?
Machines from CI or internal should follow the recommendation from the
message above: "IFWI needs update".

>Internal CI looks to be the same from a quick look.

:(

>
>>
>>>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>Cc: Matt Roper <matthew.d.roper@intel.com>
>>>Cc: Jani Saarinen <jani.saarinen@intel.com>
>>>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>>humn... no s-o-b from you?
>
>Will add.
>
>>
>>Lucas De Marchi
>>
>>>---
>>>  drivers/gpu/drm/i915/display/intel_bw.c | 54 ++++++++++++++++++++++++-
>>>  1 file changed, 53 insertions(+), 1 deletion(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>>>index bfb398f0432e..f3d8ff4ee0db 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>>@@ -23,6 +23,53 @@ struct intel_qgv_info {
>>>         u8 t_bl;
>>>  };
>>>
>>>+#define SA_PERF_STATUS_0_0_0_MCHBAR_PC _MMIO(MCHBAR_MIRROR_BASE_SNB + 0=
x5918)
>>>+#define  DG1_QCLK_RATIO_MASK (0xFF << 2)
>>>+#define  DG1_QCLK_RATIO_SHIFT 2
>>>+#define  DG1_QCLK_REFERENCE (1 << 10)
>>>+
>>>+#define MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR _MMIO(MCHBAR_MIRROR_BASE_SNB =
+ 0x4000)
>>>+#define MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH _MMIO(MCHBAR_MIRROR_BASE=
_SNB + 0x4004)
>>>+#define MCHBAR_CH1_CR_TC_PRE_0_0_0_MCHBAR _MMIO(MCHBAR_MIRROR_BASE_SNB =
+ 0x4400)
>>>+#define MCHBAR_CH1_CR_TC_PRE_0_0_0_MCHBAR_HIGH _MMIO(MCHBAR_MIRROR_BASE=
_SNB + 0x4404)
>>>+#define  DG1_DRAM_T_RCD_MASK (0x7F << 9)
>>>+#define  DG1_DRAM_T_RCD_SHIFT 9
>>>+#define  DG1_DRAM_T_RDPRE_MASK (0x3F << 11)
>>>+#define  DG1_DRAM_T_RDPRE_SHIFT 11
>>>+#define  DG1_DRAM_T_RAS_MASK (0xFF << 1)
>>>+#define  DG1_DRAM_T_RAS_SHIFT 1
>>>+#define  DG1_DRAM_T_RP_MASK (0x7F << 0)
>>>+#define  DG1_DRAM_T_RP_SHIFT 0
>>>+
>>>+static int dg1_mchbar_read_qgv_point_info(struct drm_i915_private *dev_=
priv,
>>>+                                         struct intel_qgv_point *sp,
>>>+                                         int point)
>>>+{
>>>+       u32 val =3D 0;
>>>+       u32 dclk_ratio =3D 0, dclk_reference =3D 0;
>>>+
>>>+       val =3D intel_uncore_read(&dev_priv->uncore, SA_PERF_STATUS_0_0_=
0_MCHBAR_PC);
>>>+       dclk_ratio =3D (val & DG1_QCLK_RATIO_MASK) >> DG1_QCLK_RATIO_SHI=
FT;
>>>+       if (val & DG1_QCLK_REFERENCE)
>>>+               dclk_reference =3D 6; /* 6 * 16.666 MHz =3D 100 MHz */
>>>+       else
>>>+               dclk_reference =3D 8; /* 8 * 16.666 MHz =3D 133 MHz */
>>>+       sp->dclk =3D dclk_ratio * dclk_reference;
>>>+       if (sp->dclk =3D=3D 0)
>>>+               return -EINVAL;
>>>+
>>>+       val =3D intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_PR=
E_0_0_0_MCHBAR);
>>>+       sp->t_rp =3D (val & DG1_DRAM_T_RP_MASK) >> DG1_DRAM_T_RP_SHIFT;
>>>+       sp->t_rdpre =3D (val & DG1_DRAM_T_RDPRE_MASK) >> DG1_DRAM_T_RDPR=
E_SHIFT;
>>>+
>>>+       val =3D intel_uncore_read(&dev_priv->uncore, MCHBAR_CH0_CR_TC_PR=
E_0_0_0_MCHBAR_HIGH);
>>>+       sp->t_rcd =3D (val & DG1_DRAM_T_RCD_MASK) >> DG1_DRAM_T_RCD_SHIF=
T;
>>>+       sp->t_ras =3D (val & DG1_DRAM_T_RAS_MASK) >> DG1_DRAM_T_RAS_SHIF=
T;
>>>+
>>>+       sp->t_rc =3D sp->t_rp + sp->t_ras;
>>>+       return 0;
>>>+}
>>>+
>>>  static int icl_pcode_read_qgv_point_info(struct drm_i915_private *dev_=
priv,
>>>                                          struct intel_qgv_point *sp,
>>>                                          int point)
>>>@@ -100,7 +147,12 @@ static int icl_get_qgv_points(struct drm_i915_priva=
te *dev_priv,
>>>                 struct intel_qgv_point *sp =3D &qi->points[i];
>>>
>>>                 ret =3D icl_pcode_read_qgv_point_info(dev_priv, sp, i);
>>>-               if (ret)
>>>+               if (IS_DG1(dev_priv) && (ret || sp->dclk =3D=3D 0)) {
>>>+                       drm_dbg_kms(&dev_priv->drm, "Failed to get memor=
y subsystem information via pcode. IFWI needs update. Trying with MCHBAR\n"=
);
>>>+                       ret =3D dg1_mchbar_read_qgv_point_info(dev_priv,=
 sp, i);
>>>+                       if (ret)
>>>+                               return ret;
>>>+               } else if (ret)
>>>                         return ret;

IMO this looks a little bit nicer to read:

	ret =3D icl_pcode_read_qgv_point_info(dev_priv, sp, i);
	if (IS_DG1(dev_priv) && (ret || sp->dclk =3D=3D 0)) {
		drm_dbg_kms(&dev_priv->drm, "Failed to get memory subsystem information v=
ia pcode. IFWI needs update. Trying with MCHBAR\n");
		ret =3D dg1_mchbar_read_qgv_point_info(dev_priv, sp, i);
	}

	if (ret)
		return ret;


Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

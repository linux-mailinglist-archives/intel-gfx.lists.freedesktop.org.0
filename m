Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3D512A34F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 18:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459396E348;
	Tue, 24 Dec 2019 17:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9336E348
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 17:05:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 09:05:51 -0800
X-IronPort-AV: E=Sophos;i="5.69,352,1571727600"; d="scan'208";a="207637798"
Received: from gchancha-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.149.187])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 09:05:50 -0800
Date: Tue, 24 Dec 2019 09:05:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191224170544.gbgqfrp73acaqrtj@ldmartin-desk1>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <20191224012026.3157766-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224012026.3157766-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Add Wa_1408615072 and
 Wa_1407596294 to icl, ehl
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 05:20:25PM -0800, Matt Roper wrote:
>Workaround database indicates we should disable clock gating of both the
>vsunit and hsunit.
>
>Bspec: 33450
>Bspec: 33451
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/i915_reg.h | 4 +++-
> drivers/gpu/drm/i915/intel_pm.c | 8 ++++++++
> 2 files changed, 11 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index bbfedeb00b7f..968a43f7cd98 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4177,7 +4177,9 @@ enum {
> #define  CPSSUNIT_CLKGATE_DIS		REG_BIT(9)
>
> #define UNSLICE_UNIT_LEVEL_CLKGATE	_MMIO(0x9434)
>-#define  VFUNIT_CLKGATE_DIS		(1 << 20)
>+#define   VFUNIT_CLKGATE_DIS		REG_BIT(20)
>+#define   HSUNIT_CLKGATE_DIS		REG_BIT(8)
>+#define   VSUNIT_CLKGATE_DIS		REG_BIT(3)
>
> #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
> #define   CGPSF_CLKGATE_DIS		(1 << 3)
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>index 31ec82337e4f..58ba6cbf9a57 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -6590,6 +6590,14 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
> 	/* WaEnable32PlaneMode:icl */
> 	I915_WRITE(GEN9_CSFE_CHICKEN1_RCS,
> 		   _MASKED_BIT_ENABLE(GEN11_ENABLE_32_PLANE_MODE));
>+
>+	/*
>+	 * Wa_1408615072:icl,ehl  (vsunit)
>+	 * Wa_1407596294:icl,ehl  (hsunit)
>+	 */
>+	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE,
>+			 0, VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);

It's not very clear to me if we should leave it always ungated, but it
seems to follow the other similar WAs.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+
> }
>
> static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
>-- 
>2.23.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

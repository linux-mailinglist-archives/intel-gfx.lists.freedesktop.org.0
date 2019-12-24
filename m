Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C7212A356
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 18:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7655E89CBA;
	Tue, 24 Dec 2019 17:21:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F22D89CBA
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 17:21:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 09:20:59 -0800
X-IronPort-AV: E=Sophos;i="5.69,352,1571727600"; d="scan'208";a="207641124"
Received: from gchancha-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.149.187])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 09:20:59 -0800
Date: Tue, 24 Dec 2019 09:20:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191224172052.e3cdytjmajjjbpks@ldmartin-desk1>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <20191224012026.3157766-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224012026.3157766-4-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/tgl: Extend Wa_1408615072 to
 tgl
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

On Mon, Dec 23, 2019 at 05:20:26PM -0800, Matt Roper wrote:
>Although the workaround number and description are the same, the vsunit
>clock gate disable bit has moved to a new register and location on
>gen12.
>
>Bspec: 52890
>Bspec: 52758
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_reg.h | 3 +++
> drivers/gpu/drm/i915/intel_pm.c | 4 ++++
> 2 files changed, 7 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 968a43f7cd98..030a3f3e69af 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4181,6 +4181,9 @@ enum {
> #define   HSUNIT_CLKGATE_DIS		REG_BIT(8)
> #define   VSUNIT_CLKGATE_DIS		REG_BIT(3)
>
>+#define UNSLICE_UNIT_LEVEL_CLKGATE2	_MMIO(0x94e4)
>+#define   VSUNIT_CLKGATE_DIS_TGL	REG_BIT(19)
>+
> #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
> #define   CGPSF_CLKGATE_DIS		(1 << 3)
>
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>index 58ba6cbf9a57..fe02ac3a3674 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -6605,6 +6605,10 @@ static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
> 	u32 vd_pg_enable = 0;
> 	unsigned int i;
>
>+	/* Wa_1408615072:tgl */
>+	intel_uncore_rmw(&dev_priv->uncore, UNSLICE_UNIT_LEVEL_CLKGATE2,
>+			 0, VSUNIT_CLKGATE_DIS_TGL);
>+
> 	/* This is not a WA. Enable VD HCP & MFX_ENC powergate */
> 	for (i = 0; i < I915_MAX_VCS; i++) {
> 		if (HAS_ENGINE(dev_priv, _VCS(i)))
>-- 
>2.23.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F00AF3D9A1B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 02:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BACA6E217;
	Thu, 29 Jul 2021 00:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC146E217
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 00:32:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="273853990"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="273853990"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 17:32:45 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="476066690"
Received: from dmiller7-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.138.208])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 17:32:44 -0700
Date: Wed, 28 Jul 2021 17:32:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210729003243.nyv6ztueggogcjuv@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
 <20210728215946.1573015-26-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210728215946.1573015-26-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 25/25] drm/i915: finish removal of CNL
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 28, 2021 at 02:59:46PM -0700, Lucas De Marchi wrote:
>With all the users removed, finish removing the CNL platform definitions.
>We will leave the PCI IDs around as those are exposed to userspace.
>Even if mesa doesn't support CNL anymore, let's avoid build breakages
>due to changing the headers.
>
>Also, due to drm/i915/gt still using IS_CANNONLAKE() let's just redefine
>it instead of removing.

+Rodrigo

Rodrigo, when I was going to merge this patch I noticed it was not
really possible. IS_CANNONLAKE() is used in drm/i915/gt/ so it can't be
removed if part of the patches are merged in one branch and the other
part in another.

I also checked if it would be possible to do this by using a topic branch, but that
gives conflicts when trying to use the merge base. So, I re-submitted
the series split in 2: one for drm-intel-next and another for
drm-intel-gt-next. Here instead of removing IS_CANNONLAKE() I only
redefine it to 0.  I'm keeping your previous r-b below, but please let
me know if all above is fine and your r-b still stands.

thanks
Lucas De Marchi


>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>---
> drivers/gpu/drm/i915/i915_drv.h          |  8 ++------
> drivers/gpu/drm/i915/i915_pci.c          | 23 +++++------------------
> drivers/gpu/drm/i915/i915_perf.c         |  1 -
> drivers/gpu/drm/i915/intel_device_info.c |  2 --
> drivers/gpu/drm/i915/intel_device_info.h |  2 --
> 5 files changed, 7 insertions(+), 29 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 5d5cf5ad0513..6ac90ccbee0b 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1380,7 +1380,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_GEMINILAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GEMINILAKE)
> #define IS_COFFEELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COFFEELAKE)
> #define IS_COMETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COMETLAKE)
>-#define IS_CANNONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CANNONLAKE)
>+#define IS_CANNONLAKE(dev_priv)	0
> #define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
> #define IS_JSL_EHL(dev_priv)	(IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
> 				IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
>@@ -1446,8 +1446,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_CML_GT2(dev_priv)	(IS_COMETLAKE(dev_priv) && \
> 				 INTEL_INFO(dev_priv)->gt == 2)
>
>-#define IS_CNL_WITH_PORT_F(dev_priv) \
>-	IS_SUBPLATFORM(dev_priv, INTEL_CANNONLAKE, INTEL_SUBPLATFORM_PORTF)
> #define IS_ICL_WITH_PORT_F(dev_priv) \
> 	IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
>
>@@ -1592,9 +1590,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>
> /* WaRsDisableCoarsePowerGating:skl,cnl */
> #define NEEDS_WaRsDisableCoarsePowerGating(dev_priv)			\
>-	(IS_CANNONLAKE(dev_priv) ||					\
>-	 IS_SKL_GT3(dev_priv) ||					\
>-	 IS_SKL_GT4(dev_priv))
>+	(IS_SKL_GT3(dev_priv) || IS_SKL_GT4(dev_priv))
>
> #define HAS_GMBUS_IRQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 4)
> #define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index ec80cd1cd00c..cb4a46174513 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -787,27 +787,13 @@ static const struct intel_device_info cml_gt2_info = {
> 	.gt = 2,
> };
>
>-#define GEN10_FEATURES \
>-	GEN9_FEATURES, \
>-	GEN(10), \
>-	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */ \
>-	.display.has_dsc = 1, \
>-	.has_coherent_ggtt = false, \
>-	GLK_COLORS
>-
>-static const struct intel_device_info cnl_info = {
>-	GEN10_FEATURES,
>-	PLATFORM(INTEL_CANNONLAKE),
>-	.gt = 2,
>-};
>-
> #define GEN11_DEFAULT_PAGE_SIZES \
> 	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
> 		      I915_GTT_PAGE_SIZE_64K | \
> 		      I915_GTT_PAGE_SIZE_2M
>
> #define GEN11_FEATURES \
>-	GEN10_FEATURES, \
>+	GEN9_FEATURES, \
> 	GEN11_DEFAULT_PAGE_SIZES, \
> 	.abox_mask = BIT(0), \
> 	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>@@ -830,10 +816,12 @@ static const struct intel_device_info cnl_info = {
> 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
> 	}, \
> 	GEN(11), \
>+	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 }, \
> 	.dbuf.size = 2048, \
> 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
>-	.has_logical_ring_elsq = 1, \
>-	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 }
>+	.display.has_dsc = 1, \
>+	.has_coherent_ggtt = false, \
>+	.has_logical_ring_elsq = 1
>
> static const struct intel_device_info icl_info = {
> 	GEN11_FEATURES,
>@@ -1123,7 +1111,6 @@ static const struct pci_device_id pciidlist[] = {
> 	INTEL_CML_GT2_IDS(&cml_gt2_info),
> 	INTEL_CML_U_GT1_IDS(&cml_gt1_info),
> 	INTEL_CML_U_GT2_IDS(&cml_gt2_info),
>-	INTEL_CNL_IDS(&cnl_info),
> 	INTEL_ICL_11_IDS(&icl_info),
> 	INTEL_EHL_IDS(&ehl_info),
> 	INTEL_JSL_IDS(&jsl_info),
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 05e941cd1065..efef89e53440 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -4309,7 +4309,6 @@ static void oa_init_supported_formats(struct i915_perf *perf)
> 	case INTEL_GEMINILAKE:
> 	case INTEL_COFFEELAKE:
> 	case INTEL_COMETLAKE:
>-	case INTEL_CANNONLAKE:
> 	case INTEL_ICELAKE:
> 	case INTEL_ELKHARTLAKE:
> 	case INTEL_JASPERLAKE:
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index 1ccaeb03ad6d..305facedd284 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -59,7 +59,6 @@ static const char * const platform_names[] = {
> 	PLATFORM_NAME(GEMINILAKE),
> 	PLATFORM_NAME(COFFEELAKE),
> 	PLATFORM_NAME(COMETLAKE),
>-	PLATFORM_NAME(CANNONLAKE),
> 	PLATFORM_NAME(ICELAKE),
> 	PLATFORM_NAME(ELKHARTLAKE),
> 	PLATFORM_NAME(JASPERLAKE),
>@@ -175,7 +174,6 @@ static const u16 subplatform_ulx_ids[] = {
> };
>
> static const u16 subplatform_portf_ids[] = {
>-	INTEL_CNL_PORT_F_IDS(0),
> 	INTEL_ICL_PORT_F_IDS(0),
> };
>
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index 316edad22eb0..ef1eecd259e0 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -76,8 +76,6 @@ enum intel_platform {
> 	INTEL_GEMINILAKE,
> 	INTEL_COFFEELAKE,
> 	INTEL_COMETLAKE,
>-	/* gen10 */
>-	INTEL_CANNONLAKE,
> 	/* gen11 */
> 	INTEL_ICELAKE,
> 	INTEL_ELKHARTLAKE,
>-- 
>2.31.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

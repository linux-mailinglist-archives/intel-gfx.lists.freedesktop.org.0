Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A67213DAA3A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 19:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C246EE1F;
	Thu, 29 Jul 2021 17:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEE26EE1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 17:31:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="209825573"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="209825573"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:31:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="666683144"
Received: from oolanipe-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.6.212])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:31:16 -0700
Date: Thu, 29 Jul 2021 10:31:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210729173115.3xplwa2436r243ik@ldmartin-desk2>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-13-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210729170008.2836648-13-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 12/18] drm/i915/xehpsdv: Define MOCS
 table for XeHP SDV
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 29, 2021 at 10:00:02AM -0700, Matt Roper wrote:
>From: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Like DG1, XeHP SDV doesn't have LLC/eDRAM control values due to being a
>dgfx card. XeHP SDV adds 2 more bits: L3_GLBGO to "push the Go point to
>memory for L3 destined transaction" and L3_LKP to "enable Lookup for
>uncacheable accesses".
>
>Bspec: 45101
>Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

+Ayaz,  +Daniel

I think this can't land as is since we risk forgetting additional
changes that we will have to do. We already made the mistake once of
forgetting MOCS changes.

There are some patches to initialize unused MOCS entries and similar
that should have been sent already to upstream. Ayaz, what's the state
of those patches?

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gt/intel_mocs.c | 33 +++++++++++++++++++++++++++-
> 1 file changed, 32 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
>index 17848807f111..0c9d0b936c20 100644
>--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>@@ -40,6 +40,8 @@ struct drm_i915_mocs_table {
> #define L3_ESC(value)		((value) << 0)
> #define L3_SCC(value)		((value) << 1)
> #define _L3_CACHEABILITY(value)	((value) << 4)
>+#define L3_GLBGO(value)		((value) << 6)
>+#define L3_LKUP(value)		((value) << 7)
>
> /* Helper defines */
> #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
>@@ -314,6 +316,31 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
> 	MOCS_ENTRY(63, 0, L3_1_UC),
> };
>
>+static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
>+	/* wa_1608975824 */
>+	MOCS_ENTRY(0, 0, L3_3_WB | L3_LKUP(1)),
>+
>+	/* UC - Coherent; GO:L3 */
>+	MOCS_ENTRY(1, 0, L3_1_UC | L3_LKUP(1)),
>+	/* UC - Coherent; GO:Memory */
>+	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
>+	/* UC - Non-Coherent; GO:Memory */
>+	MOCS_ENTRY(3, 0, L3_1_UC | L3_GLBGO(1)),
>+	/* UC - Non-Coherent; GO:L3 */
>+	MOCS_ENTRY(4, 0, L3_1_UC),
>+
>+	/* WB */
>+	MOCS_ENTRY(5, 0, L3_3_WB | L3_LKUP(1)),
>+
>+	/* HW Reserved - SW program but never use. */
>+	MOCS_ENTRY(48, 0, L3_3_WB | L3_LKUP(1)),
>+	MOCS_ENTRY(49, 0, L3_1_UC | L3_LKUP(1)),
>+	MOCS_ENTRY(60, 0, L3_1_UC),
>+	MOCS_ENTRY(61, 0, L3_1_UC),
>+	MOCS_ENTRY(62, 0, L3_1_UC),
>+	MOCS_ENTRY(63, 0, L3_1_UC),
>+};
>+
> enum {
> 	HAS_GLOBAL_MOCS = BIT(0),
> 	HAS_ENGINE_MOCS = BIT(1),
>@@ -340,7 +367,11 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
> {
> 	unsigned int flags;
>
>-	if (IS_DG1(i915)) {
>+	if (IS_XEHPSDV(i915)) {
>+		table->size = ARRAY_SIZE(xehpsdv_mocs_table);
>+		table->table = xehpsdv_mocs_table;
>+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>+	} else if (IS_DG1(i915)) {
> 		table->size = ARRAY_SIZE(dg1_mocs_table);
> 		table->table = dg1_mocs_table;
> 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>-- 
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

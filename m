Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6463DBD71
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 19:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F406ED03;
	Fri, 30 Jul 2021 17:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78CB86ED03
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 17:01:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="193411402"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="193411402"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 10:01:25 -0700
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="435930535"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 10:01:21 -0700
Date: Fri, 30 Jul 2021 10:01:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 "Lahtinen, Joonas" <joonas.lahtinen@intel.com>
Message-ID: <20210730170119.GS1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-13-matthew.d.roper@intel.com>
 <20210729173115.3xplwa2436r243ik@ldmartin-desk2>
 <BL3PR11MB5746ACB01581D35806A1AA57FCEC9@BL3PR11MB5746.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL3PR11MB5746ACB01581D35806A1AA57FCEC9@BL3PR11MB5746.namprd11.prod.outlook.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 30, 2021 at 12:16:14AM -0700, Siddiqui, Ayaz A wrote:
> 
> 
> > -----Original Message-----
> > From: De Marchi, Lucas <lucas.demarchi@intel.com>
> > Sent: Thursday, July 29, 2021 11:01 PM
> > To: Roper, Matthew D <matthew.d.roper@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Siddiqui, Ayaz A
> > <ayaz.siddiqui@intel.com>; Daniel Vetter <daniel.vetter@ffwll.ch>
> > Subject: Re: [Intel-gfx] [PATCH v4 12/18] drm/i915/xehpsdv: Define MOCS
> > table for XeHP SDV
> >
> > On Thu, Jul 29, 2021 at 10:00:02AM -0700, Matt Roper wrote:
> > >From: Lucas De Marchi <lucas.demarchi@intel.com>
> > >
> > >Like DG1, XeHP SDV doesn't have LLC/eDRAM control values due to being a
> > >dgfx card. XeHP SDV adds 2 more bits: L3_GLBGO to "push the Go point to
> > >memory for L3 destined transaction" and L3_LKP to "enable Lookup for
> > >uncacheable accesses".
> > >
> > >Bspec: 45101
> > >Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > >Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > >Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > >Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> >
> > +Ayaz,  +Daniel
> >
> > I think this can't land as is since we risk forgetting additional changes that we
> > will have to do. We already made the mistake once of forgetting MOCS
> > changes.
> >
> > There are some patches to initialize unused MOCS entries and similar that
> > should have been sent already to upstream. Ayaz, what's the state of those
> > patches?
> There are two section of patches .
> 1. Programming to  CMD_CCTL for with UC this patch should sent for upstream.
> I'll share the patches for CMD_CCTL programming.
> 2. Programming of unused/unspecified MOCS index to WB, we observed some
> regression on media use cases. So we decided to delay  upstreaming of
> those patches till  MOCS programming are fixed in UMDs.

I don't follow on #2.  At the moment we don't have a complete XeHP SDV
driver upstream (the device IDs aren't even there and won't be for a
while) so there's nothing that can regress yet from an upstream point of
view --- you can't run a UMD at all today.  If internal builds of the
UMDs run against our internal staging trees are still buggy and won't
work properly with the proper MOCS table settings, then that just makes
it more important to upstream these patches now so that the UMD's don't
come to rely on the incorrect table values.  If we wait until later
after the driver is "complete" and we've already enabled first contact
of the UMDs in general, then we won't be able to update the MOCS
programming to the proper values anymore without breaking ABI.

Unless you're talking about regressing older platforms?  In that case we
should be able to restrict the WB programming to just Xe_HP SDV for now;
ultimately we'll probably need to figure out some kind of opt-in
mechanism for the older platforms, but that can be separate from doing
it unconditionally on Xe_HP SDV and beyond I think.


Matt

> Regards
> -Ayaz
> 
> >
> > Lucas De Marchi
> >
> > >---
> > > drivers/gpu/drm/i915/gt/intel_mocs.c | 33
> > +++++++++++++++++++++++++++-
> > > 1 file changed, 32 insertions(+), 1 deletion(-)
> > >
> > >diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > >b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > >index 17848807f111..0c9d0b936c20 100644
> > >--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > >+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > >@@ -40,6 +40,8 @@ struct drm_i915_mocs_table {
> > > #define L3_ESC(value)               ((value) << 0)
> > > #define L3_SCC(value)               ((value) << 1)
> > > #define _L3_CACHEABILITY(value)     ((value) << 4)
> > >+#define L3_GLBGO(value)             ((value) << 6)
> > >+#define L3_LKUP(value)              ((value) << 7)
> > >
> > > /* Helper defines */
> > > #define GEN9_NUM_MOCS_ENTRIES       64  /* 63-64 are reserved, but
> > configured. */
> > >@@ -314,6 +316,31 @@ static const struct drm_i915_mocs_entry
> > dg1_mocs_table[] = {
> > >     MOCS_ENTRY(63, 0, L3_1_UC),
> > > };
> > >
> > >+static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
> > >+    /* wa_1608975824 */
> > >+    MOCS_ENTRY(0, 0, L3_3_WB | L3_LKUP(1)),
> > >+
> > >+    /* UC - Coherent; GO:L3 */
> > >+    MOCS_ENTRY(1, 0, L3_1_UC | L3_LKUP(1)),
> > >+    /* UC - Coherent; GO:Memory */
> > >+    MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
> > >+    /* UC - Non-Coherent; GO:Memory */
> > >+    MOCS_ENTRY(3, 0, L3_1_UC | L3_GLBGO(1)),
> > >+    /* UC - Non-Coherent; GO:L3 */
> > >+    MOCS_ENTRY(4, 0, L3_1_UC),
> > >+
> > >+    /* WB */
> > >+    MOCS_ENTRY(5, 0, L3_3_WB | L3_LKUP(1)),
> > >+
> > >+    /* HW Reserved - SW program but never use. */
> > >+    MOCS_ENTRY(48, 0, L3_3_WB | L3_LKUP(1)),
> > >+    MOCS_ENTRY(49, 0, L3_1_UC | L3_LKUP(1)),
> > >+    MOCS_ENTRY(60, 0, L3_1_UC),
> > >+    MOCS_ENTRY(61, 0, L3_1_UC),
> > >+    MOCS_ENTRY(62, 0, L3_1_UC),
> > >+    MOCS_ENTRY(63, 0, L3_1_UC),
> > >+};
> > >+
> > > enum {
> > >     HAS_GLOBAL_MOCS = BIT(0),
> > >     HAS_ENGINE_MOCS = BIT(1),
> > >@@ -340,7 +367,11 @@ static unsigned int get_mocs_settings(const struct
> > >drm_i915_private *i915,  {
> > >     unsigned int flags;
> > >
> > >-    if (IS_DG1(i915)) {
> > >+    if (IS_XEHPSDV(i915)) {
> > >+            table->size = ARRAY_SIZE(xehpsdv_mocs_table);
> > >+            table->table = xehpsdv_mocs_table;
> > >+            table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > >+    } else if (IS_DG1(i915)) {
> > >             table->size = ARRAY_SIZE(dg1_mocs_table);
> > >             table->table = dg1_mocs_table;
> > >             table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> > >--
> > >2.25.4
> > >
> > >_______________________________________________
> > >Intel-gfx mailing list
> > >Intel-gfx@lists.freedesktop.org
> > >https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795

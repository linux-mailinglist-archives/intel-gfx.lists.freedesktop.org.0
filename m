Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4743E1A9A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 19:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E376E239;
	Thu,  5 Aug 2021 17:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 220DD6E10A;
 Thu,  5 Aug 2021 17:42:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 181A9A47E2;
 Thu,  5 Aug 2021 17:42:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 05 Aug 2021 17:42:44 -0000
Message-ID: <162818536406.30835.17151192854544213824@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Begin_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev9=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev9)
URL   : https://patchwork.freedesktop.org/series/92135/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
515352629f0e drm/i915/dg2: Add support for new DG2-G11 revid 0x5
b8058f4b6221 drm/i915/xehp: Loop over all gslices for INSTDONE processing
-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'iter_' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:582:
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gslice_' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:582:
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dss_' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/gt/intel_engine_types.h:582:
+#define for_each_instdone_gslice_dss_xehp(dev_priv_, sseu_, iter_, gslice_, dss_) \
+	for ((iter_) = 0, (gslice_) = 0, (dss_) = 0; \
+	     (iter_) < GEN_MAX_SUBSLICES; \
+	     (iter_)++, (gslice_) = (iter_) / GEN_DSS_PER_GSLICE, \
+	     (dss_) = (iter_) % GEN_DSS_PER_GSLICE) \
+		for_each_if(intel_sseu_has_subslice((sseu_), 0, (iter_)))

total: 0 errors, 0 warnings, 3 checks, 164 lines checked
8b84974c7782 drm/i915/dg2: Report INSTDONE_GEOM values in error state
0b355c3ad3ca drm/i915/xehpsdv: Add compute DSS type
f61fbc6c1d71 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
7c5f8a298512 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
de625d7a0adc drm/i915/dg2: Add new LRI reg offsets
af46376d4b74 drm/i915/dg2: Maintain backward-compatible nested batch behavior
e8ef3eecff4f drm/i915/dg2: Configure PCON in DP pre-enable path



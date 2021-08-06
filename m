Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E54CF3E2F2B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 20:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A72F6E1FB;
	Fri,  6 Aug 2021 18:13:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDBCF6E1FB;
 Fri,  6 Aug 2021 18:13:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3D9EA7E03;
 Fri,  6 Aug 2021 18:13:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Aug 2021 18:13:49 -0000
Message-ID: <162827362989.27548.15773086883687341890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210805163647.801064-1-matthew.d.roper@intel.com>
In-Reply-To: <20210805163647.801064-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Begin_enabling_Xe=5FHP_SDV_and_DG2_platforms_=28rev10=29?=
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

Series: Begin enabling Xe_HP SDV and DG2 platforms (rev10)
URL   : https://patchwork.freedesktop.org/series/92135/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0ebc963f011d drm/i915/xehp: Loop over all gslices for INSTDONE processing
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
91cde6f62ffc drm/i915/dg2: Report INSTDONE_GEOM values in error state
9dd72d6a97d4 drm/i915/xehpsdv: Add compute DSS type
9793162b05a6 drm/i915/xehpsdv: factor out function to read RP_STATE_CAP
8db8e3b6bca0 drm/i915/xehpsdv: Read correct RP_STATE_CAP register
8c7ca653ac33 drm/i915/dg2: Add new LRI reg offsets
23befa04925d drm/i915/dg2: Maintain backward-compatible nested batch behavior
c5300668b502 drm/i915/dg2: Configure PCON in DP pre-enable path



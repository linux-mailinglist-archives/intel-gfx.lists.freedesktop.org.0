Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2705F6073
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 07:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD2D10E4A0;
	Thu,  6 Oct 2022 05:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEE5D10E4A0;
 Thu,  6 Oct 2022 05:09:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7243AADDB;
 Thu,  6 Oct 2022 05:09:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 06 Oct 2022 05:09:22 -0000
Message-ID: <166503296285.5836.9799827071503060111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_Prepare_intel=5Fpxp_entry_points_for_MTL_?=
 =?utf-8?b?KHJldjIp?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/pxp: Prepare intel_pxp entry points for MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/109429/
State : warning

== Summary ==

Error: dim checkpatch failed
e2bceb18904d drm/i915/pxp: Make gt and pxp init/fini aware of PXP-owning-GT
-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/i915_drv.h:931:
+#define HAS_PXP(gt)  (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+		      (INTEL_INFO((gt)->i915)->has_pxp) && \
+		      VDBOX_MASK(gt))

total: 0 errors, 0 warnings, 1 checks, 109 lines checked
1f1753bb52ee drm/i915/pxp: Make intel_pxp_is_enabled implicitly sort PXP-owning-GT
30a1484a0c1a drm/i915/pxp: Make intel_pxp_is_active implicitly sort PXP-owning-GT
577e6440900e drm/i915/pxp: Make PXP tee component bind/unbind aware of PXP-owning-GT
20f4cd71b4a2 drm/i915/pxp: Make intel_pxp_start implicitly sort PXP-owning-GT
bd11ef807bfd drm/i915/pxp: Make intel_pxp_key_check implicitly sort PXP-owning-GT
21a3feb6e84d drm/i915/pxp: Make intel_pxp power management implicitly sort PXP-owning-GT



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D078306D1D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:53:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3641A6E8D1;
	Thu, 28 Jan 2021 05:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4087B6E8CA;
 Thu, 28 Jan 2021 05:53:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B03EA00CC;
 Thu, 28 Jan 2021 05:53:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Thu, 28 Jan 2021 05:53:28 -0000
Message-ID: <161181320821.13618.13209522120215623602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128053024.23540-1-aditya.swarup@intel.com>
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Final_set_of_patches_for_ADLS_enabling_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Final set of patches for ADLS enabling (rev2)
URL   : https://patchwork.freedesktop.org/series/86322/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
36f14b084aab drm/i915/adl_s: Update PHY_MISC programming
8cede37510f4 drm/i915/adl_s: MCHBAR memory info registers are moved
83ca04828dec drm/i915/adl_s: Add power wells
2344dadc51da drm/i915/adl_s: Re-use TGL GuC/HuC firmware
cd49856755a6 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:1788:
+#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
+					      IS_ALDERLAKE_S(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 33 lines checked
804019e4857d drm/i915/adl_s: Load DMC
9d4007d2b51b drm/i915/adl_s: Update memory bandwidth parameters
-:48: CHECK:LINE_SPACING: Please don't use multiple blank lines
#48: FILE: drivers/gpu/drm/i915/display/intel_bw.c:324:
 
+

total: 0 errors, 0 warnings, 1 checks, 23 lines checked
28a8fca6f022 drm/i915/adl_s: Add display WAs for ADL-S
234b877a1668 drm/i915/adl_s: Add GT and CTX WAs for ADL-S


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

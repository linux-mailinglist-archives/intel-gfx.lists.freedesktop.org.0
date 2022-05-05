Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBF251CAD9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 22:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F5A110E1F4;
	Thu,  5 May 2022 20:59:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDEDE10E1F4;
 Thu,  5 May 2022 20:59:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7CABAADD1;
 Thu,  5 May 2022 20:59:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 05 May 2022 20:59:34 -0000
Message-ID: <165178437465.7659.6034922746202427080@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220505193524.276400-1-jose.souza@intel.com>
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/7=5D_drm/i915=3A_Drop_has=5F?=
 =?utf-8?q?gt=5Fuc_from_device_info?=
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

Series: series starting with [CI,1/7] drm/i915: Drop has_gt_uc from device info
URL   : https://patchwork.freedesktop.org/series/103629/
State : warning

== Summary ==

Error: dim checkpatch failed
56f051d52ffd drm/i915: Drop has_gt_uc from device info
a717cf4a929c drm/i915: Drop has_rc6 from device info
1a4866e2ef4f drm/i915: Drop has_reset_engine from device info
11be45433d96 drm/i915: Drop has_logical_ring_elsq from device info
2ecbebbec07c drm/i915: Drop has_ddi from device info
-:30: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#30: FILE: drivers/gpu/drm/i915/i915_drv.h:1302:
+#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
+					  IS_BROADWELL(dev_priv) || \
+					  IS_HASWELL(dev_priv))

total: 0 errors, 0 warnings, 1 checks, 38 lines checked
45ea626789c0 drm/i915: Drop has_dp_mst from device info
845b08ad5861 drm/i915: Drop has_psr from device info



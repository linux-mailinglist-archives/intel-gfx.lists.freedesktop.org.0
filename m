Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1C13626AF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 19:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021216E1D7;
	Fri, 16 Apr 2021 17:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BBDA6E1D3;
 Fri, 16 Apr 2021 17:25:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67A40A8835;
 Fri, 16 Apr 2021 17:25:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Apr 2021 17:25:05 -0000
Message-ID: <161859390539.27645.16566556268430544643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_dbuf_cleanups?=
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

Series: drm/i915: dbuf cleanups
URL   : https://patchwork.freedesktop.org/series/89171/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c4e158b6022a drm/i915: Collect dbuf device info into a sub-struct
3bcf75a562a4 drm/i915: Handle dbuf bypass path allocation earlier
-:33: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#33: FILE: drivers/gpu/drm/i915/i915_pci.c:723:
+	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */ \

-:41: WARNING:LINE_CONTINUATIONS: Avoid unnecessary line continuations
#41: FILE: drivers/gpu/drm/i915/i915_pci.c:730:
+	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */ \

total: 0 errors, 2 warnings, 0 checks, 47 lines checked
6182af680aea drm/i915: Store dbuf slice mask in device info
4bec22613175 drm/i915: Use intel_dbuf_slice_size()
407ca0202e11 drm/i915: Use intel_de_rmw() for DBUF_POWER_REQUEST
bbfbba08f9aa drm/i915: Polish for_each_dbuf_slice()
-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__slice' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/display/intel_display.h:191:
+#define for_each_dbuf_slice(__dev_priv, __slice) \
 	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if(INTEL_INFO(__dev_priv)->dbuf.slice_mask & BIT(__slice))

-:86: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#86: FILE: drivers/gpu/drm/i915/display/intel_display.h:195:
+#define for_each_dbuf_slice_in_mask(__dev_priv, __slice, __mask) \
+	for_each_dbuf_slice((__dev_priv), (__slice)) \
+		for_each_if((__mask) & BIT(__slice))

-:86: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__slice' - possible side-effects?
#86: FILE: drivers/gpu/drm/i915/display/intel_display.h:195:
+#define for_each_dbuf_slice_in_mask(__dev_priv, __slice, __mask) \
+	for_each_dbuf_slice((__dev_priv), (__slice)) \
+		for_each_if((__mask) & BIT(__slice))

total: 1 errors, 0 warnings, 2 checks, 162 lines checked
b571b996abd4 drm/i915: Add enabledisable()
bb42f353dfe4 drm/i915: Say "enable foo" instead of "set foo to enabled"


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

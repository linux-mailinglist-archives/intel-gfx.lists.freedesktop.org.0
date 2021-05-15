Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D1D3814DE
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 03:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553F36E82B;
	Sat, 15 May 2021 01:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 702FA6E32A;
 Sat, 15 May 2021 01:13:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 688DAA00E6;
 Sat, 15 May 2021 01:13:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dale B Stimson" <dale.b.stimson@intel.com>
Date: Sat, 15 May 2021 01:13:19 -0000
Message-ID: <162104119939.17967.1548357204263236385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210515002247.94609-1-dale.b.stimson@intel.com>
In-Reply-To: <20210515002247.94609-1-dale.b.stimson@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg1=3A_Add_HWMON_power_support?=
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

Series: drm/i915/dg1: Add HWMON power support
URL   : https://patchwork.freedesktop.org/series/90186/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
72896d03e908 drm/i915/dg1: Add HWMON power support
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

-:255: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#255: FILE: drivers/gpu/drm/i915/i915_hwmon.c:31:
+#define FIELD_SHIFT(__mask)				    \
+	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
+		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
+		__bf_shf(__mask))

-:1001: WARNING:RETURN_VOID: void function return statements are not generally useful
#1001: FILE: drivers/gpu/drm/i915/i915_hwmon.c:777:
+	return;
+}

total: 0 errors, 2 warnings, 1 checks, 1071 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

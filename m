Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 485D0495720
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 00:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ACD610E6A8;
	Thu, 20 Jan 2022 23:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F20210E68A;
 Thu, 20 Jan 2022 23:58:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BCEFA8836;
 Thu, 20 Jan 2022 23:58:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Casey Bowman" <casey.g.bowman@intel.com>
Date: Thu, 20 Jan 2022 23:58:41 -0000
Message-ID: <164272312121.22529.5118910666405347643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
In-Reply-To: <20220120221652.207255-1-casey.g.bowman@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Splitting_up_platform-specific_calls?=
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

Series: Splitting up platform-specific calls
URL   : https://patchwork.freedesktop.org/series/99126/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cfedaf9b9519 i915/drm: Split out x86 and arm64 functionality
-:53: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#53: 
new file mode 100644

-:112: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#112: FILE: drivers/gpu/drm/i915/i915_platform_arm64.c:33:
+}
+/* End of i915_drv functionality */

-:151: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#151: FILE: drivers/gpu/drm/i915/i915_platform_x86.c:33:
+}
+/* End of i915_drv functionality */

total: 0 errors, 1 warnings, 2 checks, 110 lines checked



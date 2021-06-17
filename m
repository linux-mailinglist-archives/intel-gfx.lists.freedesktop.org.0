Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CA63AAE87
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 10:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD506E89D;
	Thu, 17 Jun 2021 08:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E51C66E89D;
 Thu, 17 Jun 2021 08:13:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDFA2A0169;
 Thu, 17 Jun 2021 08:13:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dale B Stimson" <dale.b.stimson@intel.com>
Date: Thu, 17 Jun 2021 08:13:39 -0000
Message-ID: <162391761990.3751.4947810083879397995@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210617064309.33420-1-dale.b.stimson@intel.com>
In-Reply-To: <20210617064309.33420-1-dale.b.stimson@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dg1=3A_Add_HWMON_power_sensor_support_=28rev6=29?=
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

Series: drm/i915/dg1: Add HWMON power sensor support (rev6)
URL   : https://patchwork.freedesktop.org/series/88459/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
77d53ceadffe drm/i915/dg1: Add HWMON power sensor support
-:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#22: 
new file mode 100644

-:250: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#250: FILE: drivers/gpu/drm/i915/i915_hwmon.c:31:
+#define FIELD_SHIFT(__mask)				    \
+	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
+		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
+		__bf_shf(__mask))

total: 0 errors, 1 warnings, 1 checks, 1042 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

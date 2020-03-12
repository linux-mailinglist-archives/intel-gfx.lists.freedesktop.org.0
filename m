Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB8183941
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 20:12:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C96346EB2E;
	Thu, 12 Mar 2020 19:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A01BE6EB2C;
 Thu, 12 Mar 2020 19:12:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9896AA0094;
 Thu, 12 Mar 2020 19:12:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Thu, 12 Mar 2020 19:12:18 -0000
Message-ID: <158404033859.4949.2166179463920825730@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312185629.141280-1-rajatja@google.com>
In-Reply-To: <20200312185629.141280-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915_Support_for_integrated_privacy_screen?=
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

Series: drm/i915 Support for integrated privacy screen
URL   : https://patchwork.freedesktop.org/series/74650/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a0d97f65392d intel_acpi: Rename drm_dev local variable to dev
500f89acca9c drm/connector: Add support for privacy-screen property
50fff7891e7a drm/i915: Lookup and attach ACPI device node for connectors
d25c3af2f2e2 drm/i915: Add helper code for ACPI privacy screen
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:145: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'conn' - possible side-effects?
#145: FILE: drivers/gpu/drm/i915/display/intel_privacy_screen.c:114:
+#define CONN_NAME(conn)						\
+	(conn->base.kdev ? dev_name(conn->base.kdev) : "NONAME")

-:145: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'conn' may be better as '(conn)' to avoid precedence issues
#145: FILE: drivers/gpu/drm/i915/display/intel_privacy_screen.c:114:
+#define CONN_NAME(conn)						\
+	(conn->base.kdev ? dev_name(conn->base.kdev) : "NONAME")

total: 0 errors, 1 warnings, 2 checks, 220 lines checked
6d59d9dc39bf drm/i915: Enable support for integrated privacy screen

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

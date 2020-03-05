Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96817AE1A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 19:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A918F6E394;
	Thu,  5 Mar 2020 18:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54EB16E391;
 Thu,  5 Mar 2020 18:31:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 443B8A47DF;
 Thu,  5 Mar 2020 18:31:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Thu, 05 Mar 2020 18:31:55 -0000
Message-ID: <158343311525.17234.5425681317422817453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305011943.214146-1-rajatja@google.com>
In-Reply-To: <20200305011943.214146-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C1/3=5D_intel=5Facpi=3A_Rename_?=
 =?utf-8?q?drm=5Fdev_local_variable_to_dev?=
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

Series: series starting with [v6,1/3] intel_acpi: Rename drm_dev local variable to dev
URL   : https://patchwork.freedesktop.org/series/74298/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c20368a27477 intel_acpi: Rename drm_dev local variable to dev
f4a4471b5c37 drm/i915: Lookup and attach ACPI device node for connectors
-:56: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#56: FILE: drivers/gpu/drm/i915/display/intel_acpi.c:265:
+		conn_dev = acpi_find_child_device(

total: 0 errors, 0 warnings, 1 checks, 70 lines checked
f9f7e4554cff drm/i915: Add support for integrated privacy screens
-:205: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#205: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 248 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

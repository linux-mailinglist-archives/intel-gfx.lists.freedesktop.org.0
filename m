Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F7C1A377A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 17:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0005B6EBFD;
	Thu,  9 Apr 2020 15:51:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 188B96EBFB;
 Thu,  9 Apr 2020 15:51:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12B25A7DFD;
 Thu,  9 Apr 2020 15:51:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Masahiro Yamada" <masahiroy@kernel.org>
Date: Thu, 09 Apr 2020 15:51:22 -0000
Message-ID: <158644748207.11549.5823317116867961404@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409150627.29205-1-masahiroy@kernel.org>
In-Reply-To: <20200409150627.29205-1-masahiroy@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_remove_unneeded_?=
 =?utf-8?q?ccflags-y_from_gvt/Makefile?=
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

Series: series starting with [1/2] drm/i915: remove unneeded ccflags-y from gvt/Makefile
URL   : https://patchwork.freedesktop.org/series/75756/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b7e9f445aafa drm/i915: remove unneeded ccflags-y from gvt/Makefile
-:42: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gvt/trace.h:380:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                              ^

-:42: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gvt/trace.h:380:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                 ^

-:42: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gvt/trace.h:380:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                         ^

-:42: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gvt/trace.h:380:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                             ^

-:42: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gvt/trace.h:380:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                                 ^

-:42: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/gvt/trace.h:380:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                                      ^

total: 0 errors, 0 warnings, 6 checks, 13 lines checked
923a4c826748 drm/i915: remove gvt/Makefile
-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 34 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

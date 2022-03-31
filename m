Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D4D4ED5A0
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 10:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C368D10F640;
	Thu, 31 Mar 2022 08:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53BC510EB0A;
 Thu, 31 Mar 2022 08:30:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 505D8AADDD;
 Thu, 31 Mar 2022 08:30:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 31 Mar 2022 08:30:12 -0000
Message-ID: <164871541232.14474.8664346767921863061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220331082127.432171-1-jani.nikula@intel.com>
In-Reply-To: <20220331082127.432171-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gvt=3A_fix_trace_TR?=
 =?utf-8?q?ACE=5FINCLUDE=5FPATH?=
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

Series: series starting with [1/2] drm/i915/gvt: fix trace TRACE_INCLUDE_PATH
URL   : https://patchwork.freedesktop.org/series/102003/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4198a0bcbda7 drm/i915/gvt: fix trace TRACE_INCLUDE_PATH
-:22: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gvt/trace.h:381:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                              ^

-:22: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gvt/trace.h:381:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                 ^

-:22: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gvt/trace.h:381:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                         ^

-:22: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gvt/trace.h:381:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                             ^

-:22: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gvt/trace.h:381:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                                 ^

-:22: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#22: FILE: drivers/gpu/drm/i915/gvt/trace.h:381:
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
                                                      ^

total: 0 errors, 0 warnings, 6 checks, 8 lines checked
3a5c41201fbd drm/i915/gvt: better align the Makefile with i915 Makefile



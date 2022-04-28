Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AAF513CF1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 22:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2695B10E0EA;
	Thu, 28 Apr 2022 20:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA57D10E0CA;
 Thu, 28 Apr 2022 20:55:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDE82A008A;
 Thu, 28 Apr 2022 20:55:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 28 Apr 2022 20:55:48 -0000
Message-ID: <165117934888.29091.6332905304078261957@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220428204011.3365653-1-lucas.demarchi@intel.com>
In-Reply-To: <20220428204011.3365653-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/gvt=3A_Fix_missing_stati?=
 =?utf-8?q?c?=
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

Series: series starting with [1/2] drm/i915/gvt: Fix missing static
URL   : https://patchwork.freedesktop.org/series/103293/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gvt/handlers.o
drivers/gpu/drm/i915/gvt/handlers.c:75:13: error: static declaration of ‘intel_gvt_match_device’ follows non-static declaration
 static bool intel_gvt_match_device(struct intel_gvt *gvt,
             ^~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gvt/gvt.h:42,
                 from drivers/gpu/drm/i915/gvt/handlers.c:41:
drivers/gpu/drm/i915/gvt/mmio.h:75:6: note: previous declaration of ‘intel_gvt_match_device’ was here
 bool intel_gvt_match_device(struct intel_gvt *gvt, unsigned long device);
      ^~~~~~~~~~~~~~~~~~~~~~
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gvt/handlers.o' failed
make[4]: *** [drivers/gpu/drm/i915/gvt/handlers.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1834: recipe for target 'drivers' failed
make: *** [drivers] Error 2



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86BF4AC9F8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 20:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD9E10F8FD;
	Mon,  7 Feb 2022 19:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FA4A10F8B6;
 Mon,  7 Feb 2022 19:59:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A1F4AA0EA;
 Mon,  7 Feb 2022 19:59:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jordan Justen" <jordan.l.justen@intel.com>
Date: Mon, 07 Feb 2022 19:59:42 -0000
Message-ID: <164426398226.23830.5231981821416866914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220207192854.862959-1-jordan.l.justen@intel.com>
In-Reply-To: <20220207192854.862959-1-jordan.l.justen@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBH?=
 =?utf-8?q?uC_HWCONFIG_with_documentation?=
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

Series: GuC HWCONFIG with documentation
URL   : https://patchwork.freedesktop.org/series/99787/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.o
drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c: In function ‘verify_hwconfig_blob’:
drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c:79:2: error: ISO C90 forbids mixed declarations and code [-Werror=declaration-after-statement]
  struct drm_i915_query_hwconfig_blob_item *pos = hwconfig->ptr;
  ^~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2



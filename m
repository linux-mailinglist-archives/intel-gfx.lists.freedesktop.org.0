Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDD8495287
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 17:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A2F10E7A1;
	Thu, 20 Jan 2022 16:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D77210E7AB;
 Thu, 20 Jan 2022 16:41:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98B21A9932;
 Thu, 20 Jan 2022 16:41:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "C, Ramalingam" <ramalingam.c@intel.com>
Date: Thu, 20 Jan 2022 16:41:09 -0000
Message-ID: <164269686962.22530.18187153814336878720@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120162102.10652-1-ramalingam.c@intel.com>
In-Reply-To: <20220120162102.10652-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Add_needs=5Fcompact=5Fpt_flag?=
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

Series: drm/i915: Add needs_compact_pt flag
URL   : https://patchwork.freedesktop.org/series/99105/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
In file included from ./drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h:11,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_guc.h:19,
                 from ./drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                 from ./drivers/gpu/drm/i915/gt/intel_gt_types.h:18,
                 from ./drivers/gpu/drm/i915/gt/intel_engine.h:18,
                 from ./drivers/gpu/drm/i915/i915_drv.h:85,
                 from ./drivers/gpu/drm/i915/gt/intel_context.h:14,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:12,
                 from drivers/gpu/drm/i915/i915_driver.c:64:
./drivers/gpu/drm/i915/intel_device_info.h:277: error: unterminated argument list invoking macro "DEFINE_FLAG"
 #endif
 
./drivers/gpu/drm/i915/intel_device_info.h:203:25: error: expected specifier-qualifier-list before ‘DEFINE_FLAG’
  DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
                         ^~~~~~~~~~~
./drivers/gpu/drm/i915/intel_device_info.h:133:2: note: in definition of macro ‘DEV_INFO_FOR_EACH_FLAG’
  func(needs_compact_pt; \
  ^~~~
scripts/Makefile.build:287: recipe for target 'drivers/gpu/drm/i915/i915_driver.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_driver.o] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2



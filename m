Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3BA45D6E0
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 10:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B126EB40;
	Thu, 25 Nov 2021 09:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A70286EB40;
 Thu, 25 Nov 2021 09:11:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9FCDCA01BB;
 Thu, 25 Nov 2021 09:11:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wang, Zhi A" <zhi.a.wang@intel.com>
Date: Thu, 25 Nov 2021 09:11:48 -0000
Message-ID: <163783150861.17555.4308166136378426158@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211119130307.21098-1-zhi.a.wang@intel.com>
In-Reply-To: <20211119130307.21098-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_i915/gvt=3A_Introduce_the_mmio=5F?=
 =?utf-8?q?info=5Ftable=2Ec_to_support_VFIO_new_mdev_API_=28rev2=29?=
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

Series: series starting with [1/2] i915/gvt: Introduce the mmio_info_table.c to support VFIO new mdev API (rev2)
URL   : https://patchwork.freedesktop.org/series/97110/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  LD [M]  drivers/gpu/drm/i915/i915.o
  HDRTEST drivers/gpu/drm/i915/gvt/mmio_info_table.h
In file included from <command-line>:
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:28:48: error: ‘struct intel_gvt’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt);
                                                ^~~~~~~~~
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:29:1: error: unknown type name ‘bool’; did you mean ‘_Bool’?
 bool intel_gvt_match_device(struct intel_gvt *gvt, unsigned long device);
 ^~~~
 _Bool
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:29:36: error: ‘struct intel_gvt’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 bool intel_gvt_match_device(struct intel_gvt *gvt, unsigned long device);
                                    ^~~~~~~~~
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:31:40: error: unknown type name ‘u32’
  int (*handler)(struct intel_gvt *gvt, u32 offset, void *data),
                                        ^~~
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:32:2: error: expected ‘;’, ‘,’ or ‘)’ before ‘void’
  void *data);
  ^~~~
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:33:61: error: ‘struct intel_gvt’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 struct intel_gvt_mmio_info *intel_gvt_find_mmio_info(struct intel_gvt *gvt,
                                                             ^~~~~~~~~
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:35:38: error: ‘struct intel_gvt’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 int intel_gvt_setup_mmio_info(struct intel_gvt *gvt);
                                      ^~~~~~~~~
./drivers/gpu/drm/i915/gvt/mmio_info_table.h:36:39: error: ‘struct intel_gvt’ declared inside parameter list will not be visible outside of this definition or declaration [-Werror]
 void intel_gvt_clean_mmio_info(struct intel_gvt *gvt);
                                       ^~~~~~~~~
cc1: all warnings being treated as errors
drivers/gpu/drm/i915/Makefile:340: recipe for target 'drivers/gpu/drm/i915/gvt/mmio_info_table.hdrtest' failed
make[4]: *** [drivers/gpu/drm/i915/gvt/mmio_info_table.hdrtest] Error 1
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:549: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1846: recipe for target 'drivers' failed
make: *** [drivers] Error 2



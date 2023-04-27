Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D54E6F0998
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 18:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BC710EBAF;
	Thu, 27 Apr 2023 16:14:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B93A610EBAF;
 Thu, 27 Apr 2023 16:14:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21D1FA0BA8;
 Thu, 27 Apr 2023 16:14:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 27 Apr 2023 16:14:45 -0000
Message-ID: <168261208513.9053.17545998860303806498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230427124537.820273-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230427124537.820273-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBF?=
 =?utf-8?q?xpose_RPS_thresholds_in_sysfs?=
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

Series: Expose RPS thresholds in sysfs
URL   : https://patchwork.freedesktop.org/series/117054/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_rps.o
In file included from ./include/linux/interrupt.h:6,
                 from ./include/drm/drm_util.h:35,
                 from ./drivers/gpu/drm/i915/display/intel_display.h:28,
                 from drivers/gpu/drm/i915/gt/intel_rps.c:10:
drivers/gpu/drm/i915/gt/intel_rps.c: In function ‘intel_rps_enable’:
drivers/gpu/drm/i915/gt/intel_rps.c:1562:14: error: ‘struct <anonymous>’ has no member named ‘threshold_up’
 1562 |    rps->power.threshold_up,
      |              ^
./include/linux/kernel.h:337:40: note: in definition of macro ‘__trace_printk_check_format’
  337 |   ____trace_printk_check_format(fmt, ##args);  \
      |                                        ^~~~
./include/linux/kernel.h:374:3: note: in expansion of macro ‘do_trace_printk’
  374 |   do_trace_printk(fmt, ##__VA_ARGS__); \
      |   ^~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_gem.h:119:24: note: in expansion of macro ‘trace_printk’
  119 | #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
      |                        ^~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt.h:18:2: note: in expansion of macro ‘GEM_TRACE’
   18 |  GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),  \
      |  ^~~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1557:2: note: in expansion of macro ‘GT_TRACE’
 1557 |  GT_TRACE(rps_to_gt(rps),
      |  ^~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1563:14: error: ‘struct <anonymous>’ has no member named ‘threshold_down’
 1563 |    rps->power.threshold_down);
      |              ^
./include/linux/kernel.h:337:40: note: in definition of macro ‘__trace_printk_check_format’
  337 |   ____trace_printk_check_format(fmt, ##args);  \
      |                                        ^~~~
./include/linux/kernel.h:374:3: note: in expansion of macro ‘do_trace_printk’
  374 |   do_trace_printk(fmt, ##__VA_ARGS__); \
      |   ^~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_gem.h:119:24: note: in expansion of macro ‘trace_printk’
  119 | #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
      |                        ^~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt.h:18:2: note: in expansion of macro ‘GEM_TRACE’
   18 |  GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),  \
      |  ^~~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1557:2: note: in expansion of macro ‘GT_TRACE’
 1557 |  GT_TRACE(rps_to_gt(rps),
      |  ^~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1562:14: error: ‘struct <anonymous>’ has no member named ‘threshold_up’
 1562 |    rps->power.threshold_up,
      |              ^
./include/linux/kernel.h:388:50: note: in definition of macro ‘do_trace_printk’
  388 |   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args); \
      |                                                  ^~~~
./drivers/gpu/drm/i915/i915_gem.h:119:24: note: in expansion of macro ‘trace_printk’
  119 | #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
      |                        ^~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt.h:18:2: note: in expansion of macro ‘GEM_TRACE’
   18 |  GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),  \
      |  ^~~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1557:2: note: in expansion of macro ‘GT_TRACE’
 1557 |  GT_TRACE(rps_to_gt(rps),
      |  ^~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1563:14: error: ‘struct <anonymous>’ has no member named ‘threshold_down’
 1563 |    rps->power.threshold_down);
      |              ^
./include/linux/kernel.h:388:50: note: in definition of macro ‘do_trace_printk’
  388 |   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args); \
      |                                                  ^~~~
./drivers/gpu/drm/i915/i915_gem.h:119:24: note: in expansion of macro ‘trace_printk’
  119 | #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
      |                        ^~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt.h:18:2: note: in expansion of macro ‘GEM_TRACE’
   18 |  GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),  \
      |  ^~~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1557:2: note: in expansion of macro ‘GT_TRACE’
 1557 |  GT_TRACE(rps_to_gt(rps),
      |  ^~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1562:14: error: ‘struct <anonymous>’ has no member named ‘threshold_up’
 1562 |    rps->power.threshold_up,
      |              ^
./include/linux/kernel.h:390:36: note: in definition of macro ‘do_trace_printk’
  390 |   __trace_printk(_THIS_IP_, fmt, ##args);   \
      |                                    ^~~~
./drivers/gpu/drm/i915/i915_gem.h:119:24: note: in expansion of macro ‘trace_printk’
  119 | #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
      |                        ^~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt.h:18:2: note: in expansion of macro ‘GEM_TRACE’
   18 |  GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),  \
      |  ^~~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1557:2: note: in expansion of macro ‘GT_TRACE’
 1557 |  GT_TRACE(rps_to_gt(rps),
      |  ^~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1563:14: error: ‘struct <anonymous>’ has no member named ‘threshold_down’
 1563 |    rps->power.threshold_down);
      |              ^
./include/linux/kernel.h:390:36: note: in definition of macro ‘do_trace_printk’
  390 |   __trace_printk(_THIS_IP_, fmt, ##args);   \
      |                                    ^~~~
./drivers/gpu/drm/i915/i915_gem.h:119:24: note: in expansion of macro ‘trace_printk’
  119 | #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
      |                        ^~~~~~~~~~~~
drivers/gpu/drm/i915/gt/intel_gt.h:18:2: note: in expansion of macro ‘GEM_TRACE’
   18 |  GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),  \
      |  ^~~~~~~~~
drivers/gpu/drm/i915/gt/intel_rps.c:1557:2: note: in expansion of macro ‘GT_TRACE’
 1557 |  GT_TRACE(rps_to_gt(rps),
      |  ^~~~~~~~
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gt/intel_rps.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2025: .] Error 2
Build failed, no error log produced



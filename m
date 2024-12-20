Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54909F8BDB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 06:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1F910E09E;
	Fri, 20 Dec 2024 05:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADC110E09E;
 Fri, 20 Dec 2024 05:22:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Revert_=22drm/i915/hdcp?=
 =?utf-8?q?=3A_Don=27t_enable_HDCP1=2E4_directly_from_check=5Flink=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2024 05:22:23 -0000
Message-ID: <173467214356.669528.7955072928099578035@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241220050153.3053540-1-suraj.kandpal@intel.com>
In-Reply-To: <20241220050153.3053540-1-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly from check_link"
URL   : https://patchwork.freedesktop.org/series/142871/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_hdcp.o
In file included from ./include/linux/device.h:15,
                 from ./include/linux/acpi.h:14,
                 from ./include/linux/i2c.h:13,
                 from drivers/gpu/drm/i915/display/intel_hdcp.c:12:
drivers/gpu/drm/i915/display/intel_hdcp.c: In function ‘intel_hdcp_check_link’:
drivers/gpu/drm/i915/display/intel_hdcp.c:1171:26: error: ‘i915’ undeclared (first use in this function); did you mean ‘I915’?
 1171 |                 drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
      |                          ^~~~
./include/linux/dev_printk.h:110:25: note: in definition of macro ‘dev_printk_index_wrap’
  110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
      |                         ^~~
./include/drm/drm_print.h:588:9: note: in expansion of macro ‘dev_err’
  588 |         dev_##level##type((drm) ? (drm)->dev : NULL, "[drm] " fmt, ##__VA_ARGS__)
      |         ^~~~
./include/drm/drm_print.h:601:9: note: in expansion of macro ‘__drm_printk’
  601 |         __drm_printk((drm), err,, "*ERROR* " fmt, ##__VA_ARGS__)
      |         ^~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_hdcp.c:1171:17: note: in expansion of macro ‘drm_err’
 1171 |                 drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
      |                 ^~~~~~~
drivers/gpu/drm/i915/display/intel_hdcp.c:1171:26: note: each undeclared identifier is reported only once for each function it appears in
 1171 |                 drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
      |                          ^~~~
./include/linux/dev_printk.h:110:25: note: in definition of macro ‘dev_printk_index_wrap’
  110 |                 _p_func(dev, fmt, ##__VA_ARGS__);                       \
      |                         ^~~
./include/drm/drm_print.h:588:9: note: in expansion of macro ‘dev_err’
  588 |         dev_##level##type((drm) ? (drm)->dev : NULL, "[drm] " fmt, ##__VA_ARGS__)
      |         ^~~~
./include/drm/drm_print.h:601:9: note: in expansion of macro ‘__drm_printk’
  601 |         __drm_printk((drm), err,, "*ERROR* " fmt, ##__VA_ARGS__)
      |         ^~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_hdcp.c:1171:17: note: in expansion of macro ‘drm_err’
 1171 |                 drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
      |                 ^~~~~~~
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/i915/display/intel_hdcp.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced



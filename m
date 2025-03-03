Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E137AA4BF5B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B5A10E28C;
	Mon,  3 Mar 2025 11:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC9010E289;
 Mon,  3 Mar 2025 11:52:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/client=3A_Build_the_t?=
 =?utf-8?q?ests_with_CONFIG=5FDRM=5FKUNIT=5FTEST=3Dm?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 03 Mar 2025 11:52:32 -0000
Message-ID: <174100275212.118223.16006543455148366118@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250303094808.11860-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250303094808.11860-1-ville.syrjala@linux.intel.com>
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

Series: drm/client: Build the tests with CONFIG_DRM_KUNIT_TEST=m
URL   : https://patchwork.freedesktop.org/series/145707/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CHK     kernel/kheaders_data.tar.xz
  HDRTEST drivers/gpu/drm/xe/generated/xe_wa_oob.h
  UPD     include/generated/utsversion.h
  CC      init/version-timestamp.o
  KSYMS   .tmp_vmlinux0.kallsyms.S
  AS      .tmp_vmlinux0.kallsyms.o
  LD      .tmp_vmlinux1
ld: drivers/gpu/drm/drm_client_modeset.o: in function `drm_test_pick_cmdline_named':
/home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:142:(.text+0x3c9): undefined reference to `drm_helper_probe_single_connector_modes'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:136:(.text+0x4b1): undefined reference to `kunit_unary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:136:(.text+0x4d3): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:136:(.text+0x4db): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:144:(.text+0x4e8): undefined reference to `kunit_binary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:144:(.text+0x50e): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:144:(.text+0x516): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:147:(.text+0x523): undefined reference to `kunit_binary_ptr_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:147:(.text+0x54d): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:147:(.text+0x555): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:150:(.text+0x562): undefined reference to `kunit_binary_ptr_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:150:(.text+0x58c): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:150:(.text+0x594): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:152:(.text+0x5aa): undefined reference to `kunit_unary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:152:(.text+0x5c6): undefined reference to `__kunit_do_failed_assertion'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `drm_test_pick_cmdline_res_1920_1080_60':
/home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:104:(.text+0x6b0): undefined reference to `drm_helper_probe_single_connector_modes'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:96:(.text+0x76a): undefined reference to `kunit_binary_ptr_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:96:(.text+0x794): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:96:(.text+0x79c): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:98:(.text+0x7a9): undefined reference to `kunit_unary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:98:(.text+0x7cb): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:98:(.text+0x7d3): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:106:(.text+0x7e0): undefined reference to `kunit_binary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:106:(.text+0x806): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:106:(.text+0x80e): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:109:(.text+0x81b): undefined reference to `kunit_binary_ptr_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:109:(.text+0x845): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:109:(.text+0x84d): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:111:(.text+0x863): undefined reference to `kunit_unary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:111:(.text+0x87f): undefined reference to `__kunit_do_failed_assertion'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `kunit_kmalloc':
/home/kbuild/kernel/./include/kunit/test.h:449:(.text+0xa24): undefined reference to `kunit_kmalloc_array'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `drm_client_modeset_test_init':
/home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:63:(.text+0xa50): undefined reference to `drm_kunit_helper_alloc_device'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `__drm_kunit_helper_alloc_drm_device':
/home/kbuild/kernel/./include/drm/drm_kunit_helpers.h:67:(.text+0xad3): undefined reference to `__drm_kunit_helper_alloc_drm_device_with_driver'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `drm_client_modeset_test_init':
/home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:64:(.text+0xb91): undefined reference to `kunit_ptr_not_err_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:64:(.text+0xbaf): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:64:(.text+0xbb7): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:69:(.text+0xbc4): undefined reference to `kunit_ptr_not_err_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:69:(.text+0xbe2): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:69:(.text+0xbea): undefined reference to `__kunit_abort'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:59:(.text+0xbf7): undefined reference to `kunit_binary_ptr_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:59:(.text+0xc21): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:59:(.text+0xc29): undefined reference to `__kunit_abort'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `__drm_kunit_helper_alloc_drm_device':
/home/kbuild/kernel/./include/drm/drm_kunit_helpers.h:63:(.text+0xc36): undefined reference to `kunit_binary_ptr_assert_format'
ld: /home/kbuild/kernel/./include/drm/drm_kunit_helpers.h:63:(.text+0xc60): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/./include/drm/drm_kunit_helpers.h:63:(.text+0xc68): undefined reference to `__kunit_abort'
ld: drivers/gpu/drm/drm_client_modeset.o: in function `drm_client_modeset_test_init':
/home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:75:(.text+0xc77): undefined reference to `kunit_binary_assert_format'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:75:(.text+0xc9d): undefined reference to `__kunit_do_failed_assertion'
ld: /home/kbuild/kernel/drivers/gpu/drm/tests/drm_client_modeset_test.c:75:(.text+0xca5): undefined reference to `__kunit_abort'
make[2]: *** [scripts/Makefile.vmlinux:77: vmlinux] Error 1
make[1]: *** [/home/kbuild/kernel/Makefile:1226: vmlinux] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced



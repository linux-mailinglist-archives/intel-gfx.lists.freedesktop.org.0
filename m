Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2502A7B0134
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AB710E4C4;
	Wed, 27 Sep 2023 10:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 96B8510E4B5;
 Wed, 27 Sep 2023 10:03:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 935E7A7DFB;
 Wed, 27 Sep 2023 10:03:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 27 Sep 2023 10:03:17 -0000
Message-ID: <169580899759.20756.14740175211794391015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230927091152.1050600-1-animesh.manna@intel.com>
In-Reply-To: <20230927091152.1050600-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dsb=3A_DSB_code_refactoring_=28rev2=29?=
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

Series: drm/i915/dsb: DSB code refactoring (rev2)
URL   : https://patchwork.freedesktop.org/series/124141/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  LD [M]  drivers/gpu/drm/i915/i915.o
  LD [M]  drivers/gpu/drm/i915/kvmgt.o
  HDRTEST drivers/gpu/drm/i915/display/intel_dsb_buffer.h
In file included from <command-line>:
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:10:2: error: unknown type name ‘u32’
   10 |  u32 *cmd_buf;
      |  ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:14:1: error: unknown type name ‘u32’
   14 | u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf);
      | ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:15:63: error: unknown type name ‘u32’
   15 | void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
      |                                                               ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:15:72: error: unknown type name ‘u32’
   15 | void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val);
      |                                                                        ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:16:1: error: unknown type name ‘u32’
   16 | u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
      | ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:16:61: error: unknown type name ‘u32’
   16 | u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32 idx);
      |                                                             ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:17:64: error: unknown type name ‘u32’
   17 | void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, u32 sz);
      |                                                                ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:17:73: error: unknown type name ‘u32’
   17 | void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, u32 sz);
      |                                                                         ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:17:82: error: unknown type name ‘u32’
   17 | void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val, u32 sz);
      |                                                                                  ^~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:18:1: error: unknown type name ‘bool’
   18 | bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, u32 size);
      | ^~~~
./drivers/gpu/drm/i915/display/intel_dsb_buffer.h:18:89: error: unknown type name ‘u32’
   18 | bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, u32 size);
      |                                                                                         ^~~
make[6]: *** [drivers/gpu/drm/i915/Makefile:410: drivers/gpu/drm/i915/display/intel_dsb_buffer.hdrtest] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1913: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced



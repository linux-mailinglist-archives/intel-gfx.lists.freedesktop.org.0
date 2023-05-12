Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B76A170000A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 07:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A0B10E624;
	Fri, 12 May 2023 05:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D88B10E620;
 Fri, 12 May 2023 05:53:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65DBAA0093;
 Fri, 12 May 2023 05:53:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejas.upadhyay@intel.com>
Date: Fri, 12 May 2023 05:53:24 -0000
Message-ID: <168387080438.26100.7366457104835363673@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512052744.778113-1-tejas.upadhyay@intel.com>
In-Reply-To: <20230512052744.778113-1-tejas.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Add_workaround_14016712196?=
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

Series: drm/i915/gt: Add workaround 14016712196
URL   : https://patchwork.freedesktop.org/series/117661/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/gen8_engine_cs.o
drivers/gpu/drm/i915/gt/gen8_engine_cs.c:180:5: error: no previous prototype for ‘mtl_dummy_pipe_control’ [-Werror=missing-prototypes]
  180 | int mtl_dummy_pipe_control(struct i915_request *rq, u32 *cs)
      |     ^~~~~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gt/gen8_engine_cs.o] Error 1
make[4]: *** [scripts/Makefile.build:494: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:494: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:494: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:494: drivers] Error 2
make: *** [Makefile:2026: .] Error 2
Build failed, no error log produced



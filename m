Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 654AB432334
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 17:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0C56E0D8;
	Mon, 18 Oct 2021 15:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B4196E0D2;
 Mon, 18 Oct 2021 15:45:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14EC7A47E2;
 Mon, 18 Oct 2021 15:45:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "luo penghao" <cgel.zte@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 15:45:10 -0000
Message-ID: <163457191008.27086.4098947113477154875@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018084449.852251-1-luo.penghao@zte.com.cn>
In-Reply-To: <20211018084449.852251-1-luo.penghao@zte.com.cn>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_Remove_unused_variable_in_the_for_loop=2E?=
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

Series: drm/i915/display: Remove unused variable in the for loop.
URL   : https://patchwork.freedesktop.org/series/95963/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/display/intel_fb.o
drivers/gpu/drm/i915/display/intel_fb.c: In function ‘intel_fill_fb_info’:
drivers/gpu/drm/i915/display/intel_fb.c:1018:23: error: statement with no effect [-Werror=unused-value]
   fb->base.format->cpp[i];
   ~~~~~~~~~~~~~~~~~~~~^~~
cc1: all warnings being treated as errors
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/display/intel_fb.o' failed
make[4]: *** [drivers/gpu/drm/i915/display/intel_fb.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2



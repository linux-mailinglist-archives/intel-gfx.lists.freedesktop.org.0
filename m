Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18C596C259
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 17:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 519BD10E7F2;
	Wed,  4 Sep 2024 15:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D6D10E7F2;
 Wed,  4 Sep 2024 15:28:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_i915_=7C_Bug_in_virtual_P?=
 =?utf-8?q?CH_detection?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Sep 2024 15:28:53 -0000
Message-ID: <172546373384.933962.17273782643155139037@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
In-Reply-To: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
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

Series: i915 | Bug in virtual PCH detection
URL   : https://patchwork.freedesktop.org/series/138213/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/soc/intel_pch.o
drivers/gpu/drm/i915/soc/intel_pch.c: In function ‘intel_virt_detect_pch’:
drivers/gpu/drm/i915/soc/intel_pch.c:171:22: error: ‘const struct i915_params’ has no member named ‘virt_pch_id’
  171 |  if (dev_priv->params.virt_pch_id)
      |                      ^
drivers/gpu/drm/i915/soc/intel_pch.c:172:24: error: ‘const struct i915_params’ has no member named ‘virt_pch_id’
  172 |   id = dev_priv->params.virt_pch_id;
      |                        ^
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/soc/intel_pch.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1925: .] Error 2
make: *** [Makefile:224: __sub-make] Error 2
Build failed, no error log produced



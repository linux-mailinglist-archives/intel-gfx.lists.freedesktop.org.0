Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E27E1653559
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 18:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56B910E46A;
	Wed, 21 Dec 2022 17:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90EB510E46A;
 Wed, 21 Dec 2022 17:35:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EB42A00CC;
 Wed, 21 Dec 2022 17:35:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 21 Dec 2022 17:35:39 -0000
Message-ID: <167164413941.32314.7805005337872948286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221220024147.4118685-1-John.C.Harrison@Intel.com>
In-Reply-To: <20221220024147.4118685-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBG?=
 =?utf-8?q?ixes_for_various_UC_related_issues?=
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

Series: Fixes for various UC related issues
URL   : https://patchwork.freedesktop.org/series/112080/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.o
drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:678:5: error: no previous prototype for ‘try_firmware_load’ [-Werror=missing-prototypes]
  678 | int try_firmware_load(struct intel_uc_fw *uc_fw, const struct firmware **fw)
      |     ^~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:250: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.o] Error 1
make[4]: *** [scripts/Makefile.build:500: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:500: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:500: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:500: drivers] Error 2
make: *** [Makefile:1992: .] Error 2



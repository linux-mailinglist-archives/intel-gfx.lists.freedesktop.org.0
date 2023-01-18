Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C969E671CC5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 13:57:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38BEA10E73C;
	Wed, 18 Jan 2023 12:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 552D510E733;
 Wed, 18 Jan 2023 12:57:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C1BEAADE1;
 Wed, 18 Jan 2023 12:57:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 18 Jan 2023 12:57:41 -0000
Message-ID: <167404666127.3605.17132896746069092381@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <b1605ab2-7f60-1e2d-de21-a6eb94afdbc7@amd.com>
In-Reply-To: <b1605ab2-7f60-1e2d-de21-a6eb94afdbc7@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBP?=
 =?utf-8?q?ngoing_failure_for_=22dim_rebuild-tip=22?=
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

Series: Ongoing failure for "dim rebuild-tip"
URL   : https://patchwork.freedesktop.org/series/113007/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.o
drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c: In function ‘intel_uc_fw_fetch’:
drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:706:8: error: implicit declaration of function ‘try_firmware_load’ [-Werror=implicit-function-declaration]
  706 |  err = try_firmware_load(uc_fw, &fw);
      |        ^~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors
make[5]: *** [scripts/Makefile.build:252: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.o] Error 1
make[4]: *** [scripts/Makefile.build:504: drivers/gpu/drm/i915] Error 2
make[3]: *** [scripts/Makefile.build:504: drivers/gpu/drm] Error 2
make[2]: *** [scripts/Makefile.build:504: drivers/gpu] Error 2
make[1]: *** [scripts/Makefile.build:504: drivers] Error 2
make: *** [Makefile:2008: .] Error 2



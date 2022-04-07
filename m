Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631604F7EE7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9129710EA39;
	Thu,  7 Apr 2022 12:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6EAD10EA39;
 Thu,  7 Apr 2022 12:24:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2702AADD6;
 Thu,  7 Apr 2022 12:24:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 07 Apr 2022 12:24:30 -0000
Message-ID: <164933427092.14672.4816692844290844231@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649322799.git.jani.nikula@intel.com>
In-Reply-To: <cover.1649322799.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/edid=3A_low_level_EDID_block_read_refactoring_etc=2E?=
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

Series: drm/edid: low level EDID block read refactoring etc.
URL   : https://patchwork.freedesktop.org/series/102329/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC      drivers/gpu/drm/drm_edid.o
drivers/gpu/drm/drm_edid.c: In function ‘drm_do_get_edid’:
drivers/gpu/drm/drm_edid.c:2183:42: error: ‘j’ undeclared (first use in this function)
   edid_block_status_print(status, block, j);
                                          ^
drivers/gpu/drm/drm_edid.c:2183:42: note: each undeclared identifier is reported only once for each function it appears in
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/drm_edid.o' failed
make[3]: *** [drivers/gpu/drm/drm_edid.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1834: recipe for target 'drivers' failed
make: *** [drivers] Error 2



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B54BAD7D47
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 23:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A708910E197;
	Thu, 12 Jun 2025 21:17:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5316310E194;
 Thu, 12 Jun 2025 21:17:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Add_WildCat_Lake_support_?=
 =?utf-8?q?=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dnyaneshwar Bhadane" <dnyaneshwar.bhadane@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jun 2025 21:17:40 -0000
Message-ID: <174976306033.74151.10225895382478713925@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20250612203448.2948795-1-dnyaneshwar.bhadane@intel.com>
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

Series: Add WildCat Lake support (rev2)
URL   : https://patchwork.freedesktop.org/series/150101/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/xe/xe_wa.o
In file included from drivers/gpu/drm/xe/xe_wa.c:873:
drivers/gpu/drm/xe/generated/xe_wa_oob.c:104:34: error: unterminated argument list invoking macro "XE_RTP_RULES"
  104 |         GRAPHICS_VERSION(3003) },
      |                                  ^
drivers/gpu/drm/xe/generated/xe_wa_oob.c:101:3: error: ‘XE_RTP_RULES’ undeclared here (not in a function)
  101 |   XE_RTP_RULES(GRAPHICS_VERSION_RANGE(1200, 3001), OR,
      |   ^~~~~~~~~~~~
drivers/gpu/drm/xe/xe_wa.c:874:9: error: expected ‘}’ before ‘{’ token
  874 |         {}
      |         ^
drivers/gpu/drm/xe/generated/xe_wa_oob.c:100:1: note: to match this ‘{’
  100 | { XE_RTP_NAME("16026508708"),
      | ^
drivers/gpu/drm/xe/xe_wa.c:875:2: error: expected ‘}’ before ‘;’ token
  875 | };
      |  ^
drivers/gpu/drm/xe/xe_wa.c:872:61: note: to match this ‘{’
  872 | static __maybe_unused const struct xe_rtp_entry oob_was[] = {
      |                                                             ^
drivers/gpu/drm/xe/xe_wa.c:665:37: error: ‘lrc_was’ defined but not used [-Werror=unused-const-variable=]
  665 | static const struct xe_rtp_entry_sr lrc_was[] = {
      |                                     ^~~~~~~
drivers/gpu/drm/xe/xe_wa.c:308:37: error: ‘engine_was’ defined but not used [-Werror=unused-const-variable=]
  308 | static const struct xe_rtp_entry_sr engine_was[] = {
      |                                     ^~~~~~~~~~
drivers/gpu/drm/xe/xe_wa.c:101:37: error: ‘gt_was’ defined but not used [-Werror=unused-const-variable=]
  101 | static const struct xe_rtp_entry_sr gt_was[] = {
      |                                     ^~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/xe/xe_wa.o] Error 1
make[5]: *** [scripts/Makefile.build:554: drivers/gpu/drm/xe] Error 2
make[4]: *** [scripts/Makefile.build:554: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:554: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:554: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2006: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced



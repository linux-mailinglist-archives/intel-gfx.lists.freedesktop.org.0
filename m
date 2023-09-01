Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744A378FF91
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 16:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F8D10E805;
	Fri,  1 Sep 2023 14:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4705010E805;
 Fri,  1 Sep 2023 14:58:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34396A00E8;
 Fri,  1 Sep 2023 14:58:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Fri, 01 Sep 2023 14:58:03 -0000
Message-ID: <169358028318.9815.15851806411367028210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230901095100.3771188-1-william.tseng@intel.com>
In-Reply-To: <20230901095100.3771188-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/dsi=3A_let_HW_maintain_HS-TRAIL_and_CLK=5FPOST?=
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

Series: drm/i915/dsi: let HW maintain HS-TRAIL and CLK_POST
URL   : https://patchwork.freedesktop.org/series/123157/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/icl_dsi.o
drivers/gpu/drm/i915/display/icl_dsi.c: In function ‘icl_dphy_param_init’:
drivers/gpu/drm/i915/display/icl_dsi.c:1829:2: error: ‘tclk_trail_ns’ undeclared (first use in this function)
 1829 |  tclk_trail_ns = max(mipi_config->tclk_trail, mipi_config->ths_trail);
      |  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/display/icl_dsi.c:1829:2: note: each undeclared identifier is reported only once for each function it appears in
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/i915/display/icl_dsi.o] Error 1
make[5]: *** [scripts/Makefile.build:480: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:480: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:480: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:480: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2032: .] Error 2
make: *** [Makefile:234: __sub-make] Error 2
Build failed, no error log produced



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0106285E627
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:35:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09F910E7A0;
	Wed, 21 Feb 2024 18:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 774BB10E79F;
 Wed, 21 Feb 2024 18:35:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5Bv?=
 =?utf-8?q?7=2C1/3=5D_drm/buddy=3A_Implement_tracking_clear_page_feature?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Paneer Selvam, Arunpravin" <arunpravin.paneerselvam@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 18:35:04 -0000
Message-ID: <170854050447.196549.4206613003900440697@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240221121801.3252-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20240221121801.3252-1-Arunpravin.PaneerSelvam@amd.com>
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

Series: series starting with [v7,1/3] drm/buddy: Implement tracking clear page feature
URL   : https://patchwork.freedesktop.org/series/130200/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  AR      drivers/gpu/drm/display/built-in.a
  CC [M]  drivers/gpu/drm/display/drm_display_helper_mod.o
  CC [M]  drivers/gpu/drm/display/drm_dp_dual_mode_helper.o
  CC [M]  drivers/gpu/drm/display/drm_dp_helper.o
  CC [M]  drivers/gpu/drm/display/drm_dp_mst_topology.o
  CC [M]  drivers/gpu/drm/display/drm_dsc_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdcp_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdmi_helper.o
  CC [M]  drivers/gpu/drm/display/drm_scdc_helper.o
  CC [M]  drivers/gpu/drm/display/drm_dp_aux_dev.o
  LD [M]  drivers/gpu/drm/display/drm_display_helper.o
  AR      drivers/gpu/drm/renesas/rcar-du/built-in.a
  AR      drivers/gpu/drm/renesas/rz-du/built-in.a
  AR      drivers/gpu/drm/renesas/built-in.a
  AR      drivers/gpu/drm/omapdrm/built-in.a
  AR      drivers/gpu/drm/tilcdc/built-in.a
  AR      drivers/gpu/drm/imx/built-in.a
  AR      drivers/gpu/drm/i2c/built-in.a
  AR      drivers/gpu/drm/panel/built-in.a
  AR      drivers/gpu/drm/bridge/analogix/built-in.a
  AR      drivers/gpu/drm/bridge/cadence/built-in.a
  AR      drivers/gpu/drm/bridge/imx/built-in.a
  AR      drivers/gpu/drm/bridge/synopsys/built-in.a
  AR      drivers/gpu/drm/bridge/built-in.a
  AR      drivers/gpu/drm/hisilicon/built-in.a
  AR      drivers/gpu/drm/mxsfb/built-in.a
  AR      drivers/gpu/drm/tiny/built-in.a
  AR      drivers/gpu/drm/xlnx/built-in.a
  AR      drivers/gpu/drm/gud/built-in.a
  AR      drivers/gpu/drm/solomon/built-in.a
  CC [M]  drivers/gpu/drm/tests/drm_buddy_test.o
drivers/gpu/drm/tests/drm_buddy_test.c: In function ‘drm_test_buddy_alloc_contiguous’:
drivers/gpu/drm/tests/drm_buddy_test.c:68:2: error: too few arguments to function ‘drm_buddy_free_list’
   68 |  drm_buddy_free_list(&mm, &middle);
      |  ^~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/tests/drm_buddy_test.c:13:
./include/drm/drm_buddy.h:166:6: note: declared here
  166 | void drm_buddy_free_list(struct drm_buddy *mm,
      |      ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_buddy_test.c:78:2: error: too few arguments to function ‘drm_buddy_free_list’
   78 |  drm_buddy_free_list(&mm, &right);
      |  ^~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/tests/drm_buddy_test.c:13:
./include/drm/drm_buddy.h:166:6: note: declared here
  166 | void drm_buddy_free_list(struct drm_buddy *mm,
      |      ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_buddy_test.c:93:2: error: too few arguments to function ‘drm_buddy_free_list’
   93 |  drm_buddy_free_list(&mm, &left);
      |  ^~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/tests/drm_buddy_test.c:13:
./include/drm/drm_buddy.h:166:6: note: declared here
  166 | void drm_buddy_free_list(struct drm_buddy *mm,
      |      ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_buddy_test.c:105:2: error: too few arguments to function ‘drm_buddy_free_list’
  105 |  drm_buddy_free_list(&mm, &allocated);
      |  ^~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/tests/drm_buddy_test.c:13:
./include/drm/drm_buddy.h:166:6: note: declared here
  166 | void drm_buddy_free_list(struct drm_buddy *mm,
      |      ^~~~~~~~~~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:243: drivers/gpu/drm/tests/drm_buddy_test.o] Error 1
make[5]: *** [scripts/Makefile.build:481: drivers/gpu/drm/tests] Error 2
make[4]: *** [scripts/Makefile.build:481: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:481: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:481: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1921: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced



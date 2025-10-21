Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE56BF7D40
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 19:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A1610E62F;
	Tue, 21 Oct 2025 17:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 97596180aaec (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417DD10E62C;
 Tue, 21 Oct 2025 17:09:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_replace_drm=5Fprin?=
 =?utf-8?q?t=2Eh_includes_from_headers_with_a_forward_declaration?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Oct 2025 17:09:24 -0000
Message-ID: <176106656426.37900.14340711292066815791@97596180aaec>
X-Patchwork-Hint: ignore
References: <cover.1761063757.git.jani.nikula@intel.com>
In-Reply-To: <cover.1761063757.git.jani.nikula@intel.com>
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

Series: drm: replace drm_print.h includes from headers with a forward declaration
URL   : https://patchwork.freedesktop.org/series/156269/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/vboxvideo/vbox_irq.o
drivers/gpu/drm/vboxvideo/vbox_irq.c: In function ‘vbox_update_mode_hints’:
drivers/gpu/drm/vboxvideo/vbox_irq.c:122:17: error: implicit declaration of function ‘DRM_ERROR’; did you mean ‘SO_ERROR’? [-Werror=implicit-function-declaration]
  122 |                 DRM_ERROR("vboxvideo: hgsmi_get_mode_hints failed: %d\n", ret);
      |                 ^~~~~~~~~
      |                 SO_ERROR
cc1: some warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/vboxvideo/vbox_irq.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/vboxvideo] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2010: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced



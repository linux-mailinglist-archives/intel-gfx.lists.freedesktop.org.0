Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCCECCC70B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 16:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4561710EA12;
	Thu, 18 Dec 2025 15:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 790F510EA12;
 Thu, 18 Dec 2025 15:19:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/atomic=3A_convert_drm?=
 =?utf-8?q?=5Fatomic=5Fget=5F=7Bold=2C_new=7D=5Fcolorop=5Fstate=28=29_into_p?=
 =?utf-8?q?roper_functions?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Dec 2025 15:19:23 -0000
Message-ID: <176607116349.101158.5958076698880110115@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251218141527.405328-1-jani.nikula@intel.com>
In-Reply-To: <20251218141527.405328-1-jani.nikula@intel.com>
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

Series: drm/atomic: convert drm_atomic_get_{old, new}_colorop_state() into proper functions
URL   : https://patchwork.freedesktop.org/series/159220/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/vkms/vkms_drv.o
drivers/gpu/drm/vkms/vkms_drv.c: In function ‘vkms_destroy’:
drivers/gpu/drm/vkms/vkms_drv.c:261:9: error: implicit declaration of function ‘drm_colorop_pipeline_destroy’ [-Werror=implicit-function-declaration]
  261 |         drm_colorop_pipeline_destroy(&config->dev->drm);
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc1: some warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/vkms/vkms_drv.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/vkms] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2054: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced



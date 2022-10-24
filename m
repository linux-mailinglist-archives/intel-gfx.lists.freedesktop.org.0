Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B6D60A34A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 13:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A44210E3DD;
	Mon, 24 Oct 2022 11:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D23410E3DD;
 Mon, 24 Oct 2022 11:53:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 902F4A00E8;
 Mon, 24 Oct 2022 11:53:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Mon, 24 Oct 2022 11:53:23 -0000
Message-ID: <166661240358.3424.3188461299827002921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221024111953.24307-1-tzimmermann@suse.de>
In-Reply-To: <20221024111953.24307-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/fb-helper=3A_Untangle_fbdev_emulation_and_helpers_=28rev2=29?=
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

Series: drm/fb-helper: Untangle fbdev emulation and helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/109942/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.o
drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c: In function ‘amdgpu_pci_probe’:
drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:2135:4: error: implicit declaration of function ‘drm_fbdev_generic_setup’; did you mean ‘drm_mode_get_tile_group’? [-Werror=implicit-function-declaration]
    drm_fbdev_generic_setup(adev_to_drm(adev), 8);
    ^~~~~~~~~~~~~~~~~~~~~~~
    drm_mode_get_tile_group
cc1: some warnings being treated as errors
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/amd/amdgpu/amdgpu_drv.o' failed
make[5]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_drv.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/amd/amdgpu' failed
make[4]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2



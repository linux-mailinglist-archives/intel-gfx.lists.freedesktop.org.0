Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB974E4D26
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 08:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A327510E250;
	Wed, 23 Mar 2022 07:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F37C10E1C6;
 Wed, 23 Mar 2022 07:16:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3BF40AAA91;
 Wed, 23 Mar 2022 07:16:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Date: Wed, 23 Mar 2022 07:16:25 -0000
Message-ID: <164801978524.17991.11165928807327727160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220323062552.228429-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220323062552.228429-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/amdgpu=3A_add_drm_buddy_support_to_amdgpu_=28rev2=29?=
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

Series: drm/amdgpu: add drm buddy support to amdgpu (rev2)
URL   : https://patchwork.freedesktop.org/series/100908/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/amd/amdgpu/amdgpu_drv.o
In file included from drivers/gpu/drm/amd/amdgpu/amdgpu.h:73,
                 from drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:43:
drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h:29:10: fatal error: amdgpu_vram_mgr.h: No such file or directory
 #include "amdgpu_vram_mgr.h"
          ^~~~~~~~~~~~~~~~~~~
compilation terminated.
scripts/Makefile.build:288: recipe for target 'drivers/gpu/drm/amd/amdgpu/amdgpu_drv.o' failed
make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_drv.o] Error 1
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm/amd/amdgpu' failed
make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:550: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1831: recipe for target 'drivers' failed
make: *** [drivers] Error 2



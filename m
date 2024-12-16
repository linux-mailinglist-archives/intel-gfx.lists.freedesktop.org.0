Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 624999F3789
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 18:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6D710E72D;
	Mon, 16 Dec 2024 17:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1658810E72A;
 Mon, 16 Dec 2024 17:27:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/amdgpu=3A_Use_device_?=
 =?utf-8?q?wedged_event_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 17:27:57 -0000
Message-ID: <173437007708.3359719.14781533569396362629@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241216150250.38242-1-andrealmeid@igalia.com>
In-Reply-To: <20241216150250.38242-1-andrealmeid@igalia.com>
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

Series: drm/amdgpu: Use device wedged event (rev2)
URL   : https://patchwork.freedesktop.org/series/142564/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/amd/amdgpu/amdgpu_device.o
drivers/gpu/drm/amd/amdgpu/amdgpu_device.c: In function ‘amdgpu_device_gpu_recover’:
drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:6062:17: error: implicit declaration of function ‘drm_dev_wedged_event’ [-Werror=implicit-function-declaration]
 6062 |                 drm_dev_wedged_event(adev_to_drm(adev), DRM_WEDGE_RECOVERY_NONE);
      |                 ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:6062:57: error: ‘DRM_WEDGE_RECOVERY_NONE’ undeclared (first use in this function); did you mean ‘DRM_MODE_ENCODER_NONE’?
 6062 |                 drm_dev_wedged_event(adev_to_drm(adev), DRM_WEDGE_RECOVERY_NONE);
      |                                                         ^~~~~~~~~~~~~~~~~~~~~~~
      |                                                         DRM_MODE_ENCODER_NONE
drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:6062:57: note: each undeclared identifier is reported only once for each function it appears in
cc1: some warnings being treated as errors
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/amd/amdgpu/amdgpu_device.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/amd/amdgpu] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced



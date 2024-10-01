Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37ED98B2A8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 05:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5157010E5C3;
	Tue,  1 Oct 2024 03:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DCB10E162;
 Tue,  1 Oct 2024 03:14:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Remove_DRM_ap?=
 =?utf-8?q?erture_helpers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 03:14:20 -0000
Message-ID: <172775246001.1140106.10432307122318463289@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930130921.689876-1-tzimmermann@suse.de>
In-Reply-To: <20240930130921.689876-1-tzimmermann@suse.de>
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

Series: drm: Remove DRM aperture helpers
URL   : https://patchwork.freedesktop.org/series/139307/
State : warning

== Summary ==

Error: dim checkpatch failed
626bcab951ea drm/amdgpu: Use video aperture helpers
af1cd7064fe6 drm/arm/hdlcd: Use video aperture helpers
9a70c2328511 drm/armada: Use video aperture helpers
ba403d18168b drm/ast: Use video aperture helpers
11a7b92f4db0 drm/hisilicon/hibmc: Use video aperture helpers
7c3019f50f0e drm/hyperv-drm: Use video aperture helpers
b543c1deabec drm/i915: Use video aperture helpers
b7ef12d4e8c2 drm/loongson: Use video aperture helpers
8fad2439063c drm/meson: Use video aperture helpers
074919b8664e drm/mgag200: Use video aperture helpers
0828ec3bdb24 drm/msm: Use video aperture helpers
bdc6638aeffa drm/nouveau: Use video aperture helpers
224a2dd31179 drm/ofdrm: Use video aperture helpers
0d57c80efa1b drm/qxl: Use video aperture helpers
99ccf9702771 drm/radeon: Use video aperture helpers
bba39a82f270 drm/rockchip: Use video aperture helpers
dce20c172069 drm/simpledrm: Use video aperture helpers
39a2e6a93f78 drm/stm: Use video aperture helpers
ec884a002d0d drm/sun4i: Use video aperture helpers
b50b50bc070a drm/tegra: Use video aperture helpers
31190b33aa52 drm/bochs: Use video aperture helpers
d9fc0c294ae5 drm/cirrus: Use video aperture helpers
-:14: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:17: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
cdebc6119f0a drm/vboxvideo: Use video aperture helpers
86c0272e09ea drm/vc4: Use video aperture helpers
b069ca390605 drm/virtgpu: Use video aperture helpers
b94cb4e30845 drm/vmwgfx: Use video aperture helpers
495e7ad8d03f drm/xe: Use video aperture helpers
345ea11832f1 drm: Remove DRM aperture helpers
-:67: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#67: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 37 lines checked



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1D462F507
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 13:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557C110E71A;
	Fri, 18 Nov 2022 12:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C31C610E731;
 Fri, 18 Nov 2022 12:37:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A07F5AADD5;
 Fri, 18 Nov 2022 12:37:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Fri, 18 Nov 2022 12:37:04 -0000
Message-ID: <166877502465.25643.5276027183267861734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221118115342.641917-1-luciano.coelho@intel.com>
In-Reply-To: <20221118115342.641917-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/2=5D_drm/i915/mtl=3A_limit_second_scal?=
 =?utf-8?q?er_vertical_scaling_in_ver_=3E=3D_14?=
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

Series: series starting with [1/2] drm/i915/mtl: limit second scaler vertical scaling in ver >= 14
URL   : https://patchwork.freedesktop.org/series/111069/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/display/intel_atomic_plane.o
drivers/gpu/drm/i915/display/intel_atomic_plane.c: In function ‘intel_atomic_plane_check_clipping’:
drivers/gpu/drm/i915/display/intel_atomic_plane.c:926:16: error: ‘DRM_PLANE_HELPER_NO_SCALING’ undeclared (first use in this function); did you mean ‘DRM_PLANE_NO_SCALING’?
   min_hscale = DRM_PLANE_HELPER_NO_SCALING;
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
                DRM_PLANE_NO_SCALING
drivers/gpu/drm/i915/display/intel_atomic_plane.c:926:16: note: each undeclared identifier is reported only once for each function it appears in
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/display/intel_atomic_plane.o' failed
make[5]: *** [drivers/gpu/drm/i915/display/intel_atomic_plane.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2



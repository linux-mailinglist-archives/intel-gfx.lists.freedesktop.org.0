Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B5E92B1C4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 10:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A0910E342;
	Tue,  9 Jul 2024 08:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AF910E342;
 Tue,  9 Jul 2024 08:05:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_RFC=3A_drm/drm=5Fplane=3A?=
 =?utf-8?q?_Expose_the_plane_capability_and_interoperability?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Jul 2024 08:05:41 -0000
Message-ID: <172051234178.85573.14496382634700275105@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240709074656.1389387-1-arun.r.murthy@intel.com>
In-Reply-To: <20240709074656.1389387-1-arun.r.murthy@intel.com>
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

Series: RFC: drm/drm_plane: Expose the plane capability and interoperability
URL   : https://patchwork.freedesktop.org/series/135883/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      drivers/gpu/drm/drm_atomic_uapi.o
drivers/gpu/drm/drm_atomic_uapi.c: In function ‘drm_atomic_plane_get_property’:
drivers/gpu/drm/drm_atomic_uapi.c:634:31: error: ‘struct drm_mode_config’ has no member named ‘prop_plane_caps’
  634 |  } else if (property == config->prop_plane_caps) {
      |                               ^~
make[5]: *** [scripts/Makefile.build:244: drivers/gpu/drm/drm_atomic_uapi.o] Error 1
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1934: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced



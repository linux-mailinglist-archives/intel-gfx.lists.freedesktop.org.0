Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59275A14998
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 07:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A13310EA5E;
	Fri, 17 Jan 2025 06:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1DD10EA5E;
 Fri, 17 Jan 2025 06:17:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Extended_Wake_Timeout_=28?=
 =?utf-8?q?rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2025 06:17:13 -0000
Message-ID: <173709463396.588872.14415426600186174881@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250117054850.1189650-1-suraj.kandpal@intel.com>
In-Reply-To: <20250117054850.1189650-1-suraj.kandpal@intel.com>
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

Series: Extended Wake Timeout (rev2)
URL   : https://patchwork.freedesktop.org/series/142517/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dp_link_training.o
drivers/gpu/drm/i915/display/intel_dp_link_training.c: In function ‘intel_dp_lttpr_wake_timeout_setup’:
drivers/gpu/drm/i915/display/intel_dp_link_training.c:149:69: error: initialized field overwritten [-Werror=override-init]
  149 |                         [DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] = 20,
      |                                                                     ^~
drivers/gpu/drm/i915/display/intel_dp_link_training.c:149:69: note: (near initialization for ‘timeout_mapping[1]’)
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:194: drivers/gpu/drm/i915/display/intel_dp_link_training.o] Error 1
make[5]: *** [scripts/Makefile.build:440: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:440: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:440: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:440: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1989: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced



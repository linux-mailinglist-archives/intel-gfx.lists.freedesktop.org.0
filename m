Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71C6B4FAE4
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB9810E6EE;
	Tue,  9 Sep 2025 12:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E86010E6EE;
 Tue,  9 Sep 2025 12:32:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/slpc=3A_Update_m?=
 =?utf-8?q?in=5Ffreq=5Fsoftlimit_when_ignore=5Feff=5Ffreq_is_enabled?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sk Anirban" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Sep 2025 12:32:05 -0000
Message-ID: <175742112511.317240.16089839484256008086@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250909100619.1623315-2-sk.anirban@intel.com>
In-Reply-To: <20250909100619.1623315-2-sk.anirban@intel.com>
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

Series: drm/i915/slpc: Update min_freq_softlimit when ignore_eff_freq is enabled
URL   : https://patchwork.freedesktop.org/series/154247/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.o
drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c: In function ‘intel_guc_slpc_set_ignore_eff_freq’:
drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:498:17: error: this ‘if’ clause does not guard... [-Werror=misleading-indentation]
  498 |                 if (val)
      |                 ^~
drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:502:25: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the ‘if’
  502 |                         if (!ret)
      |                         ^~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.o] Error 1
make[5]: *** [scripts/Makefile.build:556: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:556: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:556: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:556: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2011: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced



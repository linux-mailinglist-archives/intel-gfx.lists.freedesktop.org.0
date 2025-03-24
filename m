Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F40DA6DF24
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 16:58:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4B810E3B4;
	Mon, 24 Mar 2025 15:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6533D10E3B4;
 Mon, 24 Mar 2025 15:58:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_CCS_static_load_balance?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Mar 2025 15:58:30 -0000
Message-ID: <174283191041.74192.7088551128349103759@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250324132952.1075209-1-andi.shyti@linux.intel.com>
In-Reply-To: <20250324132952.1075209-1-andi.shyti@linux.intel.com>
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

Series: CCS static load balance
URL   : https://patchwork.freedesktop.org/series/146669/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.o
drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c: In function ‘add_uabi_ccs_engines’:
drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c:214:21: error: assignment to ‘struct intel_engine_cs *’ from ‘int’ makes pointer from integer without a cast [-Werror=int-conversion]
  214 |                 __e = intel_engine_lookup_user(i915, e->uabi_class,
      |                     ^
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:207: drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.o] Error 1
make[5]: *** [scripts/Makefile.build:465: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:465: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:465: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:465: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1994: .] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced



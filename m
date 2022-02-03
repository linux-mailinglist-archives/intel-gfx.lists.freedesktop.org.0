Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B590E4A8706
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:55:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC0D10EB9F;
	Thu,  3 Feb 2022 14:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3228810EC17;
 Thu,  3 Feb 2022 14:55:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 324A5A882E;
 Thu,  3 Feb 2022 14:55:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Thu, 03 Feb 2022 14:55:15 -0000
Message-ID: <164390011520.15865.3683887553480769988@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220203055012.14568-1-vandita.kulkarni@intel.com>
In-Reply-To: <20220203055012.14568-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBB?=
 =?utf-8?q?dd_data_flow_metering_support_for_HDMI2=2E1?=
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

Series: Add data flow metering support for HDMI2.1
URL   : https://patchwork.freedesktop.org/series/99668/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o
  MODPOST vmlinux.symvers
  MODINFO modules.builtin.modinfo
  GEN     modules.builtin
  LD      .tmp_vmlinux.kallsyms1
drivers/gpu/drm/drm_frl_dfm_helper.o: In function `drm_frl_dsc_get_ftb_avg':
/home/cidrm/kernel/drivers/gpu/drm/drm_frl_dfm_helper.c:608: undefined reference to `__udivdi3'
drivers/gpu/drm/drm_frl_dfm_helper.o: In function `drm_frl_dsc_tactive_target_ns':
/home/cidrm/kernel/drivers/gpu/drm/drm_frl_dfm_helper.c:635: undefined reference to `__udivdi3'
Makefile:1155: recipe for target 'vmlinux' failed
make: *** [vmlinux] Error 1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22167/build_32bit.log

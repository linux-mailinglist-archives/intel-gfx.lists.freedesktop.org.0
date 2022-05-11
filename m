Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6B3523B1A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 19:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFDE112164;
	Wed, 11 May 2022 17:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D1AB112162;
 Wed, 11 May 2022 17:04:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6412CA00CC;
 Wed, 11 May 2022 17:04:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Wed, 11 May 2022 17:04:24 -0000
Message-ID: <165228866440.2699.17051106077979630183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511142222.2325-1-nirmoy.das@intel.com>
In-Reply-To: <20220511142222.2325-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Enable_Tile4_tiling_mode?=
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

Series: drm/i915: Enable Tile4 tiling mode
URL   : https://patchwork.freedesktop.org/series/103881/
State : warning

== Summary ==

Error: dim checkpatch failed
aafe76362d88 drm/i915: Enable Tile4 tiling mode
-:360: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'idx' may be better as '(idx)' to avoid precedence issues
#360: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:256:
+#define BLIT_CCTL_SRC_MOCS(idx) \
+	REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, idx << 1)

-:362: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'idx' may be better as '(idx)' to avoid precedence issues
#362: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:258:
+#define BLIT_CCTL_DST_MOCS(idx) \
+	REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, idx << 1)

total: 0 errors, 0 warnings, 2 checks, 336 lines checked



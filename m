Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 387BD48F0BA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 21:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C8910E1B3;
	Fri, 14 Jan 2022 20:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA05910E1B4;
 Fri, 14 Jan 2022 20:00:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7ADBA0BCB;
 Fri, 14 Jan 2022 20:00:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 14 Jan 2022 20:00:12 -0000
Message-ID: <164219041292.15568.8587250148409336918@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220114193315.3271408-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220114193315.3271408-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/wopcm=3A_Handle_pre-programmed_WOPCM_registers?=
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

Series: drm/i915/wopcm: Handle pre-programmed WOPCM registers
URL   : https://patchwork.freedesktop.org/series/98910/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
03db6d6cfb02 drm/i915/wopcm: Handle pre-programmed WOPCM registers
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
sometimes using a smaller WOPCM size that the actual HW support (which isn't

-:36: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h:98:
+#define   GUC_IS_PRIVILEGED		(1<<29)
                            		  ^

total: 0 errors, 1 warnings, 1 checks, 134 lines checked



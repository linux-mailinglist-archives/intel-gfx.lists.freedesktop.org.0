Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601D549562D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 22:57:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B651010E6B3;
	Thu, 20 Jan 2022 21:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C6BE810E642;
 Thu, 20 Jan 2022 21:57:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4798A0169;
 Thu, 20 Jan 2022 21:57:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 20 Jan 2022 21:57:22 -0000
Message-ID: <164271584280.22529.4230935844268396470@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120212947.3440448-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220120212947.3440448-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/wopcm=3A_Handle_pre-programmed_WOPCM_registers_=28?=
 =?utf-8?q?rev3=29?=
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

Series: drm/i915/wopcm: Handle pre-programmed WOPCM registers (rev3)
URL   : https://patchwork.freedesktop.org/series/98910/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0abf9917c5c0 drm/i915/wopcm: Handle pre-programmed WOPCM registers
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
sometimes using a smaller WOPCM size that the actual HW support (which isn't

-:39: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#39: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h:98:
+#define   GUC_IS_PRIVILEGED		(1<<29)
                            		  ^

total: 0 errors, 1 warnings, 1 checks, 120 lines checked



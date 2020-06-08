Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3D21F1EBD
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 20:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E866E198;
	Mon,  8 Jun 2020 18:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 48E1A6E198;
 Mon,  8 Jun 2020 18:10:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40B19A47E8;
 Mon,  8 Jun 2020 18:10:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Mon, 08 Jun 2020 18:10:20 -0000
Message-ID: <159163982023.14460.15899242034864996303@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200608174654.1400710-1-rodrigo.vivi@intel.com>
In-Reply-To: <20200608174654.1400710-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Include_asm_sources_for_=7Bivb=2C_hsw=7D=5Fclea?=
 =?utf-8?q?r=5Fkernel=2Ec?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Include asm sources for {ivb, hsw}_clear_kernel.c
URL   : https://patchwork.freedesktop.org/series/78126/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
62de4aea38dc drm/i915: Include asm sources for {ivb, hsw}_clear_kernel.c
-:26: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#26: 
./scripts/generate_clear_kernel.sh -g ivb -m /home/vivijim/intel/freedesktop.org/mesa/mesa/build/src/intel/tools/i965_asm

-:33: WARNING:USE_RELATIVE_PATH: use relative pathname instead of absolute in changelog text
#33: 
igt$ diff /home/vivijim/i915/drm-tip/drivers/gpu/drm/i915/gt/ivb_clear_kernel.c ivb_clear_kernel.c

-:38: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#38: 
new file mode 100644

-:328: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 3 warnings, 0 checks, 280 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

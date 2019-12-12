Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B6711D190
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:56:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED1B6E1A7;
	Thu, 12 Dec 2019 15:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5990B6E1A5;
 Thu, 12 Dec 2019 15:56:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5111CA47DF;
 Thu, 12 Dec 2019 15:56:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Thu, 12 Dec 2019 15:56:32 -0000
Message-ID: <157616619230.32009.7488294855001286655@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212113438.5412-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191212113438.5412-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_lmem_fault_handler_=28rev3=29?=
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

Series: drm/i915: Add lmem fault handler (rev3)
URL   : https://patchwork.freedesktop.org/series/70485/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4dfb09a5684c drm/i915: Add lmem fault handler
-:146: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#146: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:701:
+       .fault = vm_fault_iomem,$

-:147: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#147: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:702:
+       .open = vm_open,$

-:148: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#148: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:703:
+       .close = vm_close,$

total: 0 errors, 3 warnings, 0 checks, 354 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

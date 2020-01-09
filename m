Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923E713637F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 23:56:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3226E978;
	Thu,  9 Jan 2020 22:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59A046E976;
 Thu,  9 Jan 2020 22:56:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51C4FA41FB;
 Thu,  9 Jan 2020 22:56:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chen Zhou" <chenzhou10@huawei.com>
Date: Thu, 09 Jan 2020 22:56:14 -0000
Message-ID: <157861057431.4564.15255033432865310628@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108133610.92714-1-chenzhou10@huawei.com>
In-Reply-To: <20200108133610.92714-1-chenzhou10@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gtt=3A_add_missing_include_file_asm/smp=2Eh_=28rev?=
 =?utf-8?q?2=29?=
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

Series: drm/i915/gtt: add missing include file asm/smp.h (rev2)
URL   : https://patchwork.freedesktop.org/series/71825/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
40572cdbb11d drm/i915/gtt: add missing include file asm/smp.h
-:23: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#23: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:9:
+#include <asm/smp.h>

total: 0 errors, 1 warnings, 0 checks, 7 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

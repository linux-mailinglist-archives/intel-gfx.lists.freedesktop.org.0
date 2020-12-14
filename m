Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFD52D9394
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 08:18:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF37F6E04E;
	Mon, 14 Dec 2020 07:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B8FBA6E04E;
 Mon, 14 Dec 2020 07:17:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3FECA0094;
 Mon, 14 Dec 2020 07:17:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiong Zhang" <xiong.y.zhang@intel.com>
Date: Mon, 14 Dec 2020 07:17:57 -0000
Message-ID: <160793027773.28166.14911191791428013283@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214070113.16177-1-xiong.y.zhang@intel.com>
In-Reply-To: <20201214070113.16177-1-xiong.y.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Try_to_guess_PCH_type_even_without_ISA_bridge?=
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

Series: drm/i915: Try to guess PCH type even without ISA bridge
URL   : https://patchwork.freedesktop.org/series/84886/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
17c226d01ecc drm/i915: Try to guess PCH type even without ISA bridge
-:93: CHECK:BRACES: braces {} should be used on all arms of this statement
#93: FILE: drivers/gpu/drm/i915/intel_pch.c:258:
+		if (run_as_guest()) {
[...]
+		} else
[...]

-:96: CHECK:BRACES: Unbalanced braces around else statement
#96: FILE: drivers/gpu/drm/i915/intel_pch.c:261:
+		} else

total: 0 errors, 0 warnings, 2 checks, 74 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

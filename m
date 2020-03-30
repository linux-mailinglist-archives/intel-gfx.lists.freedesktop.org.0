Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D06C1984C1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 21:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F976E48C;
	Mon, 30 Mar 2020 19:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9B7586E48B;
 Mon, 30 Mar 2020 19:43:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 942F5A00CC;
 Mon, 30 Mar 2020 19:43:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 30 Mar 2020 19:43:27 -0000
Message-ID: <158559740757.13827.9538647933913308458@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200328000422.98978-1-Jason@zx2c4.com>
In-Reply-To: <20200328000422.98978-1-Jason@zx2c4.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_check_to_see_if_the_FPU_is_available_before_usi?=
 =?utf-8?q?ng_it?=
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

Series: drm/i915: check to see if the FPU is available before using it
URL   : https://patchwork.freedesktop.org/series/75249/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
90ca26365082 drm/i915: check to see if the FPU is available before using it
-:34: CHECK:LINE_SPACING: Please don't use multiple blank lines
#34: FILE: drivers/gpu/drm/i915/i915_memcpy.c:47:
+
+

total: 0 errors, 0 warnings, 1 checks, 30 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C86D546A45
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 18:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4877F10EC32;
	Fri, 10 Jun 2022 16:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E96CF10EC32;
 Fri, 10 Jun 2022 16:21:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E414FAA01E;
 Fri, 10 Jun 2022 16:21:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Fri, 10 Jun 2022 16:21:31 -0000
Message-ID: <165487809193.16746.10671410687326475155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/display=3A_Add_smem?=
 =?utf-8?q?_fallback_allocation_for_dpt?=
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

Series: series starting with [1/3] drm/i915/display: Add smem fallback allocation for dpt
URL   : https://patchwork.freedesktop.org/series/104983/
State : warning

== Summary ==

Error: dim checkpatch failed
d360b10b6a41 drm/i915/display: Add smem fallback allocation for dpt
ab1f5e5f421f drm/i915: Fix i915_vma_pin_iomap()
-:48: CHECK:BRACES: Unbalanced braces around else statement
#48: FILE: drivers/gpu/drm/i915/i915_vma.c:573:
+		else {

total: 0 errors, 0 warnings, 1 checks, 72 lines checked
005cc359dd3c drm/i915: don't leak lmem mapping in vma_evict



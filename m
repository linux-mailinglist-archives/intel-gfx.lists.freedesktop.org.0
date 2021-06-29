Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF8F3B76FE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 19:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37AC56E8CD;
	Tue, 29 Jun 2021 17:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C13C46E8CD;
 Tue, 29 Jun 2021 17:15:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA27BA8836;
 Tue, 29 Jun 2021 17:15:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Desmond Cheong Zhi Xi" <desmondcheongzx@gmail.com>
Date: Tue, 29 Jun 2021 17:15:33 -0000
Message-ID: <162498693373.9056.9454478464164699357@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210629033706.20537-1-desmondcheongzx@gmail.com>
In-Reply-To: <20210629033706.20537-1-desmondcheongzx@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_address_potential_UAF_bugs_with_drm=5Fmaster_ptrs_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm: address potential UAF bugs with drm_master ptrs (rev2)
URL   : https://patchwork.freedesktop.org/series/91969/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
74cef89ae027 drm: avoid circular locks in drm_mode_getconnector
cb2470da87f5 drm: add a locked version of drm_is_current_master
5c1685ef444e drm: protect drm_master pointers in drm_lease.c
-:94: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!master"
#94: FILE: drivers/gpu/drm/drm_lease.c:116:
+	if (master == NULL)

-:113: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!master"
#113: FILE: drivers/gpu/drm/drm_lease.c:144:
+	if (master == NULL)

-:136: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!master"
#136: FILE: drivers/gpu/drm/drm_lease.c:177:
+	if (master == NULL)

total: 0 errors, 0 warnings, 3 checks, 269 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

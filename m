Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FE918126C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 08:55:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DAB6E927;
	Wed, 11 Mar 2020 07:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8289D6E86F;
 Wed, 11 Mar 2020 07:55:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78C5BA00E7;
 Wed, 11 Mar 2020 07:55:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Wed, 11 Mar 2020 07:55:47 -0000
Message-ID: <158391334746.13949.17735904652376154356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311073256.6535-1-tiwai@suse.de>
In-Reply-To: <20200311073256.6535-1-tiwai@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Use_scnprintf=28=29_for_avoiding_potential_b?=
 =?utf-8?q?uffer_overflow?=
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

Series: drm/i915/gt: Use scnprintf() for avoiding potential buffer overflow
URL   : https://patchwork.freedesktop.org/series/74562/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
00261fad413a drm/i915/gt: Use scnprintf() for avoiding potential buffer overflow
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1385:
+			len = scnprintf(hdr, sizeof(hdr),
 				       "\t\tActive[%d]: ",

total: 0 errors, 0 warnings, 1 checks, 23 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

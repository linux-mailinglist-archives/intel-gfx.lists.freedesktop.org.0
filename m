Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1260C40CE1B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1903F6EA27;
	Wed, 15 Sep 2021 20:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75DA96EA27;
 Wed, 15 Sep 2021 20:34:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72020A66C9;
 Wed, 15 Sep 2021 20:34:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tim Gardner" <tim.gardner@canonical.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Sep 2021 20:34:27 -0000
Message-ID: <163173806746.30119.14210167281024830351@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210915192318.2061-1-tim.gardner@canonical.com>
In-Reply-To: <20210915192318.2061-1-tim.gardner@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_zero_fill_vma_name_buffer?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: zero fill vma name buffer
URL   : https://patchwork.freedesktop.org/series/94708/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3215090a38c8 drm/i915: zero fill vma name buffer
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
4. fixed_size_dest: You might overrun the 16-character fixed-size string c->name

-:61: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#61: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1347:
+	strncpy(c->name, name, VMA_NAME_LEN-1);
 	                                   ^

total: 0 errors, 1 warnings, 1 checks, 28 lines checked



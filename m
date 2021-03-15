Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C389F33C03D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 16:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB82C890D2;
	Mon, 15 Mar 2021 15:45:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 32015890D2;
 Mon, 15 Mar 2021 15:45:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 215C4A0003;
 Mon, 15 Mar 2021 15:45:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Mon, 15 Mar 2021 15:45:11 -0000
Message-ID: <161582311113.30954.1388487671771428813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210315143428.1471489-1-jason@jlekstrand.net>
In-Reply-To: <20210315143428.1471489-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Drop_legacy_IOCTLs_on_new_HW?=
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

Series: drm/i915: Drop legacy IOCTLs on new HW
URL   : https://patchwork.freedesktop.org/series/87980/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1497aeed2093 drm/i915/gem: Drop legacy execbuffer support (v2)
-:7: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'b50964027bef', maybe rebased or not pulled?
#7: 
when it exists since libdrm commit b50964027bef which landed Mar 2, 2010.

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
f4317d487bb4 drm/i915/gem: Drop relocation support on all new hardware (v5)
-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e22fa6f0a976 ("drm/i915/rkl: Remove require_force_probe protection")'
#21: 
enabled by e22fa6f0a976 which has not yet landed in drm-next so this

total: 1 errors, 0 warnings, 0 checks, 37 lines checked
7e2fd70026ff drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

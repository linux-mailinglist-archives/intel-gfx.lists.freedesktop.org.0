Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DD844CB7B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 22:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374876E3AC;
	Wed, 10 Nov 2021 21:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB35B6E3AC;
 Wed, 10 Nov 2021 21:57:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D57EBA00C9;
 Wed, 10 Nov 2021 21:57:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Wed, 10 Nov 2021 21:57:38 -0000
Message-ID: <163658145885.15664.8937560935267878071@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_ALSA=3A_hda=3A_fix_general_protection_fault_in_azx=5Fruntim?=
 =?utf-8?q?e=5Fidle?=
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

Series: ALSA: hda: fix general protection fault in azx_runtime_idle
URL   : https://patchwork.freedesktop.org/series/96784/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f81f77a16d9c ALSA: hda: fix general protection fault in azx_runtime_idle
-:31: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#31: 
<4> [264.038232] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b73f0: 0000 [#1] PREEMPT SMP NOPTI

total: 0 errors, 1 warnings, 0 checks, 7 lines checked



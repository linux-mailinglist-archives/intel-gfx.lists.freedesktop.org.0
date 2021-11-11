Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD8244D937
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 16:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2C66E463;
	Thu, 11 Nov 2021 15:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A34ED6E431;
 Thu, 11 Nov 2021 15:33:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B57EAADD3;
 Thu, 11 Nov 2021 15:33:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Thu, 11 Nov 2021 15:33:47 -0000
Message-ID: <163664482761.5313.950547892614243241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_ALSA=3A_hda=3A_fix_general_protection_fault_in_azx=5Fruntim?=
 =?utf-8?q?e=5Fidle_=28rev2=29?=
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

Series: ALSA: hda: fix general protection fault in azx_runtime_idle (rev2)
URL   : https://patchwork.freedesktop.org/series/96784/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
791aebc9d846 ALSA: hda: fix general protection fault in azx_runtime_idle
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
> > >  - https://intel-gfx-ci.01.org/tree/linux-next/next-20211109/fi-tgl-1115g4/igt@i915_module_load@reload.html

-:83: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 21 lines checked



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E5A2CAFDB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D6E6E931;
	Tue,  1 Dec 2020 22:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FC1D6E930;
 Tue,  1 Dec 2020 22:18:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3315FA73C9;
 Tue,  1 Dec 2020 22:18:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 01 Dec 2020 22:18:05 -0000
Message-ID: <160686108517.6987.20366119833810523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201201215441.31900-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201201215441.31900-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_Report_error_for_vmap=28=29_failure?=
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

Series: drm/i915/gem: Report error for vmap() failure
URL   : https://patchwork.freedesktop.org/series/84467/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e973f9a9742f drm/i915/gem: Report error for vmap() failure
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
<1> [269.830447] BUG: kernel NULL pointer dereference, address: 0000000000000000

-:17: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#17: 
<4> [269.830640] Code: e8 0c 32 02 00 48 89 c5 48 3d 00 f0 ff ff 0f 87 e9 02 00 00 48 8b 8b 78 06 00 00 44 89 f0 48 89 ef 35 af be ad de 48 c1 e9 02 <f3> ab 0f b6 83 80 03 00 00 89 c2 c0 ea 03 83 e2 02 75 09 83 c8 20

-:56: WARNING:REPEATED_WORD: Possible repeated word: 'ff'
#56: 
<4> [269.832208] Code: 00 f3 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 1f f6 2c 00 f7 d8 64 89 01 48

-:69: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Tvrtko Ursulin <tvrtko.ursulin@intel.'
#69: 
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.

total: 1 errors, 3 warnings, 0 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

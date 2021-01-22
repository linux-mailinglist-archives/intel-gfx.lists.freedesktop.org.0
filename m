Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B1A300BD9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 19:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8876EA31;
	Fri, 22 Jan 2021 18:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C616A6EA01;
 Fri, 22 Jan 2021 18:53:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFBA0A0099;
 Fri, 22 Jan 2021 18:53:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 Jan 2021 18:53:29 -0000
Message-ID: <161134160975.14036.6561791618220235696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210122150622.21088-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210122150622.21088-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/10=5D_drm/i915/gt=3A_SPDX_cleanu?=
 =?utf-8?q?p?=
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

Series: series starting with [01/10] drm/i915/gt: SPDX cleanup
URL   : https://patchwork.freedesktop.org/series/86185/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
80d2e2637324 drm/i915/gt: SPDX cleanup
25941d069d19 drm/i915/gt: Add some missing blank lines after declaration
138dc8ff8b57 drm/i915/gt: Remove repeated words from comments
403210e3e86d drm/i915/gt: Fixup misaligned function parameters
-:6: WARNING:TYPO_SPELLING: 'paramters' may be misspelled - perhaps 'parameters'?
#6: 
Rememeber to align paramters to the '(', thanks checkpatch
                   ^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
ddb63cc5d427 drm/i915/gt: Remove a bonus newline
2c0af725138c drm/i915/gt: Wrap macro arg in ()
af31f889a780 drm/i915/gt: Insert spaces into GEN3_L3LOG_SIZE/4
41b2b503d40a drm/i915/gt: Replace unnecessary ',' with '; '
74ccef3728f1 drm/i915/gt: Add a space before '('
ab84d0d24d4f drm/i915/gt: Replace 'return' with a fall-through


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

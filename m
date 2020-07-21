Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A95227594
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 04:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8D389F97;
	Tue, 21 Jul 2020 02:27:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EE0B89F97;
 Tue, 21 Jul 2020 02:27:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41893A00E6;
 Tue, 21 Jul 2020 02:27:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 21 Jul 2020 02:27:48 -0000
Message-ID: <159529846823.6962.2301222355787617554@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Allow_privileged_user_to_map_the_OA_buffer_=28rev3=29?=
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

Series: Allow privileged user to map the OA buffer (rev3)
URL   : https://patchwork.freedesktop.org/series/79460/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
60886d35a086 drm/i915/perf: Ensure observation logic is not clock gated
d11b49577d7e drm/i915/perf: Whitelist OA report trigger registers
3c4afc3f876c drm/i915/perf: Whitelist OA counter and buffer registers
a4bff43cce38 drm/i915/perf: Map OA buffer to user space for gen12 performance query
-:47: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#47: 
- Pass non-zero offset in mmap to enforce the right object is mapped (Chris)

total: 0 errors, 1 warnings, 0 checks, 372 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

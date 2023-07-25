Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C44761A63
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 15:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CAFB10E3D6;
	Tue, 25 Jul 2023 13:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02E0710E3D0;
 Tue, 25 Jul 2023 13:47:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED83FAADED;
 Tue, 25 Jul 2023 13:47:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 25 Jul 2023 13:47:22 -0000
Message-ID: <169029284296.27664.5721256229067058147@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230724125633.1490543-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230724125633.1490543-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Avoid_GGTT_flushing_on_non-GGTT_paths_of_i915?=
 =?utf-8?b?X3ZtYV9waW5faW9tYXAgKHJldjIp?=
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

Series: drm/i915: Avoid GGTT flushing on non-GGTT paths of i915_vma_pin_iomap (rev2)
URL   : https://patchwork.freedesktop.org/series/121236/
State : warning

== Summary ==

Error: dim checkpatch failed
7f0658687535 drm/i915: Avoid GGTT flushing on non-GGTT paths of i915_vma_pin_iomap
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
Commit 4bc91dbde0da ("drm/i915/lmem: Bypass aperture when lmem is available")

-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d976521a995a ("drm/i915: extend i915_vma_pin_iomap()")'
#15: 
d976521a995a ("drm/i915: extend i915_vma_pin_iomap()").

total: 1 errors, 1 warnings, 0 checks, 18 lines checked



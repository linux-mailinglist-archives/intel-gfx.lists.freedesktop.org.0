Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDDC1B57BD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 11:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E0B6E434;
	Thu, 23 Apr 2020 09:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DC786E434;
 Thu, 23 Apr 2020 09:06:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17745A0099;
 Thu, 23 Apr 2020 09:06:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 23 Apr 2020 09:06:45 -0000
Message-ID: <158763280509.26748.5838700973899586123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200423075902.21892-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev27=29?=
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

Series: SAGV support for Gen12+ (rev27)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f963df93cc7d drm/i915: Introduce skl_plane_wm_level accessor.
75ab029a2591 drm/i915: Use bw state for per crtc SAGV evaluation
b0cc5c6eec63 drm/i915: Track active_pipes in bw_state
-:45: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#45: FILE: drivers/gpu/drm/i915/intel_pm.c:3888:
+			state->active_pipes = new_bw_state->active_pipes =

total: 0 errors, 0 warnings, 1 checks, 42 lines checked
38d87c8a7846 drm/i915: Separate icl and skl SAGV checking
44aab96e8376 drm/i915: Add TGL+ SAGV support
2eadba427c66 drm/i915: Added required new PCode commands
a7b5caac439f drm/i915: Rename bw_state to new_bw_state
c8050b966b6e drm/i915: Restrict qgv points which don't have enough bandwidth.
f1e652ab8841 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

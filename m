Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC25448965A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 11:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41F712BC5E;
	Mon, 10 Jan 2022 10:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3275212BC5E;
 Mon, 10 Jan 2022 10:30:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E048A008A;
 Mon, 10 Jan 2022 10:30:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 10 Jan 2022 10:30:29 -0000
Message-ID: <164181062915.28741.8117766194727342082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220110095740.166078-1-jani.nikula@intel.com>
In-Reply-To: <20220110095740.166078-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_split_out_PCI_co?=
 =?utf-8?q?nfig_space_registers_from_i915=5Freg=2Eh?=
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

Series: series starting with [1/4] drm/i915: split out PCI config space registers from i915_reg.h
URL   : https://patchwork.freedesktop.org/series/98672/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6a1b0048ac62 drm/i915: split out PCI config space registers from i915_reg.h
-:190: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#190: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 218 lines checked
92dafa7e60d7 drm/i915: split out vlv sideband registers from i915_reg.h
-:212: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#212: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 365 lines checked
1eaf1d9cc0f5 drm/i915/vga: switch to use VGA definitions from video/vga.h
26f16fbaa294 drm/i915: remove VGA register definitions



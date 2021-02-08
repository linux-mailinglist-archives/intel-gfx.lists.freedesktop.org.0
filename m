Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 119C8313F42
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 20:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BE86E9DA;
	Mon,  8 Feb 2021 19:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85D836E9D9;
 Mon,  8 Feb 2021 19:40:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76877A7DFB;
 Mon,  8 Feb 2021 19:40:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 08 Feb 2021 19:40:21 -0000
Message-ID: <161281322146.27712.16825080071906459782@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210208162450.108067-1-matthew.auld@intel.com>
In-Reply-To: <20210208162450.108067-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Create_stolen_me?=
 =?utf-8?q?mory_region_from_local_memory?=
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

Series: series starting with [1/4] drm/i915: Create stolen memory region from local memory
URL   : https://patchwork.freedesktop.org/series/86861/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
016b7066311e drm/i915: Create stolen memory region from local memory
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
      as stolen-local or stolen-system based on this value won't work. Split

-:220: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#220: FILE: drivers/gpu/drm/i915/intel_memory_region.c:285:
+		case INTEL_MEMORY_STOLEN_LOCAL: /* fallthrough */

total: 0 errors, 2 warnings, 0 checks, 201 lines checked
68cc67feb544 drm/i915/stolen: treat stolen local as normal local memory
d9a90dbdf46c drm/i915/stolen: enforce the min_page_size contract
ac735024977c drm/i915/stolen: pass the allocation flags


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

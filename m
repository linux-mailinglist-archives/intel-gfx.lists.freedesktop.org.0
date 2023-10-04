Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 128607B7710
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 06:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B98010E093;
	Wed,  4 Oct 2023 04:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E74E10E093;
 Wed,  4 Oct 2023 04:22:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 499D4AADEF;
 Wed,  4 Oct 2023 04:22:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivaik Balasubrawmanian" <vivaik.balasubrawmanian@intel.com>
Date: Wed, 04 Oct 2023 04:22:25 -0000
Message-ID: <169639334526.7835.13720373091954099815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231004034012.66334-1-vivaik.balasubrawmanian@intel.com>
In-Reply-To: <20231004034012.66334-1-vivaik.balasubrawmanian@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_uAPI_to_query_microcontroller_fw_version?=
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

Series: Add uAPI to query microcontroller fw version
URL   : https://patchwork.freedesktop.org/series/124592/
State : warning

== Summary ==

Error: dim checkpatch failed
5205a07029c0 Add uAPI to query microcontroller fw version
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
async compute engines feature in DG2 and newer. A new GuC firmware fixed the issue but

-:66: CHECK:BRACES: braces {} should be used on all arms of this statement
#66: FILE: drivers/gpu/drm/i915/i915_query.c:563:
+	if (ret == size) {
[...]
+	} else if (ret != 0)
[...]

-:134: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#134: FILE: include/uapi/drm/i915_drm.h:3219:
+/**
+* struct drm_i915_query_uc_fw_version - query a micro-controller firmware version

total: 0 errors, 2 warnings, 1 checks, 104 lines checked



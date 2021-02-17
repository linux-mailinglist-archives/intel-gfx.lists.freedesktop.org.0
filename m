Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D386331DC8D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 16:40:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8566E489;
	Wed, 17 Feb 2021 15:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8D2E6E3BB;
 Wed, 17 Feb 2021 15:40:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D74B2A47E8;
 Wed, 17 Feb 2021 15:40:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee, Shawn C" <shawn.c.lee@intel.com>
Date: Wed, 17 Feb 2021 15:40:40 -0000
Message-ID: <161357644086.24998.13411485316665617299@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
In-Reply-To: <20210201150228.10001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vbt=3A_update_DP_max_link_rate_table_=28rev3=29?=
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

Series: drm/i915/vbt: update DP max link rate table (rev3)
URL   : https://patchwork.freedesktop.org/series/86539/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6ab2d5e62da7 drm/i915/vbt: update DP max link rate table
-:113: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#113: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1946:
+			info->dp_max_link_rate = parse_bdb_230_dp_max_link_rate(child->dp_max_link_rate);

-:115: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#115: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1948:
+			info->dp_max_link_rate = parse_bdb_216_dp_max_link_rate(child->dp_max_link_rate);

total: 0 errors, 2 warnings, 0 checks, 125 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

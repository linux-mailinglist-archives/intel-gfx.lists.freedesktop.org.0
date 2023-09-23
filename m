Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A7E7ABDCE
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Sep 2023 07:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10B710E067;
	Sat, 23 Sep 2023 05:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 447F310E04C;
 Sat, 23 Sep 2023 05:00:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02A1DA0BA8;
 Sat, 23 Sep 2023 05:00:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Sat, 23 Sep 2023 05:00:36 -0000
Message-ID: <169544523697.3503.16431166040327599498@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230922222510.2235213-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230922222510.2235213-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Engine_busyness_v2?=
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

Series: Engine busyness v2
URL   : https://patchwork.freedesktop.org/series/124149/
State : warning

== Summary ==

Error: dim checkpatch failed
08333f9e5cff drm/i915/guc: Support new and improved engine busyness
-:223: WARNING:LONG_LINE: line length of 121 exceeds 100 columns
#223: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:1004:
+						 engine_usage.v2.function_data[guc_vf].engine_data[guc_class][instance]);

total: 0 errors, 1 warnings, 0 checks, 918 lines checked
77a6f269dccf drm/i915/mtl: Add a PMU counter for total active ticks
726d0071dc91 drm/i915/mtl: Add counters for engine busyness ticks



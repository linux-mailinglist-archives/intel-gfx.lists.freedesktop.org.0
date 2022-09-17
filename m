Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717C35BB539
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 03:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A27B10E044;
	Sat, 17 Sep 2022 01:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4582E10E044;
 Sat, 17 Sep 2022 01:13:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17AB9AADD1;
 Sat, 17 Sep 2022 01:13:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Sat, 17 Sep 2022 01:13:19 -0000
Message-ID: <166337719906.24746.7179142615287479701@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220917004404.414981-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_struct_cdclk=5Fstep?=
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

Series: Introduce struct cdclk_step
URL   : https://patchwork.freedesktop.org/series/108685/
State : warning

== Summary ==

Error: dim checkpatch failed
23515dff4937 drm/i915/display Add dg2_prog_squash_ctl() helper
4380da21d9ee drm/i915/display: add cdclk action struct to cdclk_config
ca9d3bf3f74e drm/i915/display: Embed the new struct steps for squashing
abf006e4078f drm/i915/display: Embed the new struct steps for crawling
1c77fcf8d5cc drm/i915/display: Embed the new struct steps for modeset
f3329e90da5d drm/i915/display: Dump the new cdclk config values
-:20: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#20: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1691:
 }
+static const char *cdclk_sequence_to_string(enum cdclk_sequence cdclk_sequence)

total: 0 errors, 0 warnings, 1 checks, 32 lines checked



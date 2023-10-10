Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 437C37BF20D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 07:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5788210E148;
	Tue, 10 Oct 2023 05:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77EC410E148;
 Tue, 10 Oct 2023 05:02:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FB1BA47E9;
 Tue, 10 Oct 2023 05:02:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Tue, 10 Oct 2023 05:02:43 -0000
Message-ID: <169691416343.28098.9620480800337765008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231009183802.673882-1-John.C.Harrison@Intel.com>
In-Reply-To: <20231009183802.673882-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_print_message_helper_updates_=28rev2=29?=
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

Series: More print message helper updates (rev2)
URL   : https://patchwork.freedesktop.org/series/124853/
State : warning

== Summary ==

Error: dim checkpatch failed
e57654f9ec79 drm/i915/gt: More use of GT specific print helpers
-:163: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_gt' - possible side-effects?
#163: FILE: drivers/gpu/drm/i915/gt/intel_gt_print.h:19:
+#define gt_warn_once(_gt, _fmt, ...) \
+	drm_warn_once(&(_gt)->i915->drm, "GT%u: " _fmt, (_gt)->info.id, ##__VA_ARGS__)

total: 0 errors, 0 warnings, 1 checks, 232 lines checked
5df9181f4e24 drm/i915: More use of GT specific print helpers



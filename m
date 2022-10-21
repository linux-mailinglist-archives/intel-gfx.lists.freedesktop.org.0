Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDEF606CD0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 03:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE93910E42A;
	Fri, 21 Oct 2022 01:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4088010E275;
 Fri, 21 Oct 2022 01:04:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37E0FA9932;
 Fri, 21 Oct 2022 01:04:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 21 Oct 2022 01:04:23 -0000
Message-ID: <166631426320.18264.12864731433163167489@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
In-Reply-To: <20221021002024.390052-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prep_series_-_CDCLK_code_churn?=
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

Series: Prep series - CDCLK code churn
URL   : https://patchwork.freedesktop.org/series/109974/
State : warning

== Summary ==

Error: dim checkpatch failed
3be032201e8d drm/i915/display: Change terminology for cdclk actions
abff0975aed0 drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
2c0640029569 drm/i915/display: Move chunks of code out of bxt_set_cdclk()
-:43: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#43: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1706:
+
+}

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
5edbe27ec9bb drm/i915/display: Move squash_ctl register programming to its own function



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E1C5916A3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 23:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0E4E8E9BD;
	Fri, 12 Aug 2022 21:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F117D11BDCB;
 Fri, 12 Aug 2022 21:03:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D809CA00FD;
 Fri, 12 Aug 2022 21:03:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 12 Aug 2022 21:03:56 -0000
Message-ID: <166033823685.17840.10870251982890880679@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220812202240.542124-1-matthew.d.roper@intel.com>
In-Reply-To: <20220812202240.542124-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Add_dedicated?=
 =?utf-8?q?_function_for_non-ctx_register_tuning_settings?=
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

Series: series starting with [1/2] drm/i915/gt: Add dedicated function for non-ctx register tuning settings
URL   : https://patchwork.freedesktop.org/series/107224/
State : warning

== Summary ==

Error: dim checkpatch failed
e2e3d2199931 drm/i915/gt: Add dedicated function for non-ctx register tuning settings
-:63: WARNING:BRACES: braces {} are not necessary for single statement blocks
#63: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:2693:
+	if (IS_DG2(i915)) {
+		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+	}

total: 0 errors, 1 warnings, 0 checks, 61 lines checked
fb4a403dc26e drm/i915/dg2: Add additional tuning settings



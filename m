Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F3762CC9C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 22:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8AB710E510;
	Wed, 16 Nov 2022 21:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E93D110E510;
 Wed, 16 Nov 2022 21:21:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E262BA010C;
 Wed, 16 Nov 2022 21:21:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Date: Wed, 16 Nov 2022 21:21:36 -0000
Message-ID: <166863369689.29192.10190112909804567994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221116145008.556381-1-anusha.srivatsa@intel.com>
In-Reply-To: <20221116145008.556381-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/display=3A_Add_miss?=
 =?utf-8?q?ing_checks_for_cdclk_crawling?=
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

Series: series starting with [1/3] drm/i915/display: Add missing checks for cdclk crawling
URL   : https://patchwork.freedesktop.org/series/110970/
State : warning

== Summary ==

Error: dim checkpatch failed
8b43fdea884d drm/i915/display: Add missing checks for cdclk crawling
0058d40d8134 drm/i915/display: Do both crawl and squash when changing cdclk
-:61: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1736:
+						    const struct intel_cdclk_config *old_cdclk_config,

-:62: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#62: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1737:
+						    const struct intel_cdclk_config *new_cdclk_config,

-:170: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 26)
#170: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1850:
+	if (DISPLAY_VER(dev_priv) >= 14)
+		/* NOOP */;

-:201: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 19)
#201: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1881:
+	if (DISPLAY_VER(dev_priv) >= 14)
[...]
+		 */;

total: 0 errors, 4 warnings, 0 checks, 214 lines checked
b56ac994c40f drm/i915/display: Add CDCLK Support for MTL



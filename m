Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F77965399E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 00:12:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489DE10E00F;
	Wed, 21 Dec 2022 23:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 961B110E00F;
 Wed, 21 Dec 2022 23:12:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F2B0AADE3;
 Wed, 21 Dec 2022 23:12:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Wed, 21 Dec 2022 23:12:16 -0000
Message-ID: <167166433655.32312.9844687330690254556@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221220120023.1214620-1-andrzej.hajda@intel.com>
In-Reply-To: <20221220120023.1214620-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display/core=3A_use?=
 =?utf-8?q?_intel=5Fde=5Frmw_if_possible?=
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

Series: series starting with [1/2] drm/i915/display/core: use intel_de_rmw if possible
URL   : https://patchwork.freedesktop.org/series/112101/
State : warning

== Summary ==

Error: dim checkpatch failed
d968db4e1183 drm/i915/display/core: use intel_de_rmw if possible
-:26: ERROR:CODE_INDENT: code indent should use tabs where possible
#26: FILE: drivers/gpu/drm/i915/display/intel_display.c:300:
+^I^I             DUPS1_GATING_DIS | DUPS2_GATING_DIS, 0);$

total: 1 errors, 0 warnings, 0 checks, 661 lines checked
6df65ec24a4a drm/i915/display/misc: use intel_de_rmw if possible
-:357: ERROR:CODE_INDENT: code indent should use tabs where possible
#357: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:2618:
+^I^I             DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,$

-:358: ERROR:CODE_INDENT: code indent should use tabs where possible
#358: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:2619:
+^I^I             DP_TP_CTL_LINK_TRAIN_PAT1);$

total: 2 errors, 0 warnings, 0 checks, 894 lines checked



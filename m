Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 388FF34A06D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 05:15:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035F46E16D;
	Fri, 26 Mar 2021 04:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 22B4A6E167;
 Fri, 26 Mar 2021 04:15:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B5BFA00C9;
 Fri, 26 Mar 2021 04:15:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 26 Mar 2021 04:15:42 -0000
Message-ID: <161673214208.10686.13637863494051551605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326021718.486622-1-matthew.d.roper@intel.com>
In-Reply-To: <20210326021718.486622-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Eliminate_IS=5FGEN9=5F=7BBC=2CLP=7D?=
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

Series: drm/i915/display: Eliminate IS_GEN9_{BC,LP}
URL   : https://patchwork.freedesktop.org/series/88466/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
967bfd04b985 drm/i915/display: Eliminate IS_GEN9_{BC,LP}
-:995: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around '!intel_dsi->dual_link'
#995: FILE: drivers/gpu/drm/i915/display/vlv_dsi.c:1496:
+		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+		    (!intel_dsi->dual_link)) {

total: 0 errors, 0 warnings, 1 checks, 927 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

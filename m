Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A97836784D9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 19:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D688C10E53A;
	Mon, 23 Jan 2023 18:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C121010E52B;
 Mon, 23 Jan 2023 18:26:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B89C1AADD1;
 Mon, 23 Jan 2023 18:26:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 23 Jan 2023 18:26:19 -0000
Message-ID: <167449837975.347.10728078644153364899@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Implement_workaround_for_CDCLK_PLL_disable/enab?=
 =?utf-8?q?le?=
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

Series: drm/i915: Implement workaround for CDCLK PLL disable/enable
URL   : https://patchwork.freedesktop.org/series/113226/
State : warning

== Summary ==

Error: dim checkpatch failed
2bf60cdfb1d8 drm/i915: Implement workaround for CDCLK PLL disable/enable
-:25: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#25: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1807:
+	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
+		&& dev_priv->display.cdclk.hw.vco > 0

-:26: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#26: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1808:
+		&& dev_priv->display.cdclk.hw.vco > 0
+		&& HAS_CDCLK_SQUASH(dev_priv));

-:43: CHECK:BRACES: Unbalanced braces around else statement
#43: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:1830:
+	} else

total: 0 errors, 0 warnings, 3 checks, 27 lines checked



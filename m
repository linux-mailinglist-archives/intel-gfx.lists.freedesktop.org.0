Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 361FD63773B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 12:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2433C10E6E0;
	Thu, 24 Nov 2022 11:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCC5C10E029;
 Thu, 24 Nov 2022 11:09:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D70BEAA0ED;
 Thu, 24 Nov 2022 11:09:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 24 Nov 2022 11:09:30 -0000
Message-ID: <166928817085.28648.9328226934906316828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20221124103623.13974-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Implement_workaround_for_PLL_enabling_for_DG2/MTL?=
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

Series: Implement workaround for PLL enabling for DG2/MTL
URL   : https://patchwork.freedesktop.org/series/111311/
State : warning

== Summary ==

Error: dim checkpatch failed
526c2d192fcc drm/i915: Implement workaround for CDCLK PLL disable/enable
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



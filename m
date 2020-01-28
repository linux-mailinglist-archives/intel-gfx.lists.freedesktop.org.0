Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E403C14AD59
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 01:49:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37956EC40;
	Tue, 28 Jan 2020 00:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E739D6EC40;
 Tue, 28 Jan 2020 00:49:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD407A0119;
 Tue, 28 Jan 2020 00:49:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 28 Jan 2020 00:49:41 -0000
Message-ID: <158017258187.20537.247257943365046112@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1580149467.git.jani.nikula@intel.com>
In-Reply-To: <cover.1580149467.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/display=3A_mass_conversion_to_intel=5Fde=5F*=28=29_reg?=
 =?utf-8?q?ister_accessors_=28rev2=29?=
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

Series: drm/i915/display: mass conversion to intel_de_*() register accessors (rev2)
URL   : https://patchwork.freedesktop.org/series/72533/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915/icl_dsi: use intel_de_*() functions for register access
Okay!

Commit: drm/i915/combo_phy: use intel_de_*() functions for register access
Okay!

Commit: drm/i915/ddi: use intel_de_*() functions for register access
Okay!

Commit: drm/i915/display: use intel_de_*() functions for register access
+drivers/gpu/drm/i915/display/intel_display.c:1218:22: error: Expected constant expression in case statement
-O:drivers/gpu/drm/i915/display/intel_display.c:1219:22: error: Expected constant expression in case statement

Commit: drm/i915/display_power: use intel_de_*() functions for register access
Okay!

Commit: drm/i915/dp: use intel_de_*() functions for register access
Okay!

Commit: drm/i915/hdcp: use intel_de_*() functions for register access
Okay!

Commit: drm/i915/psr: use intel_de_*() functions for register access
Okay!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

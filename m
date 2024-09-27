Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFFF988C4B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 00:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD8610E179;
	Fri, 27 Sep 2024 22:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D816110E179;
 Fri, 27 Sep 2024 22:08:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Use_the_?=
 =?utf-8?q?gen3+_irq_code_on_gen2?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 22:08:29 -0000
Message-ID: <172747490987.1113343.10431162580746219734@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Use the gen3+ irq code on gen2
URL   : https://patchwork.freedesktop.org/series/139218/
State : warning

== Summary ==

Error: dim checkpatch failed
74822b1923f4 drm/i915: Introduce i915_has_legacy_blc_interrupt()
3195a44a884a drm/i915: Clean up gen3 hotplug irq setup
b260e9fcbce4 drm/i915: Clean up some comments in gmch irq code
-:24: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#24: FILE: drivers/gpu/drm/i915/i915_irq.c:301:
+		 * signalled in IIR */

-:33: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#33: FILE: drivers/gpu/drm/i915/i915_irq.c:383:
+		 * signalled in IIR */

-:60: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#60: FILE: drivers/gpu/drm/i915/i915_irq.c:1111:
+		 * signalled in IIR */

-:77: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#77: FILE: drivers/gpu/drm/i915/i915_irq.c:1232:
+		 * signalled in IIR */

total: 0 errors, 4 warnings, 0 checks, 55 lines checked
a05fde94540f drm/i915: Switch over to gen3 irq code on gen2



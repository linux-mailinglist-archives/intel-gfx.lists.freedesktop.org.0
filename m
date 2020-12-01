Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFBB2CAB17
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 19:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E3B16E885;
	Tue,  1 Dec 2020 18:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F5A26E87A;
 Tue,  1 Dec 2020 18:54:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17180A363B;
 Tue,  1 Dec 2020 18:54:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 01 Dec 2020 18:54:47 -0000
Message-ID: <160684888709.6992.10512631856441424427@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130212200.2811939-1-imre.deak@intel.com>
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_the_missing_wakeref_tracking_for_display_po?=
 =?utf-8?q?wer_references_=28rev3=29?=
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

Series: drm/i915: Add the missing wakeref tracking for display power references (rev3)
URL   : https://patchwork.freedesktop.org/series/84418/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a960388b294b drm/i915: Use CRTC index consistently during getting/putting CRTC power domains
124b1113405e drm/i915: Factor out helpers to get/put a set of tracked power domains
-:49: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_display.c:11307:
+						       POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder)))

-:84: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#84: FILE: drivers/gpu/drm/i915/display/intel_display.c:11332:
+							       POWER_DOMAIN_TRANSCODER(cpu_transcoder)))

total: 0 errors, 2 warnings, 0 checks, 233 lines checked
fc0def725f9b drm/i915: Track power references taken for enabled CRTCs
b26d265885ef drm/i915/ddi: Track power reference taken for encoder DDI IO use
094282ec0880 drm/i915/ddi: Track power reference taken for encoder main lane AUX use
1c8414e0d665 drm/i915: Track power reference taken for eDP VDD
22c0ba746b62 drm/i915: Rename power_domains.wakeref to init_wakeref
7d278c7ad277 drm/i915: Track power reference taken to disable power well functionality
b99962e692f3 drm/i915: Make intel_display_power_put_unchecked() an internal-only function
-:14: WARNING:BAD_SIGN_OFF: Duplicate signature
#14: 
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

total: 0 errors, 1 warnings, 0 checks, 69 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

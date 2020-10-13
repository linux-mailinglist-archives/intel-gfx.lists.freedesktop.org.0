Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A2F28D384
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 20:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C94796E922;
	Tue, 13 Oct 2020 18:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B52E6E922;
 Tue, 13 Oct 2020 18:19:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31810A0094;
 Tue, 13 Oct 2020 18:19:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 13 Oct 2020 18:19:28 -0000
Message-ID: <160261316817.28550.3279276642840341582@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/3=5D_drm/i915=3A_Reorder_hpd?=
 =?utf-8?q?_init_vs=2E_display_resume_=28rev4=29?=
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

Series: series starting with [v3,1/3] drm/i915: Reorder hpd init vs. display resume (rev4)
URL   : https://patchwork.freedesktop.org/series/82417/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
706cef4f9041 drm/i915: Reorder hpd init vs. display resume
-:26: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#26: 
.hpd_irq_setup()+resume+intel_hpd_init() -> intel_hpd_init()+resume+intel_hpd_poll_disable()

-:176: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#176: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:693:
+ * dev->mode_config.mutex, we do the actual hotplug enabling in a seperate

total: 0 errors, 2 warnings, 0 checks, 174 lines checked
ff2305070287 drm/i915: Do drm_mode_config_reset() after HPD init
44633a798306 drm/i915: Refactor .hpd_irq_setup() calls a bit


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

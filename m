Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F2E287A80
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 19:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4AA6EAA2;
	Thu,  8 Oct 2020 17:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 803396EAA1;
 Thu,  8 Oct 2020 17:02:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 781ADA008A;
 Thu,  8 Oct 2020 17:02:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 08 Oct 2020 17:02:53 -0000
Message-ID: <160217657346.11033.17388310213118197975@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201006185809.4655-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/3=5D_drm/i915=3A_Reorder_hpd?=
 =?utf-8?q?_init_vs=2E_display_resume_=28rev3=29?=
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

Series: series starting with [v2,1/3] drm/i915: Reorder hpd init vs. display resume (rev3)
URL   : https://patchwork.freedesktop.org/series/82417/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f5192fdf6756 drm/i915: Reorder hpd init vs. display resume
-:26: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#26: 
.hpd_irq_setup()+resume+intel_hpd_init() -> intel_hpd_init()+resume+intel_hpd_poll_disable()

-:166: WARNING:TYPO_SPELLING: 'seperate' may be misspelled - perhaps 'separate'?
#166: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:693:
+ * dev->mode_config.mutex, we do the actual hotplug enabling in a seperate

total: 0 errors, 2 warnings, 0 checks, 168 lines checked
d3ea7f9670c6 drm/i915: Do drm_mode_config_reset() after HPD init
90e7c6ff4798 drm/i915: Refactor .hpd_irq_setup() calls a bit


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

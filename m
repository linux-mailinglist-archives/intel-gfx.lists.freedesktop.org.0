Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717796A9958
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 15:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB1F10E5FD;
	Fri,  3 Mar 2023 14:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A69F310E5FD;
 Fri,  3 Mar 2023 14:23:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E67AA47EB;
 Fri,  3 Mar 2023 14:23:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 03 Mar 2023 14:23:34 -0000
Message-ID: <167785341461.9997.4948467001616890816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Check_HPD_during_eDP_probe_=28rev2=29?=
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

Series: drm/i915: Check HPD during eDP probe (rev2)
URL   : https://patchwork.freedesktop.org/series/114577/
State : warning

== Summary ==

Error: dim checkpatch failed
c7ee1a40c690 drm/i915: Populate dig_port->connected() before connector init
-:60: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#60: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4538:
+	 * case we have some really bad VBTs... */

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
17870842bd7a drm/i915: Fix SKL DDI A digital port .connected()
2b3299c63ec8 drm/i915: Get rid of the gm45 HPD live state nonsense
76519a95743b drm/i915: Introduce <platform>_hotplug_mask()
6e22c5be534e drm/i915: Introduce intel_hpd_enable_detection()
5f095199edf8 drm/i915: Check HPD live state during eDP probe
-:51: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 41e35ffb380b ("drm/i915: Favor last VBT child device with conflicting AUX ch/DDC pin")'
#51: 
  Also the systems (Asrock B250M-HDV at least) fixed by commit

total: 1 errors, 0 warnings, 0 checks, 46 lines checked
52405c647e07 drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()



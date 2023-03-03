Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A764C6A9DAA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 18:27:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE63010E143;
	Fri,  3 Mar 2023 17:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1F5C010E143;
 Fri,  3 Mar 2023 17:27:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18B36A0078;
 Fri,  3 Mar 2023 17:27:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 03 Mar 2023 17:27:16 -0000
Message-ID: <167786443607.9995.16667678534198216009@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Check_HPD_during_eDP_probe_=28rev3=29?=
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

Series: drm/i915: Check HPD during eDP probe (rev3)
URL   : https://patchwork.freedesktop.org/series/114577/
State : warning

== Summary ==

Error: dim checkpatch failed
cd335763b419 drm/i915: Populate dig_port->connected() before connector init
-:60: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#60: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4538:
+	 * case we have some really bad VBTs... */

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
777d74c6da73 drm/i915: Fix SKL DDI A digital port .connected()
1933e83aba4a drm/i915: Get rid of the gm45 HPD live state nonsense
0c03dc5b520b drm/i915: Introduce <platform>_hotplug_mask()
1a6d613b25bb drm/i915: Introduce intel_hpd_enable_detection()
06b959fa1b7e drm/i915: Check HPD live state during eDP probe
-:51: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 41e35ffb380b ("drm/i915: Favor last VBT child device with conflicting AUX ch/DDC pin")'
#51: 
  Also the systems (Asrock B250M-HDV at least) fixed by commit

total: 1 errors, 0 warnings, 0 checks, 46 lines checked
f8d051f54631 drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()



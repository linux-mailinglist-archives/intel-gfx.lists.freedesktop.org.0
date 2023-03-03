Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246E06AA103
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 22:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AAB10E044;
	Fri,  3 Mar 2023 21:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F69410E044;
 Fri,  3 Mar 2023 21:21:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 492CEA3ECB;
 Fri,  3 Mar 2023 21:21:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 03 Mar 2023 21:21:30 -0000
Message-ID: <167787849027.9996.13844292501183027284@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Check_HPD_during_eDP_probe_=28rev4=29?=
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

Series: drm/i915: Check HPD during eDP probe (rev4)
URL   : https://patchwork.freedesktop.org/series/114577/
State : warning

== Summary ==

Error: dim checkpatch failed
16df697e08ab drm/i915: Populate dig_port->connected() before connector init
-:60: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#60: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4538:
+	 * case we have some really bad VBTs... */

total: 0 errors, 1 warnings, 0 checks, 46 lines checked
af0d3df94868 drm/i915: Fix SKL DDI A digital port .connected()
289843ee7db8 drm/i915: Get rid of the gm45 HPD live state nonsense
74641e72441b drm/i915: Introduce <platform>_hotplug_mask()
96a7c1c4e586 drm/i915: Introduce intel_hpd_enable_detection()
e6532b561ef1 drm/i915: Check HPD live state during eDP probe
-:51: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 41e35ffb380b ("drm/i915: Favor last VBT child device with conflicting AUX ch/DDC pin")'
#51: 
  Also the systems (Asrock B250M-HDV at least) fixed by commit

total: 1 errors, 0 warnings, 0 checks, 46 lines checked
81a56acf7696 drm/i915: Reuse <platform>_hotplug_mask() in .hpd_detection_setup()



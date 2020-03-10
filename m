Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED2017ED89
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 02:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152D56E030;
	Tue, 10 Mar 2020 01:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 981496E030;
 Tue, 10 Mar 2020 01:01:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8FB8BA0019;
 Tue, 10 Mar 2020 01:01:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 10 Mar 2020 01:01:09 -0000
Message-ID: <158380206955.24171.795686840784500449@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310004911.1723239-1-matthew.d.roper@intel.com>
In-Reply-To: <20200310004911.1723239-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Gen11_workarounds?=
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

Series: Gen11 workarounds
URL   : https://patchwork.freedesktop.org/series/74475/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a627f7908723 drm/i915: Handle all MCR ranges
0d45ae1b23d2 drm/i915: Add Wa_1207131216:icl,ehl
ac72d609fb43 drm/i915: Add Wa_1604278689:icl,ehl
0ae22805c1e6 drm/i915: Add Wa_1406306137:icl,ehl
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
4c3c07b8545b drm/i915: Apply Wa_1406680159:icl, ehl as an engine workaround
e92df8bf04c0 drm/i915: Add Wa_1605460711 / Wa_1408767742 to ICL and EHL
dff1210436d4 drm/i915: Add Wa_1409178092:icl,ehl
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit f545425a0145 ("drm/i915/icl: Remove Wa_1604302699")'
#14: 
References: f545425a0145 ("drm/i915/icl: Remove Wa_1604302699")

total: 1 errors, 0 warnings, 0 checks, 10 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

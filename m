Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E268F11EF36
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 01:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFC36EE29;
	Sat, 14 Dec 2019 00:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 036EC6EE29;
 Sat, 14 Dec 2019 00:29:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE968A0073;
 Sat, 14 Dec 2019 00:29:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 14 Dec 2019 00:29:09 -0000
Message-ID: <157628334995.13803.3861751266993408810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213174348.27261-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_Add_new_modes_from_CTA-861-G_=28rev3=29?=
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

Series: drm/edid: Add new modes from CTA-861-G (rev3)
URL   : https://patchwork.freedesktop.org/series/63554/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f65c5faeb690 drm/edid: Abstract away cea_edid_modes[]
-:122: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "cea_mode_for_vic"
#122: FILE: drivers/gpu/drm/drm_edid.c:3227:
+	return cea_mode_for_vic(vic) != NULL;

total: 0 errors, 0 warnings, 1 checks, 133 lines checked
1e2d560339b9 drm/edid: Add CTA-861-G modes with VIC >= 193
04407c04c8f5 drm/edid: Throw away the dummy VIC 0 cea mode
1eb2087450a1 drm/edid: Make sure the CEA mode arrays have the correct amount of modes

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

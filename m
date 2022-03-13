Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C176D4D7589
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Mar 2022 14:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F085110E2A9;
	Sun, 13 Mar 2022 13:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D28110E2A9;
 Sun, 13 Mar 2022 13:45:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68CB1A8836;
 Sun, 13 Mar 2022 13:45:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Sun, 13 Mar 2022 13:45:19 -0000
Message-ID: <164717911940.24946.3671139607380934387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220313134702.24175-1-shawn.c.lee@intel.com>
In-Reply-To: <20220313134702.24175-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_enhanced_edid_driver_compatibility_=28rev3=29?=
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

Series: enhanced edid driver compatibility (rev3)
URL   : https://patchwork.freedesktop.org/series/101241/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c049087987bb drm/edid: seek for available CEA and DisplayID block from specific EDID block index
17e8316a3054 drm/edid: parse multiple CEA extension block
39376b26f8e4 drm/edid: read HF-EEODB ext block
84dbfb1659a7 drm/edid: parse HF-EEODB CEA extension block
-:51: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!edid"
#51: FILE: drivers/gpu/drm/drm_edid.c:3371:
+	if (edid == NULL || edid->extensions == 0 || *ext_index >= ext_blk_num)

total: 0 errors, 0 warnings, 1 checks, 178 lines checked
74f01f274c37 drm/edid: check for HF-SCDB block



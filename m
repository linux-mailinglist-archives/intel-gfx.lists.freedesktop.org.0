Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 885B64D57EC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 03:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2204F10E1D6;
	Fri, 11 Mar 2022 02:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0928010E1D6;
 Fri, 11 Mar 2022 02:11:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A8FAAADD1;
 Fri, 11 Mar 2022 02:11:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 11 Mar 2022 02:11:13 -0000
Message-ID: <164696467303.23982.2656529739518131197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311012218.19025-1-shawn.c.lee@intel.com>
In-Reply-To: <20220311012218.19025-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_enhanced_edid_driver_compatibility_=28rev2=29?=
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

Series: enhanced edid driver compatibility (rev2)
URL   : https://patchwork.freedesktop.org/series/101241/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
02fc6192d066 drm/edid: seek for available CEA block from specific EDID block index
63da852d707f drm/edid: parse multiple CEA extension block
28463d433da7 drm/edid: read HF-EEODB ext block
f88c03b883b1 drm/edid: parse HF-EEODB CEA extension block
-:48: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!edid"
#48: FILE: drivers/gpu/drm/drm_edid.c:3369:
+	if (edid == NULL || edid->extensions == 0 || *ext_index >= ext_blk_num)

total: 0 errors, 0 warnings, 1 checks, 145 lines checked
5d8ff27c933c drm/edid: check for HF-SCDB block



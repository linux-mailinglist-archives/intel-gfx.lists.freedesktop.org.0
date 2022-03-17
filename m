Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA8F4DC67A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 13:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF65C10EB94;
	Thu, 17 Mar 2022 12:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 034CD10EB94;
 Thu, 17 Mar 2022 12:53:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2544AADDD;
 Thu, 17 Mar 2022 12:53:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Thu, 17 Mar 2022 12:53:31 -0000
Message-ID: <164752161198.32161.11340024719656681477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220317124202.14189-1-shawn.c.lee@intel.com>
In-Reply-To: <20220317124202.14189-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_enhanced_edid_driver_compatibility_=28rev4=29?=
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

Series: enhanced edid driver compatibility (rev4)
URL   : https://patchwork.freedesktop.org/series/101241/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f67f924a655d drm/edid: seek for available CEA block from specific EDID block index
e9bcceacf18b drm/edid: parse multiple CEA extension block
8e61410caf83 drm/edid: read HF-EEODB ext block
d51bffadad78 drm/edid: parse HF-EEODB CEA extension block
-:48: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!edid"
#48: FILE: drivers/gpu/drm/drm_edid.c:3369:
+	if (edid == NULL || edid->extensions == 0 || *ext_index >= ext_blk_num)

total: 0 errors, 0 warnings, 1 checks, 145 lines checked
7fdf6e3f34d6 drm/edid: check for HF-SCDB block



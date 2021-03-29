Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9162734D20D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 16:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20F16E44A;
	Mon, 29 Mar 2021 14:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B23B16E420;
 Mon, 29 Mar 2021 14:04:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA060A363D;
 Mon, 29 Mar 2021 14:04:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 29 Mar 2021 14:04:07 -0000
Message-ID: <161702664767.26033.12455900203579997519@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1617024940.git.jani.nikula@intel.com>
In-Reply-To: <cover.1617024940.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_overhaul_displayid_iterator_=28rev3=29?=
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

Series: drm/edid: overhaul displayid iterator (rev3)
URL   : https://patchwork.freedesktop.org/series/87802/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7e7342d215ff drm/edid: make a number of functions, parameters and variables const
d0337807fed3 drm/displayid: add separate drm_displayid.c
-:34: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#34: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 175 lines checked
df2339d6ea39 drm/displayid: add new displayid section/block iterators
-:149: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#149: FILE: include/drm/drm_displayid.h:125:
+#define displayid_iter_for_each(__block, __iter) \
+	while (((__block) = __displayid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 99 lines checked
4096d6cff65a drm/edid: use the new displayid iterator for detailed modes
b4a04fbb258a drm/edid: use the new displayid iterator for finding CEA extension
7a3c9bd06b98 drm/edid: use the new displayid iterator for tile info
bf3edd798098 drm/displayid: allow data blocks with 0 payload length
fc942436e112 drm/displayid: rename displayid_hdr to displayid_header


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

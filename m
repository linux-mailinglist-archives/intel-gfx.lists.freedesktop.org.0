Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ACA333737
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 09:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D7FD6E9D7;
	Wed, 10 Mar 2021 08:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52BAC6E9D7;
 Wed, 10 Mar 2021 08:27:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B221A66C9;
 Wed, 10 Mar 2021 08:27:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 10 Mar 2021 08:27:10 -0000
Message-ID: <161536483027.2311.13570076298591509943@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615297748.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615297748.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_overhaul_displayid_iterator?=
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

Series: drm/edid: overhaul displayid iterator
URL   : https://patchwork.freedesktop.org/series/87802/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3dfb9f5009ca drm/edid: make a number of functions, parameters and variables const
02e11a7ac9cc drm/displayid: add separate drm_displayid.c
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 175 lines checked
3a553321e322 drm/displayid: add new displayid section/block iterators
-:141: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#141: FILE: include/drm/drm_displayid.h:125:
+#define displayid_iter_for_each(__block, __iter) \
+	while (((__block) = __displayid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 99 lines checked
8eeaa063fba8 drm/edid: use the new displayid iterator for detailed modes
56ed12e086fa drm/edid: use the new displayid iterator for finding CEA extension
53e35494caf9 drm/edid: use the new displayid iterator for tile info


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

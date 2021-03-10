Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FA33338AE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 10:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6924089E06;
	Wed, 10 Mar 2021 09:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C67389DBC;
 Wed, 10 Mar 2021 09:26:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4362DAA0EA;
 Wed, 10 Mar 2021 09:26:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 10 Mar 2021 09:26:39 -0000
Message-ID: <161536839927.2308.9326165061838241657@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615297748.git.jani.nikula@intel.com>
In-Reply-To: <cover.1615297748.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_overhaul_displayid_iterator_=28rev2=29?=
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

Series: drm/edid: overhaul displayid iterator (rev2)
URL   : https://patchwork.freedesktop.org/series/87802/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4c9b64816221 drm/edid: make a number of functions, parameters and variables const
6e714eb67565 drm/displayid: add separate drm_displayid.c
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 175 lines checked
2cd7c9986b9e drm/displayid: add new displayid section/block iterators
-:141: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#141: FILE: include/drm/drm_displayid.h:125:
+#define displayid_iter_for_each(__block, __iter) \
+	while (((__block) = __displayid_iter_next(__iter)))

total: 1 errors, 0 warnings, 0 checks, 99 lines checked
e1b0237e413c drm/edid: use the new displayid iterator for detailed modes
742b27ceab41 drm/edid: use the new displayid iterator for finding CEA extension
7a1e03ddde50 drm/edid: use the new displayid iterator for tile info


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

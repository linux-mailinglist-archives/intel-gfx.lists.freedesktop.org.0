Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C965493582
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 08:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E4910E175;
	Wed, 19 Jan 2022 07:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7ABF10E175;
 Wed, 19 Jan 2022 07:34:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3460A00A0;
 Wed, 19 Jan 2022 07:34:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 19 Jan 2022 07:34:11 -0000
Message-ID: <164257765172.22604.11067127023347215119@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220119072450.2890107-1-lucas.demarchi@intel.com>
In-Reply-To: <20220119072450.2890107-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_lib/string=5Fhelpers=3A_Add_a_few_string_helpers?=
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

Series: lib/string_helpers: Add a few string helpers
URL   : https://patchwork.freedesktop.org/series/99030/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
034eadde40c9 lib/string_helpers: Consolidate yesno() implementation
89d43a829163 lib/string_helpers: Add helpers for enable[d]/disable[d]
e313af85bf87 drm: Convert open yes/no strings to yesno()
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
1442171   60344     800 1503315  16f053 ./drivers/gpu/drm/radeon/radeon.ko.old

-:92: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#92: FILE: drivers/gpu/drm/drm_client_modeset.c:245:
+			      connector->display_info.non_desktop ? "non desktop" : yesno(enabled[i]));

total: 0 errors, 2 warnings, 0 checks, 133 lines checked



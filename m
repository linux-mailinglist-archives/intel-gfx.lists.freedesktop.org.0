Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 030B5431719
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 13:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1371F6E9DC;
	Mon, 18 Oct 2021 11:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E41E86E0D1;
 Mon, 18 Oct 2021 11:22:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DC5F9A00E8;
 Mon, 18 Oct 2021 11:22:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Oct 2021 11:22:21 -0000
Message-ID: <163455614189.27089.1362083681826640731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211018085113.27033-1-jani.nikula@intel.com>
In-Reply-To: <20211018085113.27033-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/locking=3A_fix_=5F=5Fstack=5Fdepot=5F*_name_conflict?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/locking: fix __stack_depot_* name conflict
URL   : https://patchwork.freedesktop.org/series/95940/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bc53b22a35fb drm/locking: fix __stack_depot_* name conflict
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: https://lore.kernel.org/r/20211015202648.258445ef@canb.auug.org.au

-:51: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#51: FILE: drivers/gpu/drm/drm_modeset_lock.c:115:
 }
+static void __drm_stack_depot_print(depot_stack_handle_t stack_depot)

total: 0 errors, 1 warnings, 1 checks, 53 lines checked



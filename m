Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0A641EDEA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 14:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534256E4F3;
	Fri,  1 Oct 2021 12:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 156336E4F3;
 Fri,  1 Oct 2021 12:55:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01ACFA8836;
 Fri,  1 Oct 2021 12:55:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 01 Oct 2021 12:55:56 -0000
Message-ID: <163309295697.25583.18039527105711888829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210928223241.22149-1-jani.nikula@intel.com>
In-Reply-To: <20210928223241.22149-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/locking=3A_add_backtrace_for_locking_contended_locks_wi?=
 =?utf-8?q?thout_backoff_=28rev2=29?=
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

Series: drm/locking: add backtrace for locking contended locks without backoff (rev2)
URL   : https://patchwork.freedesktop.org/series/95182/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
28bb80fe7399 drm/locking: add backtrace for locking contended locks without backoff
-:19: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#19: 
<7> [98.002465] drm_modeset_lock attempting to lock a contended lock without backoff:

-:119: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#119: FILE: drivers/gpu/drm/drm_modeset_lock.c:115:
+}
+static void __stack_depot_print(depot_stack_handle_t stack_depot)

total: 0 errors, 1 warnings, 1 checks, 126 lines checked



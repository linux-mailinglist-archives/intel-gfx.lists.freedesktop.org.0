Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6937858FBC0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 14:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2653BAE3F8;
	Thu, 11 Aug 2022 12:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE66DAE368;
 Thu, 11 Aug 2022 12:00:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E51F2AADD1;
 Thu, 11 Aug 2022 12:00:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tapas Rana" <tapas.rana@intel.com>
Date: Thu, 11 Aug 2022 12:00:45 -0000
Message-ID: <166021924590.11991.17376064853640192475@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220811112802.4167768-1-tapas.rana@intel.com>
In-Reply-To: <20220811112802.4167768-1-tapas.rana@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_KW_issues_for_NULL_pointer_dereference?=
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

Series: Fixes KW issues for NULL pointer dereference
URL   : https://patchwork.freedesktop.org/series/107160/
State : warning

== Summary ==

Error: dim checkpatch failed
639d6f6caf82 Fixes KW issues for NULL pointer dereference
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:15: ERROR:SPACING: space required before the open parenthesis '('
#15: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c:438:
+	if(!bo)

-:20: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 2 errors, 1 warnings, 0 checks, 9 lines checked



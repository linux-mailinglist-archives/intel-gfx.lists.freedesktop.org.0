Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3A52407D0
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 16:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE256E43C;
	Mon, 10 Aug 2020 14:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0EBF76E43C;
 Mon, 10 Aug 2020 14:48:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07EBFA47E9;
 Mon, 10 Aug 2020 14:48:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Uma Shankar" <uma.shankar@intel.com>
Date: Mon, 10 Aug 2020 14:48:49 -0000
Message-ID: <159707092902.17063.4311707632135507255@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200810151602.20757-1-uma.shankar@intel.com>
In-Reply-To: <20200810151602.20757-1-uma.shankar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Fix_NV12_sub_plane_atomic_state?=
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

Series: drm/i915/display: Fix NV12 sub plane atomic state
URL   : https://patchwork.freedesktop.org/series/80474/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1cf8e8b47de4 drm/i915/display: Fix NV12 sub plane atomic state
-:14: ERROR:GERRIT_CHANGE_ID: Remove Gerrit Change-Id's before submitting upstream
#14: 
Change-Id: I447b16bf433dfb5b43b2e4cade258fc775aee065

-:38: ERROR:SPACING: space required before the open parenthesis '('
#38: FILE: drivers/gpu/drm/i915/display/intel_display.c:12582:
+		if(ret)

total: 2 errors, 0 warnings, 0 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676C85F4299
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22E910E5AE;
	Tue,  4 Oct 2022 12:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 47AFA10E5AE;
 Tue,  4 Oct 2022 12:02:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30A4CAA0ED;
 Tue,  4 Oct 2022 12:02:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 04 Oct 2022 12:02:44 -0000
Message-ID: <166488496416.14071.8533198810281815335@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221004105121.203149-1-matthew.auld@intel.com>
In-Reply-To: <20221004105121.203149-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/5=5D_drm/i915=3A_remove_the_?=
 =?utf-8?q?TODO_in_pin=5Fand=5Ffence=5Ffb=5Fobj?=
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

Series: series starting with [v5,1/5] drm/i915: remove the TODO in pin_and_fence_fb_obj
URL   : https://patchwork.freedesktop.org/series/109382/
State : warning

== Summary ==

Error: dim checkpatch failed
0fc08f3e0045 drm/i915: remove the TODO in pin_and_fence_fb_obj
397efa173d77 drm/i915/display: handle migration for dpt
-:38: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#38: FILE: drivers/gpu/drm/i915/display/intel_fb_pin.c:37:
+	 * below, so this vm must never be async.
+	*/

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
1cbf4efb4dad drm/i915: allow control over the flags when migrating
9069b2629788 drm/i915/display: consider DG2_RC_CCS_CC when migrating buffers
03dfec70db8a drm/i915: check memory is mappable in read_from_page



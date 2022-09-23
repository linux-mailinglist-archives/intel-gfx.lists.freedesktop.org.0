Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9925E7B2C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 14:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 833E110E527;
	Fri, 23 Sep 2022 12:52:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DBFF88A3E;
 Fri, 23 Sep 2022 12:52:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54577AADD5;
 Fri, 23 Sep 2022 12:52:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Fri, 23 Sep 2022 12:52:30 -0000
Message-ID: <166393755030.30118.10904626407299617807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923084506.11968-1-nirmoy.das@intel.com>
In-Reply-To: <20220923084506.11968-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Improve_debug_print_in_vm=5Ffault=5Fttm_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Improve debug print in vm_fault_ttm (rev2)
URL   : https://patchwork.freedesktop.org/series/108887/
State : warning

== Summary ==

Error: dim checkpatch failed
751ba3d859b3 drm/i915: Improve debug print in vm_fault_ttm
-:24: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1037:
+			drm_dbg(dev, "Unable to make resource CPU accessible(err = %pe)\n", ERR_PTR(err));

total: 0 errors, 1 warnings, 0 checks, 8 lines checked



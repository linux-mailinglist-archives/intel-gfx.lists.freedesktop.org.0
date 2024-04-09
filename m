Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6A789DE39
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 17:12:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6266F112DD1;
	Tue,  9 Apr 2024 15:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974FA112DDE;
 Tue,  9 Apr 2024 15:12:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_support_for_part?=
 =?utf-8?q?ial_mapping_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Apr 2024 15:12:42 -0000
Message-ID: <171267556261.1300822.4016364192689887204@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240329163959.791865-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240329163959.791865-1-andi.shyti@linux.intel.com>
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

Series: Add support for partial mapping (rev2)
URL   : https://patchwork.freedesktop.org/series/131817/
State : warning

== Summary ==

Error: dim checkpatch failed
74cd74a512ce drm/i915/gem: Increment vma offset when mapping fb objects
8cd734168568 drm/i915/gem: Calculate object page offset for partial memory mapping
-:67: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#67: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:411:
+			       area->vm_start + ((vma->gtt_view.partial.offset - obj_offset) << PAGE_SHIFT),

total: 0 errors, 1 warnings, 0 checks, 82 lines checked



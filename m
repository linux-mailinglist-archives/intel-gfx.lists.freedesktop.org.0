Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E0158F1AF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 19:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C601512BF06;
	Wed, 10 Aug 2022 17:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3810A10E7A9;
 Wed, 10 Aug 2022 17:41:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18BC0AA3D8;
 Wed, 10 Aug 2022 17:41:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "S A Muqthyar Ahmed" <syed.abdul.muqthyar.ahmed@intel.com>
Date: Wed, 10 Aug 2022 17:41:32 -0000
Message-ID: <166015329207.12354.13789203311425314036@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220810151753.3250859-1-syed.abdul.muqthyar.ahmed@intel.com>
In-Reply-To: <20220810151753.3250859-1-syed.abdul.muqthyar.ahmed@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_reschedule_relocations_to_avoid_timeouts?=
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

Series: drm/i915/gem: reschedule relocations to avoid timeouts
URL   : https://patchwork.freedesktop.org/series/107125/
State : warning

== Summary ==

Error: dim checkpatch failed
56c7eae199db drm/i915/gem: reschedule relocations to avoid timeouts
-:23: ERROR:SPACING: space required before the open parenthesis '('
#23: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1555:
+		if(need_resched()) {

total: 1 errors, 0 warnings, 0 checks, 36 lines checked



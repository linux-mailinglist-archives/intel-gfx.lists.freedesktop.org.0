Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFFB13C5E6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 15:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB046EA0C;
	Wed, 15 Jan 2020 14:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 424C96EA0B;
 Wed, 15 Jan 2020 14:25:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2E20FA0096;
 Wed, 15 Jan 2020 14:25:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 15 Jan 2020 14:25:05 -0000
Message-ID: <157909830515.2009.17024469903613985365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115140822.55756-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200115140822.55756-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Misc_GuC_CT_improvements_-_part_II?=
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

Series: Misc GuC CT improvements - part II
URL   : https://patchwork.freedesktop.org/series/72071/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b07a956a95fe drm/i915/guc: Don't GEM_BUG_ON on corrupted G2H CTB
-:50: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'tail >= size'
#50: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:592:
+	if (unlikely(!IS_ALIGNED(head, 4) ||
+		     !IS_ALIGNED(tail, 4) ||
+		     !IS_ALIGNED(size, 4) ||
+		     (tail >= size) || (head >= size))) {

-:50: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'head >= size'
#50: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:592:
+	if (unlikely(!IS_ALIGNED(head, 4) ||
+		     !IS_ALIGNED(tail, 4) ||
+		     !IS_ALIGNED(size, 4) ||
+		     (tail >= size) || (head >= size))) {

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
58e8d5866323 i915/drm/guc: Don't pass CTB while writing
649a099a7a62 i915/drm/guc: Don't pass CTB while reading
ce8ba4dabf49 drm/i915/guc: Switch to CT_ERROR in ct_read
17839d70f06c drm/i915/guc: Introduce CT_DEBUG

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

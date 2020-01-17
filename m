Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6AF1405A2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 09:51:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E65E6F463;
	Fri, 17 Jan 2020 08:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A18516F41E;
 Fri, 17 Jan 2020 08:51:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98E6CA011C;
 Fri, 17 Jan 2020 08:51:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 17 Jan 2020 08:51:43 -0000
Message-ID: <157925110359.26757.11706631888726300630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117082039.65644-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200117082039.65644-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Misc_GuC_CT_improvements_-_part_II_=28rev2=29?=
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

Series: Misc GuC CT improvements - part II (rev2)
URL   : https://patchwork.freedesktop.org/series/72071/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2efc33c45510 drm/i915/guc: Don't GEM_BUG_ON on corrupted G2H CTB
-:53: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'tail >= size'
#53: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:592:
+	if (unlikely(!IS_ALIGNED(head, 4) ||
+		     !IS_ALIGNED(tail, 4) ||
+		     !IS_ALIGNED(size, 4) ||
+		     (tail >= size) || (head >= size))) {

-:53: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'head >= size'
#53: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:592:
+	if (unlikely(!IS_ALIGNED(head, 4) ||
+		     !IS_ALIGNED(tail, 4) ||
+		     !IS_ALIGNED(size, 4) ||
+		     (tail >= size) || (head >= size))) {

total: 0 errors, 0 warnings, 2 checks, 66 lines checked
3fb92bd3cd12 drm/i915/guc: Don't pass CTB while writing
8eb488a458c8 drm/i915/guc: Don't pass CTB while reading
292d1303bf00 drm/i915/guc: Switch to CT_ERROR in ct_read
d31956e86e8b drm/i915/guc: Introduce CT_DEBUG

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

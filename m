Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426D41D2B13
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 11:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EEC86EB11;
	Thu, 14 May 2020 09:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57F896EB11;
 Thu, 14 May 2020 09:16:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51ED0A00C7;
 Thu, 14 May 2020 09:16:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 14 May 2020 09:16:33 -0000
Message-ID: <158944779333.2827.6256957449567235641@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev38=29?=
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

Series: SAGV support for Gen12+ (rev38)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4806d3748f45 drm/i915: Add TGL+ SAGV support
-:250: WARNING:LONG_LINE: line over 100 characters
#250: FILE: drivers/gpu/drm/i915/intel_pm.c:5765:
+				    enast(old_wm->sagv_wm0.ignore_lines), old_wm->sagv_wm0.plane_res_l,

-:259: WARNING:LONG_LINE: line over 100 characters
#259: FILE: drivers/gpu/drm/i915/intel_pm.c:5775:
+				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l,

-:260: WARNING:LONG_LINE: line over 100 characters
#260: FILE: drivers/gpu/drm/i915/intel_pm.c:5776:
+				    enast(new_wm->sagv_wm0.ignore_lines), new_wm->sagv_wm0.plane_res_l);

total: 0 errors, 3 warnings, 0 checks, 253 lines checked
6cb704686cf3 drm/i915: Restrict qgv points which don't have enough bandwidth.
2d4913a8c452 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

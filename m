Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BCE392F8E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 15:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B1B6F3A0;
	Thu, 27 May 2021 13:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF8426E839;
 Thu, 27 May 2021 13:26:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7E99A47DB;
 Thu, 27 May 2021 13:26:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 27 May 2021 13:26:58 -0000
Message-ID: <162212201888.12236.9328897572336724779@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527110106.21434-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20210527110106.21434-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/adl=5Fp=3A_Same_slices_mask_is_not_same_Dbuf_state?=
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

Series: drm/i915/adl_p: Same slices mask is not same Dbuf state
URL   : https://patchwork.freedesktop.org/series/90660/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f08228a77ac0 drm/i915/adl_p: Same slices mask is not same Dbuf state
-:29: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#29: FILE: drivers/gpu/drm/i915/intel_pm.c:8097:
+	    ((new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
+	    && (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus)))

-:39: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#39: FILE: drivers/gpu/drm/i915/intel_pm.c:8118:
+	    ((new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
+	    && (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus)))

total: 0 errors, 0 warnings, 2 checks, 18 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

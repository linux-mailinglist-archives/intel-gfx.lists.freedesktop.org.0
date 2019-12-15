Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2C011FB49
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 22:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD1F89C3B;
	Sun, 15 Dec 2019 21:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D674D89C1C;
 Sun, 15 Dec 2019 21:00:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C515EA00C7;
 Sun, 15 Dec 2019 21:00:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Sun, 15 Dec 2019 21:00:55 -0000
Message-ID: <157644365578.27848.493046156421945614@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191215205210.31667-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_second_DBuf_slice_for_ICL_and_TGL_=28rev9=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev9)
URL   : https://patchwork.freedesktop.org/series/70059/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
16c87005933e drm/i915: Remove skl_ddl_allocation struct
a31132e7881c drm/i915: Move dbuf slice update to proper place
033eb182c302 drm/i915: Manipulate DBuf slices properly
-:306: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'X' may be better as '(X)' to avoid precedence issues
#306: FILE: drivers/gpu/drm/i915/i915_reg.h:7763:
+#define DBUF_CTL_S(X)	(X == 1 ? DBUF_CTL_S1 : DBUF_CTL_S2)

total: 0 errors, 0 warnings, 1 checks, 330 lines checked
5540cb82cfb6 drm/i915: Correctly map DBUF slices to pipes

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

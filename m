Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6DB13C958
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 17:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0046F897DC;
	Wed, 15 Jan 2020 16:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10D038982F;
 Wed, 15 Jan 2020 16:30:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0811FA47E8;
 Wed, 15 Jan 2020 16:30:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 15 Jan 2020 16:30:15 -0000
Message-ID: <157910581502.2009.13816359206606548625@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200115143033.28284-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_second_DBuf_slice_for_ICL_and_TGL_=28rev14=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev14)
URL   : https://patchwork.freedesktop.org/series/70059/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3ae5ebdd596a drm/i915: Remove skl_ddl_allocation struct
b0a11bc83b40 drm/i915: Move dbuf slice update to proper place
8f1e0b214049 drm/i915: Manipulate DBuf slices properly
-:382: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#382: FILE: drivers/gpu/drm/i915/intel_pm.c:3662:
+		switch (i) {
+

total: 0 errors, 0 warnings, 1 checks, 352 lines checked
c95f56d70250 drm/i915: Introduce parameterized DBUF_CTL
70cfdb1a187e drm/i915: Correctly map DBUF slices to pipes

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DADD013BD1F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 11:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3FBA6E8F1;
	Wed, 15 Jan 2020 10:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E74C86E8F1;
 Wed, 15 Jan 2020 10:11:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF1AEA0096;
 Wed, 15 Jan 2020 10:11:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 15 Jan 2020 10:11:18 -0000
Message-ID: <157908307888.2007.267664812226588082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200115095054.10660-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_second_DBuf_slice_for_ICL_and_TGL_=28rev13=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev13)
URL   : https://patchwork.freedesktop.org/series/70059/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
091637515149 drm/i915: Remove skl_ddl_allocation struct
9c02bbfc80f8 drm/i915: Move dbuf slice update to proper place
6fa5e89f8dfb drm/i915: Manipulate DBuf slices properly
-:382: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#382: FILE: drivers/gpu/drm/i915/intel_pm.c:3662:
+		switch (i) {
+

total: 0 errors, 0 warnings, 1 checks, 352 lines checked
ab2871f866a3 drm/i915: Introduce parameterized DBUF_CTL
c81891411ee1 drm/i915: Correctly map DBUF slices to pipes

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

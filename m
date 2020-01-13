Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A631139A7E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 21:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B90B6E155;
	Mon, 13 Jan 2020 20:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7549E6E14A;
 Mon, 13 Jan 2020 20:06:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E12AA00E9;
 Mon, 13 Jan 2020 20:06:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang Xiaoxu" <zhangxiaoxu5@huawei.com>
Date: Mon, 13 Jan 2020 20:06:53 -0000
Message-ID: <157894601342.25474.18255722736114220896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113104009.13274-1-zhangxiaoxu5@huawei.com>
In-Reply-To: <20200113104009.13274-1-zhangxiaoxu5@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_multiple_definition_of_=27i915=5Fvma=5Fcapt?=
 =?utf-8?q?ure=5Ffinish=27?=
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

Series: drm/i915: Fix multiple definition of 'i915_vma_capture_finish'
URL   : https://patchwork.freedesktop.org/series/71973/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
f549445b8719 drm/i915: Fix multiple definition of 'i915_vma_capture_finish'
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/i915/i915_gpu_error.h:313:
+static inline void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 			     struct i915_vma_compress *compress)

total: 0 errors, 0 warnings, 1 checks, 8 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

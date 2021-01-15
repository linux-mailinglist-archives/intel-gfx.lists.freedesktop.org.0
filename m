Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B722F86E9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 21:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63DD6E479;
	Fri, 15 Jan 2021 20:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C27DC6E479;
 Fri, 15 Jan 2021 20:46:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6C2DA7DFC;
 Fri, 15 Jan 2021 20:46:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jinoh Kang" <jinoh.kang.kr@gmail.com>
Date: Fri, 15 Jan 2021 20:46:57 -0000
Message-ID: <161074361772.28529.15514942961360431833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <c742707e-eb6d-6a22-3006-52dc3bf458d8@gmail.com>
In-Reply-To: <c742707e-eb6d-6a22-3006-52dc3bf458d8@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/userptr=3A_detect_un-GUP-able_pages_early?=
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

Series: drm/i915/userptr: detect un-GUP-able pages early
URL   : https://patchwork.freedesktop.org/series/85925/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
84aaa6e33a39 drm/i915/userptr: detect un-GUP-able pages early
-:106: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#106: FILE: drivers/gpu/drm/i915/i915_params.c:201:
+i915_param_named(gem_userptr_prefault, bool, 0600,
+	"Prefault pages when userptr GEM object is created (default: false)");

total: 0 errors, 0 warnings, 1 checks, 63 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

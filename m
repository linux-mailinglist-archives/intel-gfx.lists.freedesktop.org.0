Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 949692619B1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 20:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BE86E89F;
	Tue,  8 Sep 2020 18:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C05226E89F;
 Tue,  8 Sep 2020 18:25:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B037FA008A;
 Tue,  8 Sep 2020 18:25:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alejandro Sior" <aho@sior.be>
Date: Tue, 08 Sep 2020 18:25:28 -0000
Message-ID: <159958952869.21757.13587245017828708589@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <743818af-fa38-e31a-1780-84a6a7e72e25@web.de>
In-Reply-To: <743818af-fa38-e31a-1780-84a6a7e72e25@web.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_Prevent_NULL_pointer_dereference_in_intel?=
 =?utf-8?b?X3ZncHVfcmVnX3J3X2VkaWQoKQ==?=
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

Series: drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()
URL   : https://patchwork.freedesktop.org/series/81470/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cc442c9d2d41 drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()
-:37: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!pos"
#37: FILE: drivers/gpu/drm/i915/gvt/kvmgt.c:560:
+	if (pos == NULL) {

total: 0 errors, 0 warnings, 1 checks, 10 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

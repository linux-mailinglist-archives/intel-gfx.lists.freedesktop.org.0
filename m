Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 239481371CE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 16:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6606EA3E;
	Fri, 10 Jan 2020 15:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 778D86EA3D;
 Fri, 10 Jan 2020 15:52:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FC99A0073;
 Fri, 10 Jan 2020 15:52:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jan 2020 15:52:29 -0000
Message-ID: <157867154945.30835.5660881875803042387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Start_chopp?=
 =?utf-8?q?ing_up_the_GPU_error_capture?=
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

Series: series starting with [CI,1/4] drm/i915: Start chopping up the GPU error capture
URL   : https://patchwork.freedesktop.org/series/71885/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d117616075ef drm/i915: Start chopping up the GPU error capture
-:90: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#90: FILE: drivers/gpu/drm/i915/gt/intel_gtt.h:348:
+	struct mutex error_mutex;

-:875: WARNING:MEMORY_BARRIER: memory barrier without comment
#875: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1019:
+			mb();

total: 0 errors, 1 warnings, 1 checks, 2333 lines checked
722c6f8f1369 drm/i915: Drop the shadow w/a batch buffer
f295e7438394 drm/i915: Drop the shadow ring state from the error capture
331533c19413 drm/i915: Drop request list from error state

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

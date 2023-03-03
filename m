Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ABA6A9582
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 11:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E890E10E0C6;
	Fri,  3 Mar 2023 10:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1727C10E084;
 Fri,  3 Mar 2023 10:44:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D1C5AADE8;
 Fri,  3 Mar 2023 10:44:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tetsuo Handa" <penguin-kernel@I-love.SAKURA.ne.jp>
Date: Fri, 03 Mar 2023 10:44:38 -0000
Message-ID: <167784027801.9995.2775769289418933824@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <d8b73f88-d4aa-ed7e-09ea-5ad5ee803893@I-love.SAKURA.ne.jp>
In-Reply-To: <d8b73f88-d4aa-ed7e-09ea-5ad5ee803893@I-love.SAKURA.ne.jp>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_avoid_flush=5Fscheduled=5Fwork=28=29_usage?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: avoid flush_scheduled_work() usage
URL   : https://patchwork.freedesktop.org/series/114608/
State : warning

== Summary ==

Error: dim checkpatch failed
2457aaaeeb44 drm/i915: avoid flush_scheduled_work() usage
-:154: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#154: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:2132:
+		queue_delayed_work(i915_wq, &hdcp->check_work,
 				      DRM_HDCP2_CHECK_PERIOD_MS);

-:158: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#158: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:2135:
+		queue_delayed_work(i915_wq, &hdcp->check_work,
 				      DRM_HDCP_CHECK_PERIOD_MS);

-:342: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#342: FILE: drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c:94:
+		queue_delayed_work(i915_wq, &pool->work,
 				      round_jiffies_up_relative(HZ));

-:351: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#351: FILE: drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c:120:
+	queue_delayed_work(i915_wq, &pool->work,
 			      round_jiffies_up_relative(HZ));

-:386: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#386: FILE: drivers/gpu/drm/i915/gt/intel_gt_requests.c:211:
+	queue_delayed_work(i915_wq, &gt->requests.retire_work,
 			      round_jiffies_up_relative(HZ));

-:395: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#395: FILE: drivers/gpu/drm/i915/gt/intel_gt_requests.c:228:
+	queue_delayed_work(i915_wq, &gt->requests.retire_work,
 			      round_jiffies_up_relative(HZ));

total: 0 errors, 0 warnings, 6 checks, 410 lines checked



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2CD499D49
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 23:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 732EE10E278;
	Mon, 24 Jan 2022 22:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AD8510E278;
 Mon, 24 Jan 2022 22:52:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16450A00CC;
 Mon, 24 Jan 2022 22:52:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Mon, 24 Jan 2022 22:52:57 -0000
Message-ID: <164306477706.1344.8353899664554378441@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124150157.15758-1-matthew.brost@intel.com>
In-Reply-To: <20220124150157.15758-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_up_request_cancel_=28rev2=29?=
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

Series: Fix up request cancel (rev2)
URL   : https://patchwork.freedesktop.org/series/99173/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9d38a07fb177 drm/i915: Add request cancel low level trace point
f478dcc4fbab drm/i915/guc: Cancel requests immediately
bebfc9866392 drm/i915/execlists: Fix execlists request cancellation corner case
-:85: CHECK:LINE_SPACING: Please don't use multiple blank lines
#85: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:346:
+
+

total: 0 errors, 0 warnings, 1 checks, 135 lines checked
8a5938d99c50 drm/i915/selftests: Set preemption timeout to zero in cancel reset test



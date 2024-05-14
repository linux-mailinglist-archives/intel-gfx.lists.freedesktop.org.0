Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B67D8C5506
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 13:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D9710E399;
	Tue, 14 May 2024 11:54:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DF510E399;
 Tue, 14 May 2024 11:54:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Use_for?=
 =?utf-8?q?=5Feach=5Fchild_instead_of_manual_for-loop?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2024 11:54:55 -0000
Message-ID: <171568769527.2114759.2703195797620848521@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240514105031.22123-1-nirmoy.das@intel.com>
In-Reply-To: <20240514105031.22123-1-nirmoy.das@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Use for_each_child instead of manual for-loop
URL   : https://patchwork.freedesktop.org/series/133600/
State : warning

== Summary ==

Error: dim checkpatch failed
a819a4616d1b drm/i915: Use for_each_child instead of manual for-loop
-:45: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#45: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1821:
+	GEM_BUG_ON(i915_active_is_idle(&ce->active));

total: 0 errors, 1 warnings, 0 checks, 81 lines checked



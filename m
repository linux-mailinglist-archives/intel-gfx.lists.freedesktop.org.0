Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C8E9D8CDB
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 20:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAB010E187;
	Mon, 25 Nov 2024 19:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCF8010E187;
 Mon, 25 Nov 2024 19:31:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fixed_NU?=
 =?utf-8?q?LL_pointer_dereference_in_capture=5Fengine_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eugene Kobyak" <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2024 19:31:01 -0000
Message-ID: <173256306179.2944056.17140818498503430012@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
In-Reply-To: <etwgucaj4hu7buvrvzgxkhxjtl526qd6fdyfmxzsdacphrg667@nrd35hese3t5>
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

Series: drm/i915: Fixed NULL pointer dereference in capture_engine (rev3)
URL   : https://patchwork.freedesktop.org/series/141559/
State : warning

== Summary ==

Error: dim checkpatch failed
33ae63ef191c drm/i915: Fixed NULL pointer dereference in capture_engine
-:27: WARNING:LINE_SPACING: Missing a blank line after declarations
#27: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1648:
+		char guc_id[9];
+		if (ce)

total: 0 errors, 1 warnings, 0 checks, 19 lines checked



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF70F9F3891
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 19:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C04C10E1EB;
	Mon, 16 Dec 2024 18:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4929110E1EB;
 Mon, 16 Dec 2024 18:14:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_i915/gt=3A_Reapply_w?=
 =?utf-8?q?orkarounds_in_case_the_previous_attempt_failed=2E_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2024 18:14:53 -0000
Message-ID: <173437289329.3368309.8635990469363920901@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
In-Reply-To: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
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

Series: i915/gt: Reapply workarounds in case the previous attempt failed. (rev3)
URL   : https://patchwork.freedesktop.org/series/142188/
State : warning

== Summary ==

Error: dim checkpatch failed
85576582fae5 i915/gt: Reapply workarounds in case the previous attempt failed.
-:39: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#39: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1730:
+
+}

-:96: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#96: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:1778:
+					"application")
+			&& repeat--);

total: 0 errors, 0 warnings, 2 checks, 79 lines checked



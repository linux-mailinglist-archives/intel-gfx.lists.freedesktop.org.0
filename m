Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD4869DC9B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 10:12:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14D510E25D;
	Tue, 21 Feb 2023 09:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5332D10E25D;
 Tue, 21 Feb 2023 09:12:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4ABF2AADE0;
 Tue, 21 Feb 2023 09:12:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 21 Feb 2023 09:12:22 -0000
Message-ID: <167697074230.16440.15024937163524125914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230221085304.3382297-1-jouni.hogander@intel.com>
In-Reply-To: <20230221085304.3382297-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/psr=3A_Use_calculated_io_and_fast_wake_lines?=
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

Series: drm/i915/psr: Use calculated io and fast wake lines
URL   : https://patchwork.freedesktop.org/series/114217/
State : warning

== Summary ==

Error: dim checkpatch failed
aad4075e9d51 drm/i915/psr: Use calculated io and fast wake lines
-:123: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#123: FILE: drivers/gpu/drm/i915/display/intel_psr.c:841:
+	io_wake_lines = intel_usecs_to_scanlines(

-:125: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#125: FILE: drivers/gpu/drm/i915/display/intel_psr.c:843:
+	fast_wake_lines = intel_usecs_to_scanlines(

-:133: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#133: FILE: drivers/gpu/drm/i915/display/intel_psr.c:851:
+		io_wake_lines = fast_wake_lines = max_wake_lines;

total: 0 errors, 0 warnings, 3 checks, 118 lines checked



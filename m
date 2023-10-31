Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD8E7DD7D6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 22:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 068E210E5CD;
	Tue, 31 Oct 2023 21:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7E2510E5CD;
 Tue, 31 Oct 2023 21:39:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2BE8AADD6;
 Tue, 31 Oct 2023 21:39:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 31 Oct 2023 21:39:41 -0000
Message-ID: <169878838179.27664.8271400733293912613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231031124502.1772160-1-jani.nikula@intel.com>
In-Reply-To: <20231031124502.1772160-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BRESEND=2C1/3=5D_drm/i915=3A_make_so?=
 =?utf-8?q?me_error_capture_functions_static?=
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

Series: series starting with [RESEND,1/3] drm/i915: make some error capture functions static
URL   : https://patchwork.freedesktop.org/series/125807/
State : warning

== Summary ==

Error: dim checkpatch failed
9c2c260c4542 drm/i915: make some error capture functions static
e5b90b7008be drm/i915: move gpu error debugfs to i915_gpu_error.c
2fbd13103289 drm/i915: move gpu error sysfs to i915_gpu_error.c
-:45: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#45: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2496:
+{
+

-:92: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR | S_IWUSR' are not preferred. Consider using octal permissions '0600'.
#92: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2543:
+	.attr.mode = S_IRUSR | S_IWUSR,

total: 0 errors, 1 warnings, 1 checks, 226 lines checked



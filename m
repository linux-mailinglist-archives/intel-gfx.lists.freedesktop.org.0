Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BF97C7BE4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 05:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884F910E080;
	Fri, 13 Oct 2023 03:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CA9C10E080;
 Fri, 13 Oct 2023 03:06:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D129AADD7;
 Fri, 13 Oct 2023 03:06:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 13 Oct 2023 03:06:52 -0000
Message-ID: <169716641235.31156.16649086359824761976@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231011163830.1055517-1-jani.nikula@intel.com>
In-Reply-To: <20231011163830.1055517-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_make_some_error_?=
 =?utf-8?q?capture_functions_static_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: make some error capture functions static (rev2)
URL   : https://patchwork.freedesktop.org/series/124993/
State : warning

== Summary ==

Error: dim checkpatch failed
e2e0d9ee6ffa drm/i915: make some error capture functions static
dff6f9c490cb drm/i915: move gpu error debugfs to i915_gpu_error.c
f20d8e8f40f9 drm/i915: move gpu error sysfs to i915_gpu_error.c
-:44: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#44: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2493:
+{
+

-:91: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUSR | S_IWUSR' are not preferred. Consider using octal permissions '0600'.
#91: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2540:
+	.attr.mode = S_IRUSR | S_IWUSR,

total: 0 errors, 1 warnings, 1 checks, 226 lines checked



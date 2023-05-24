Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD39710046
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 23:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1721E10E619;
	Wed, 24 May 2023 21:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7FC0210E619;
 Wed, 24 May 2023 21:57:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77179AADE0;
 Wed, 24 May 2023 21:57:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Date: Wed, 24 May 2023 21:57:49 -0000
Message-ID: <168496546948.11316.16355469997077130039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230524-intel_async_flip_check_hw-implicit-fallthrough-v1-1-83de89e376a1@kernel.org>
In-Reply-To: <20230524-intel_async_flip_check_hw-implicit-fallthrough-v1-1-83de89e376a1@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_clang_-Wimplicit-fallthrough_in_intel=5Fasy?=
 =?utf-8?b?bmNfZmxpcF9jaGVja19odygp?=
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

Series: drm/i915: Fix clang -Wimplicit-fallthrough in intel_async_flip_check_hw()
URL   : https://patchwork.freedesktop.org/series/118311/
State : warning

== Summary ==

Error: dim checkpatch failed
e13a550c56f5 drm/i915: Fix clang -Wimplicit-fallthrough in intel_async_flip_check_hw()
-:32: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#32: 
Reported-by: Tom Rix <trix@redhat.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

-:34: WARNING:BAD_SIGN_OFF: Duplicate signature
#34: 
Reported-by: kernel test robot <lkp@intel.com>

-:34: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#34: 
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

-:35: WARNING:BAD_SIGN_OFF: Duplicate signature
#35: 
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

-:35: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#35: 
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

-:36: WARNING:BAD_SIGN_OFF: Duplicate signature
#36: 
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

-:36: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#36: 
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>

-:37: WARNING:BAD_SIGN_OFF: Duplicate signature
#37: 
Signed-off-by: Nathan Chancellor <nathan@kernel.org>

total: 0 errors, 8 warnings, 0 checks, 7 lines checked



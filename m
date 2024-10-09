Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6E2997536
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BF010E7D0;
	Wed,  9 Oct 2024 19:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0304610E7CF;
 Wed,  9 Oct 2024 19:01:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1OiByZW1v?=
 =?utf-8?b?dmUgYWxsIElTXzxQTEFURk9STT5fR1Q8Tj4oKSBtYWNyb3MgKHJldjIp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Oct 2024 19:01:28 -0000
Message-ID: <172850048800.1211789.17029472538543246351@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240930124948.3551980-1-jani.nikula@intel.com>
In-Reply-To: <20240930124948.3551980-1-jani.nikula@intel.com>
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

Series: drm/i915: remove all IS_<PLATFORM>_GT<N>() macros (rev2)
URL   : https://patchwork.freedesktop.org/series/139306/
State : warning

== Summary ==

Error: dim checkpatch failed
a59ec96d4cdd drm/i915: remove all IS_<PLATFORM>_GT<N>() macros
-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/i915_drv.h:716:
+#define NUM_L3_SLICES(i915) (IS_HASWELL(i915) && INTEL_INFO(i915)->gt == 3 ? \
 				 2 : HAS_L3_DPF(i915))

total: 0 errors, 0 warnings, 1 checks, 110 lines checked



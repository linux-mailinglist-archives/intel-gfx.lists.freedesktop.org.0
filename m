Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5750F4DBB7B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 01:05:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6214210E151;
	Thu, 17 Mar 2022 00:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15ADD10E066;
 Thu, 17 Mar 2022 00:05:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13E12A0078;
 Thu, 17 Mar 2022 00:05:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 17 Mar 2022 00:05:37 -0000
Message-ID: <164747553705.32163.418879070252613934@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220316234538.434357-1-lucas.demarchi@intel.com>
In-Reply-To: <20220316234538.434357-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Fix_renamed_stru?=
 =?utf-8?q?ct_field?=
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

Series: series starting with [1/2] drm/i915: Fix renamed struct field
URL   : https://patchwork.freedesktop.org/series/101448/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4e997aa6f37e drm/i915: Fix renamed struct field
-:27: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:925:
+#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media.ver, \
 					       INTEL_INFO(i915)->media.rel)

total: 0 errors, 0 warnings, 1 checks, 8 lines checked
7604b41d03ca drm/i915: Add logical mapping for video decode engines



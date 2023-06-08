Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B837274AE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 03:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 700BC10E585;
	Thu,  8 Jun 2023 01:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D712A10E581;
 Thu,  8 Jun 2023 01:59:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB5E9AADEA;
 Thu,  8 Jun 2023 01:59:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Thu, 08 Jun 2023 01:59:16 -0000
Message-ID: <168618955667.18386.12091301379161531155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606163942.330052-1-luciano.coelho@intel.com>
In-Reply-To: <20230606163942.330052-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_implement_internal_workqueues_=28rev3=29?=
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

Series: drm/i915: implement internal workqueues (rev3)
URL   : https://patchwork.freedesktop.org/series/118947/
State : warning

== Summary ==

Error: dim checkpatch failed
261773f21d11 drm/i915: use pointer to i915 instead of rpm in wakeref
98211838959d drm/i915: add a dedicated workqueue inside drm_i915_private
-:624: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev_priv->unordered_wq"
#624: FILE: drivers/gpu/drm/i915/i915_driver.c:142:
+	if (dev_priv->unordered_wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 514 lines checked
82cf0ebf2c40 drm/i915/selftests: add local workqueue for SW fence selftest
-:30: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wq"
#30: FILE: drivers/gpu/drm/i915/selftests/i915_sw_fence.c:530:
+	if (wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 38 lines checked



Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CBE6FEE52
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 11:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C20C10E5C0;
	Thu, 11 May 2023 09:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F5AA10E5C0;
 Thu, 11 May 2023 09:05:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70EDFA9932;
 Thu, 11 May 2023 09:05:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Date: Thu, 11 May 2023 09:05:31 -0000
Message-ID: <168379593145.29007.11860765879999902055@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
In-Reply-To: <20230511082013.1313484-1-luciano.coelho@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_implement_internal_workqueues?=
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

Series: drm/i915: implement internal workqueues
URL   : https://patchwork.freedesktop.org/series/117618/
State : warning

== Summary ==

Error: dim checkpatch failed
501007ed8e45 drm/i915: add a dedicated workqueue inside drm_i915_private
-:622: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev_priv->i915_wq"
#622: FILE: drivers/gpu/drm/i915/i915_driver.c:136:
+	if (dev_priv->i915_wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 501 lines checked
c4a59f545f7a drm/i915/gt: create workqueue dedicated to wake references
-:156: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wf->wq"
#156: FILE: drivers/gpu/drm/i915/intel_wakeref.c:109:
+	if (wf->wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 160 lines checked
0e6e672b91b6 drm/i915/selftests: add local workqueue for SW fence selftest
-:30: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!wq"
#30: FILE: drivers/gpu/drm/i915/selftests/i915_sw_fence.c:530:
+	if (wq == NULL)

total: 0 errors, 0 warnings, 1 checks, 38 lines checked



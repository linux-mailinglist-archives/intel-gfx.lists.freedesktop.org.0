Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CCA720AB9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 23:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D8A10E0F0;
	Fri,  2 Jun 2023 21:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C52710E066;
 Fri,  2 Jun 2023 21:01:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 747ECAADE8;
 Fri,  2 Jun 2023 21:01:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 02 Jun 2023 21:01:39 -0000
Message-ID: <168573969944.15699.6991790831259657362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230602181450.1151368-1-matthew.d.roper@intel.com>
In-Reply-To: <20230602181450.1151368-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Extract_display_init_from_intel=5Fdevic?=
 =?utf-8?q?e=5Finfo=5Fruntime=5Finit_=28rev2=29?=
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

Series: drm/i915/display: Extract display init from intel_device_info_runtime_init (rev2)
URL   : https://patchwork.freedesktop.org/series/118730/
State : warning

== Summary ==

Error: dim checkpatch failed
32290b2edb7d drm/i915/display: Extract display init from intel_device_info_runtime_init
-:325: CHECK:SPACING: No space is necessary after a cast
#325: FILE: drivers/gpu/drm/i915/intel_device_info.c:428:
+	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);

total: 0 errors, 0 warnings, 1 checks, 313 lines checked



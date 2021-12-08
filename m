Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4393946DC94
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 21:00:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96A96E12C;
	Wed,  8 Dec 2021 20:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17E096E12C;
 Wed,  8 Dec 2021 19:59:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03D94AADD5;
 Wed,  8 Dec 2021 19:59:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 08 Dec 2021 19:59:58 -0000
Message-ID: <163899359898.8231.8090645230619819853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211208153404.27546-1-ramalingam.c@intel.com>
In-Reply-To: <20211208153404.27546-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Sanity_Check_for_device_memory_region_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Sanity Check for device memory region (rev3)
URL   : https://patchwork.freedesktop.org/series/97715/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d2fc59f489d3 drm/i915: Exclude reserved stolen from driver use
4e5c58d3e7b8 drm/i915: Sanitycheck device iomem on probe
-:74: WARNING:VSPRINTF_SPECIFIER_PX: Using vsprintf specifier '%px' potentially exposes the kernel memory layout, if you don't really need the address please consider using '%p'.
#74: FILE: drivers/gpu/drm/i915/intel_memory_region.c:70:
+		dev_err(mem->i915->drm.dev,
+			"Failed to ioremap memory region [%pa + %px] for %ps\n",
+			&mem->io_start, &offset, caller);

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
847dd837ca68 drm/i915: Test all device memory on probing
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/i915_params.c:144:
+i915_param_named(memtest, bool, 0400,
+	"Perform a read/write test of all device memory on module load (default: off)");

total: 0 errors, 0 warnings, 1 checks, 79 lines checked



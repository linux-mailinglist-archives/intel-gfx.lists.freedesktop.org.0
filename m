Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C927629CAE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 15:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4AC510E40C;
	Tue, 15 Nov 2022 14:53:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A5D410E40C;
 Tue, 15 Nov 2022 14:53:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61FE7A8830;
 Tue, 15 Nov 2022 14:53:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Himal Prasad Ghimiray" <himal.prasad.ghimiray@intel.com>
Date: Tue, 15 Nov 2022 14:53:54 -0000
Message-ID: <166852403437.16896.5863790746030798696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
In-Reply-To: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/1=5D_drm/i915=3A_Export_LMEM_max_?=
 =?utf-8?q?memory_bandwidth_via_sysfs=2E?=
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

Series: series starting with [1/1] drm/i915: Export LMEM max memory bandwidth via sysfs.
URL   : https://patchwork.freedesktop.org/series/110902/
State : warning

== Summary ==

Error: dim checkpatch failed
b196769302e7 drm/i915: Export LMEM max memory bandwidth via sysfs.
-:43: CHECK:CAMELCASE: Avoid CamelCase: <prelim_lmem_max_bw_Mbps_show>
#43: FILE: drivers/gpu/drm/i915/i915_sysfs.c:238:
+prelim_lmem_max_bw_Mbps_show(struct device *dev, struct device_attribute *attr, char *buff)

-:58: CHECK:CAMELCASE: Avoid CamelCase: <prelim_lmem_max_bw_Mbps>
#58: FILE: drivers/gpu/drm/i915/i915_sysfs.c:253:
+static DEVICE_ATTR_RO(prelim_lmem_max_bw_Mbps);

-:66: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_prelim_lmem_max_bw_Mbps>
#66: FILE: drivers/gpu/drm/i915/i915_sysfs.c:261:
+		ret = sysfs_create_file(&kdev->kobj, &dev_attr_prelim_lmem_max_bw_Mbps.attr);

total: 0 errors, 0 warnings, 3 checks, 53 lines checked



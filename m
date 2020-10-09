Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 507C62887A8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 13:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 580366ECBB;
	Fri,  9 Oct 2020 11:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 88FA16ECAA;
 Fri,  9 Oct 2020 11:14:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81682A8832;
 Fri,  9 Oct 2020 11:14:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Fri, 09 Oct 2020 11:14:36 -0000
Message-ID: <160224207649.1825.12902719392057583532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1602201883-27829-1-git-send-email-xiaolin.zhang@intel.com>
In-Reply-To: <1602201883-27829-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_enhanced_i915_vgpu_with_PV_feature_support_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: enhanced i915 vgpu with PV feature support (rev2)
URL   : https://patchwork.freedesktop.org/series/81400/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7432e9c8e16e drm/i915: introduced vgpu pv capability
0a6bfa99d671 drm/i915: vgpu shared memory setup for pv support
8ab37fac488e drm/i915: vgpu pv command buffer transport protocol
fc97dc9d2403 drm/i915: vgpu ppgtt page table pv support
e46b20e055ad drm/i915: vgpu ggtt page table pv support
cab28ddee64b drm/i915: vgpu workload submisison pv support
-:280: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#280: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 551 lines checked
05c854e9ca3a drm/i915/gvt: GVTg expose pv_caps PVINFO register
1a14fbb8eeef drm/i915/gvt: GVTg handle guest shared_page setup
193236865422 drm/i915/gvt: GVTg support vgpu pv CTB protocol
6ec632cd384a drm/i915/gvt: GVTg support ppgtt pv operations
f6a8c1ca2f74 drm/i915/gvt: GVTg support ggtt pv operations
a7035c961144 drm/i915/gvt: GVTg support pv workload submssion


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

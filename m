Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9625734D5A8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 19:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BBC6E497;
	Mon, 29 Mar 2021 17:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B4CB89C9D;
 Mon, 29 Mar 2021 17:04:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 34C66A0118;
 Mon, 29 Mar 2021 17:04:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Mon, 29 Mar 2021 17:04:34 -0000
Message-ID: <161703747419.26034.1193736902087013237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326203807.105754-1-lyude@redhat.com>
In-Reply-To: <20210326203807.105754-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29?=
 =?utf-8?q?=29_in_DP_helpers_=28rev5=29?=
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

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev5)
URL   : https://patchwork.freedesktop.org/series/87242/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6ae29065652a drm/dp: Fixup kernel docs for struct drm_dp_aux
1aaf16c813ff drm/tegra: Don't register DP AUX channels before connectors
a517b2ef8d3c drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
b19a751a21d5 drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
e5ba922cf19c drm/dp: Add backpointer to drm_device in drm_dp_aux
2b41e7dca3d1 drm/dp: Clarify DP AUX registration time
10f0bfad3306 drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
7fdb9e238b5b drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
217fd40ba10c drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
646bab4a5c01 drm/dp: Always print aux channel name in logs
06e85c3fd3bf drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
c58df253994f drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
f984ed4ae0c0 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
258564408ec2 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
16c557b58ef7 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
1d63db551fb3 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
-:56: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:74:
+									       crtc_state->port_clock,

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
ba8bae46721f drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
b9be426b1780 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
b2d015ac690b drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in drm_dp_mst_handle_up_req()
9d5f0920a15c drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

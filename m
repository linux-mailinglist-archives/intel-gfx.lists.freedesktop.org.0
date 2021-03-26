Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D0934B1F0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 23:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14AC76F4D4;
	Fri, 26 Mar 2021 22:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 776406F4D2;
 Fri, 26 Mar 2021 22:12:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65879A0019;
 Fri, 26 Mar 2021 22:12:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 26 Mar 2021 22:12:00 -0000
Message-ID: <161679672038.10686.15008566010204241391@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326203807.105754-1-lyude@redhat.com>
In-Reply-To: <20210326203807.105754-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm=3A_Use_new_DRM_printk_funcs_=28like_drm=5Fdbg=5F*=28=29?=
 =?utf-8?q?=29_in_DP_helpers_=28rev4=29?=
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

Series: drm: Use new DRM printk funcs (like drm_dbg_*()) in DP helpers (rev4)
URL   : https://patchwork.freedesktop.org/series/87242/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3d8eb2ccbc66 drm/dp: Fixup kernel docs for struct drm_dp_aux
1f1ad683073b drm/tegra: Don't register DP AUX channels before connectors
39a3ba7fabb6 drm/bridge/cdns-mhdp8546: Register DP aux channel with userspace
882c255fa5a6 drm/nouveau/kms/nv50-: Move AUX adapter reg to connector late register/early unregister
faadf2e387ad drm/dp: Add backpointer to drm_device in drm_dp_aux
25a7e4ed60bc drm/dp: Clarify DP AUX registration time
69b1288a49da drm/print: Fixup DRM_DEBUG_KMS_RATELIMITED()
b9f61e076c10 drm/dp: Pass drm_dp_aux to drm_dp_link_train_clock_recovery_delay()
a730423465f6 drm/dp: Pass drm_dp_aux to drm_dp*_link_train_channel_eq_delay()
a4c1cef8f891 drm/dp: Always print aux channel name in logs
b963bb4dceb3 drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_detect()
c107259fc1cc drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_set_tmds_output()
ae36c9371f4a drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_max_tmds_clock()
d648bb1f7fce drm/dp_dual_mode: Pass drm_device to drm_dp_dual_mode_get_tmds_output()
185abde41e78 drm/dp_dual_mode: Pass drm_device to drm_lspcon_(get|set)_mode()
3603f373ec81 drm/dp_mst: Pass drm_dp_mst_topology_mgr to drm_dp_get_vc_payload_bw()
-:56: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:74:
+									       crtc_state->port_clock,

total: 0 errors, 1 warnings, 0 checks, 43 lines checked
3514040cd5e7 drm/dp: Convert drm_dp_helper.c to using drm_err/drm_dbg_*()
23839e954a71 drm/dp_dual_mode: Convert drm_dp_dual_mode_helper.c to using drm_err/drm_dbg_kms()
0cde05949af0 drm/dp_mst: Drop DRM_ERROR() on kzalloc() fail in drm_dp_mst_handle_up_req()
ee2eb7b61a11 drm/dp_mst: Convert drm_dp_mst_topology.c to drm_err()/drm_dbg*()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
